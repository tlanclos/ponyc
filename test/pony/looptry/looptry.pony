use "collections"

actor Main
  new create(env: Env) =>
    let group_r = Array[F32](8)
    let group_i = Array[F32](8)

    for i in Range(0, 8) do
      group_r.push(0)
      group_i.push(0)
    end

    for j in Range(0, 8) do
      var r: F32 = 0.0
      var i: F32 = 0.0

      try
        r = group_r(j)
        i = group_i(j)
      else
        env.out.print("index error")
        break
      end
    end

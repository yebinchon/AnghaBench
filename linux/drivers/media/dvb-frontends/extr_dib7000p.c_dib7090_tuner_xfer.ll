; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7090_tuner_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7090_tuner_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32* }
%struct.dib7000p_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dib7090_tuner_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7090_tuner_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dib7000p_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.dib7000p_state* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.dib7000p_state* %13, %struct.dib7000p_state** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i64 0
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %104 [
    i32 18, label %20
    i32 20, label %21
    i32 36, label %22
    i32 26, label %23
    i32 34, label %24
    i32 51, label %25
    i32 52, label %26
    i32 53, label %27
    i32 54, label %28
    i32 55, label %29
    i32 56, label %30
    i32 57, label %31
    i32 42, label %32
    i32 43, label %33
    i32 44, label %34
    i32 45, label %35
    i32 46, label %36
    i32 47, label %37
    i32 48, label %38
    i32 49, label %39
    i32 50, label %40
    i32 62, label %41
    i32 63, label %42
    i32 64, label %43
    i32 37, label %44
    i32 38, label %45
    i32 39, label %46
    i32 40, label %47
    i32 29, label %48
    i32 31, label %73
  ]

20:                                               ; preds = %3
  store i32 1920, i32* %9, align 4
  br label %104

21:                                               ; preds = %3
  store i32 1921, i32* %9, align 4
  br label %104

22:                                               ; preds = %3
  store i32 1922, i32* %9, align 4
  br label %104

23:                                               ; preds = %3
  store i32 1923, i32* %9, align 4
  br label %104

24:                                               ; preds = %3
  store i32 1924, i32* %9, align 4
  br label %104

25:                                               ; preds = %3
  store i32 1926, i32* %9, align 4
  br label %104

26:                                               ; preds = %3
  store i32 1927, i32* %9, align 4
  br label %104

27:                                               ; preds = %3
  store i32 1928, i32* %9, align 4
  br label %104

28:                                               ; preds = %3
  store i32 1929, i32* %9, align 4
  br label %104

29:                                               ; preds = %3
  store i32 1930, i32* %9, align 4
  br label %104

30:                                               ; preds = %3
  store i32 1931, i32* %9, align 4
  br label %104

31:                                               ; preds = %3
  store i32 1932, i32* %9, align 4
  br label %104

32:                                               ; preds = %3
  store i32 1935, i32* %9, align 4
  br label %104

33:                                               ; preds = %3
  store i32 1936, i32* %9, align 4
  br label %104

34:                                               ; preds = %3
  store i32 1937, i32* %9, align 4
  br label %104

35:                                               ; preds = %3
  store i32 1938, i32* %9, align 4
  br label %104

36:                                               ; preds = %3
  store i32 1939, i32* %9, align 4
  br label %104

37:                                               ; preds = %3
  store i32 1940, i32* %9, align 4
  br label %104

38:                                               ; preds = %3
  store i32 1941, i32* %9, align 4
  br label %104

39:                                               ; preds = %3
  store i32 1942, i32* %9, align 4
  br label %104

40:                                               ; preds = %3
  store i32 1943, i32* %9, align 4
  br label %104

41:                                               ; preds = %3
  store i32 1944, i32* %9, align 4
  br label %104

42:                                               ; preds = %3
  store i32 1945, i32* %9, align 4
  br label %104

43:                                               ; preds = %3
  store i32 1948, i32* %9, align 4
  br label %104

44:                                               ; preds = %3
  store i32 914, i32* %9, align 4
  br label %104

45:                                               ; preds = %3
  store i32 915, i32* %9, align 4
  br label %104

46:                                               ; preds = %3
  store i32 917, i32* %9, align 4
  br label %104

47:                                               ; preds = %3
  store i32 916, i32* %9, align 4
  br label %104

48:                                               ; preds = %3
  %49 = load %struct.dib7000p_state*, %struct.dib7000p_state** %8, align 8
  %50 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %49, i32 72)
  %51 = ashr i32 %50, 12
  %52 = and i32 %51, 3
  store i32 %52, i32* %11, align 4
  %53 = load %struct.dib7000p_state*, %struct.dib7000p_state** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 384, %54
  %56 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %53, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i64 1
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 255
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i64 1
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %4, align 4
  br label %118

73:                                               ; preds = %3
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %103

76:                                               ; preds = %73
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i64 0
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i64 0
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %83, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, 3
  store i32 %92, i32* %10, align 4
  %93 = load %struct.dib7000p_state*, %struct.dib7000p_state** %8, align 8
  %94 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %93, i32 72)
  %95 = and i32 %94, -12289
  %96 = load i32, i32* %10, align 4
  %97 = shl i32 %96, 12
  %98 = or i32 %95, %97
  store i32 %98, i32* %10, align 4
  %99 = load %struct.dib7000p_state*, %struct.dib7000p_state** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %99, i32 72, i32 %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %4, align 4
  br label %118

103:                                              ; preds = %73
  br label %104

104:                                              ; preds = %103, %3, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %109 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @dib7090p_rw_on_apb(%struct.i2c_adapter* %108, %struct.i2c_msg* %109, i32 %110, i32 %111)
  store i32 %112, i32* %4, align 4
  br label %118

113:                                              ; preds = %104
  %114 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %115 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @w7090p_tuner_rw_serpar(%struct.i2c_adapter* %114, %struct.i2c_msg* %115, i32 %116)
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %113, %107, %76, %48
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.dib7000p_state* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @dib7090p_rw_on_apb(%struct.i2c_adapter*, %struct.i2c_msg*, i32, i32) #1

declare dso_local i32 @w7090p_tuner_rw_serpar(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

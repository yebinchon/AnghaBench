; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.adf4350_state = type { i64, i64, i64, i32*, i32 }

@ADF4350_MAX_FREQ_REFIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ADF4350_REG2_POWER_DOWN_EN = common dso_local global i32 0, align 4
@ADF4350_REG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @adf4350_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf4350_write(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adf4350_state*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.adf4350_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.adf4350_state* %17, %struct.adf4350_state** %12, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @kstrtoull(i8* %18, i32 10, i64* %13)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %6, align 4
  br label %130

24:                                               ; preds = %5
  %25 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i64, i64* %8, align 8
  %29 = trunc i64 %28 to i32
  switch i32 %29, label %113 [
    i32 131, label %30
    i32 130, label %34
    i32 129, label %77
    i32 128, label %88
  ]

30:                                               ; preds = %24
  %31 = load %struct.adf4350_state*, %struct.adf4350_state** %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @adf4350_set_freq(%struct.adf4350_state* %31, i64 %32)
  store i32 %33, i32* %15, align 4
  br label %116

34:                                               ; preds = %24
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @ADF4350_MAX_FREQ_REFIN, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %15, align 4
  br label %116

41:                                               ; preds = %34
  %42 = load %struct.adf4350_state*, %struct.adf4350_state** %12, align 8
  %43 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %41
  %47 = load %struct.adf4350_state*, %struct.adf4350_state** %12, align 8
  %48 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i64 @clk_round_rate(i32 %49, i64 %50)
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %15, align 4
  br label %116

58:                                               ; preds = %46
  %59 = load %struct.adf4350_state*, %struct.adf4350_state** %12, align 8
  %60 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %14, align 8
  %63 = call i32 @clk_set_rate(i32 %61, i64 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %116

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %41
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.adf4350_state*, %struct.adf4350_state** %12, align 8
  %71 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.adf4350_state*, %struct.adf4350_state** %12, align 8
  %73 = load %struct.adf4350_state*, %struct.adf4350_state** %12, align 8
  %74 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @adf4350_set_freq(%struct.adf4350_state* %72, i64 %75)
  store i32 %76, i32* %15, align 4
  br label %116

77:                                               ; preds = %24
  %78 = load i64, i64* %13, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %15, align 4
  br label %87

83:                                               ; preds = %77
  %84 = load i64, i64* %13, align 8
  %85 = load %struct.adf4350_state*, %struct.adf4350_state** %12, align 8
  %86 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %80
  br label %116

88:                                               ; preds = %24
  %89 = load i64, i64* %13, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load i32, i32* @ADF4350_REG2_POWER_DOWN_EN, align 4
  %93 = load %struct.adf4350_state*, %struct.adf4350_state** %12, align 8
  %94 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @ADF4350_REG2, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %92
  store i32 %99, i32* %97, align 4
  br label %110

100:                                              ; preds = %88
  %101 = load i32, i32* @ADF4350_REG2_POWER_DOWN_EN, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.adf4350_state*, %struct.adf4350_state** %12, align 8
  %104 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @ADF4350_REG2, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %102
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %100, %91
  %111 = load %struct.adf4350_state*, %struct.adf4350_state** %12, align 8
  %112 = call i32 @adf4350_sync_config(%struct.adf4350_state* %111)
  br label %116

113:                                              ; preds = %24
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %113, %110, %87, %68, %66, %55, %38, %30
  %117 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %118 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  br label %127

125:                                              ; preds = %116
  %126 = load i64, i64* %11, align 8
  br label %127

127:                                              ; preds = %125, %122
  %128 = phi i64 [ %124, %122 ], [ %126, %125 ]
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %127, %22
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.adf4350_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adf4350_set_freq(%struct.adf4350_state*, i64) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @adf4350_sync_config(%struct.adf4350_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

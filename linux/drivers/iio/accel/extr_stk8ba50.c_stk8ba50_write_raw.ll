; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8ba50.c_stk8ba50_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8ba50.c_stk8ba50_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stk8ba50_data = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@stk8ba50_scale_table = common dso_local global %struct.TYPE_5__* null, align 8
@STK8BA50_REG_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to set measurement range\0A\00", align 1
@stk8ba50_samp_freq_table = common dso_local global %struct.TYPE_5__* null, align 8
@STK8BA50_REG_BWSEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to set sampling rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @stk8ba50_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk8ba50_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.stk8ba50_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 -1, i32* %14, align 4
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.stk8ba50_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.stk8ba50_data* %17, %struct.stk8ba50_data** %15, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %131 [
    i64 128, label %19
    i64 129, label %78
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %134

25:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stk8ba50_scale_table, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stk8ba50_scale_table, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %32, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %14, align 4
  br label %46

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %26

46:                                               ; preds = %40, %26
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %134

52:                                               ; preds = %46
  %53 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %15, align 8
  %54 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* @STK8BA50_REG_RANGE, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stk8ba50_scale_table, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_6__* %55, i32 %56, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %52
  %67 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %15, align 8
  %68 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %76

72:                                               ; preds = %52
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %15, align 8
  %75 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %6, align 4
  br label %134

78:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %96, %78
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stk8ba50_samp_freq_table, align 8
  %82 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %81)
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stk8ba50_samp_freq_table, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %85, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %14, align 4
  br label %99

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %79

99:                                               ; preds = %93, %79
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %134

105:                                              ; preds = %99
  %106 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %15, align 8
  %107 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* @STK8BA50_REG_BWSEL, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stk8ba50_samp_freq_table, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_6__* %108, i32 %109, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %105
  %120 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %15, align 8
  %121 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %120, i32 0, i32 2
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = call i32 @dev_err(i32* %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %129

125:                                              ; preds = %105
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %15, align 8
  %128 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %119
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %6, align 4
  br label %134

131:                                              ; preds = %5
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %131, %129, %102, %76, %49, %22
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local %struct.stk8ba50_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

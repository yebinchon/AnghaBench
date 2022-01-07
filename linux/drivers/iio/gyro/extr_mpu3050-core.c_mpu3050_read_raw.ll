; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.mpu3050 = type { i32*, i64, i32, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@mpu3050_fs_precision = common dso_local global i32* null, align 8
@U16_MAX = common dso_local global i32 0, align 4
@MPU3050_TEMP_H = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error reading temperature\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"error reading axis data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mpu3050_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu3050_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mpu3050*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mpu3050* @iio_priv(%struct.iio_dev* %15)
  store %struct.mpu3050* %16, %struct.mpu3050** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %136 [
    i64 132, label %18
    i64 133, label %28
    i64 130, label %48
    i64 129, label %53
    i64 131, label %76
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %25 [
    i32 128, label %22
  ]

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  store i32 23000, i32* %23, align 4
  %24 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %24, i32* %6, align 4
  br label %153

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %153

28:                                               ; preds = %5
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %45 [
    i32 134, label %32
  ]

32:                                               ; preds = %28
  %33 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %34 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %44, i32* %6, align 4
  br label %153

45:                                               ; preds = %28
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %153

48:                                               ; preds = %5
  %49 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %50 = call i32 @mpu3050_get_freq(%struct.mpu3050* %49)
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %52, i32* %6, align 4
  br label %153

53:                                               ; preds = %5
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %73 [
    i32 128, label %57
    i32 134, label %61
  ]

57:                                               ; preds = %53
  %58 = load i32*, i32** %9, align 8
  store i32 1000, i32* %58, align 4
  %59 = load i32*, i32** %10, align 8
  store i32 280, i32* %59, align 4
  %60 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %60, i32* %6, align 4
  br label %153

61:                                               ; preds = %53
  %62 = load i32*, i32** @mpu3050_fs_precision, align 8
  %63 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %64 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %67, 2
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @U16_MAX, align 4
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %72, i32* %6, align 4
  br label %153

73:                                               ; preds = %53
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %153

76:                                               ; preds = %5
  %77 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %78 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pm_runtime_get_sync(i32 %79)
  %81 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %82 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %81, i32 0, i32 3
  %83 = call i32 @mutex_lock(i32* %82)
  %84 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %85 = call i32 @mpu3050_set_8khz_samplerate(%struct.mpu3050* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %140

89:                                               ; preds = %76
  %90 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %91 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %133 [
    i32 128, label %93
    i32 134, label %111
  ]

93:                                               ; preds = %89
  %94 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %95 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @MPU3050_TEMP_H, align 4
  %98 = call i32 @regmap_bulk_read(i32 %96, i32 %97, i32* %14, i32 4)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %103 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %140

106:                                              ; preds = %93
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @be16_to_cpu(i32 %107)
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %110, i32* %13, align 4
  br label %140

111:                                              ; preds = %89
  %112 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %113 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %116 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, 1
  %119 = call i32 @MPU3050_AXIS_REGS(i32 %118)
  %120 = call i32 @regmap_bulk_read(i32 %114, i32 %119, i32* %14, i32 4)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %111
  %124 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %125 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dev_err(i32 %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %140

128:                                              ; preds = %111
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @be16_to_cpu(i32 %129)
  %131 = load i32*, i32** %9, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %132, i32* %13, align 4
  br label %140

133:                                              ; preds = %89
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %13, align 4
  br label %140

136:                                              ; preds = %5
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %153

140:                                              ; preds = %133, %128, %123, %106, %101, %88
  %141 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %142 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %141, i32 0, i32 3
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %145 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @pm_runtime_mark_last_busy(i32 %146)
  %148 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %149 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @pm_runtime_put_autosuspend(i32 %150)
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %140, %137, %73, %61, %57, %48, %45, %32, %25, %22
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local %struct.mpu3050* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mpu3050_get_freq(%struct.mpu3050*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mpu3050_set_8khz_samplerate(%struct.mpu3050*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @MPU3050_AXIS_REGS(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

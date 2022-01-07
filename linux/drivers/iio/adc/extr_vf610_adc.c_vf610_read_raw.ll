; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.vf610_adc = type { i32, i32, i32*, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@VF610_ADC_AIEN = common dso_local global i32 0, align 4
@VF610_REG_ADC_HC0 = common dso_local global i64 0, align 8
@VF610_ADC_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@VF610_VTEMP25_3V3 = common dso_local global i32 0, align 4
@VF610_TEMP_SLOPE_COEFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @vf610_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vf610_adc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.vf610_adc* @iio_priv(%struct.iio_dev* %15)
  store %struct.vf610_adc* %16, %struct.vf610_adc** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %126 [
    i64 132, label %18
    i64 133, label %18
    i64 130, label %101
    i64 131, label %113
  ]

18:                                               ; preds = %5, %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %23 = call i32 @iio_buffer_enabled(%struct.iio_dev* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %130

31:                                               ; preds = %18
  %32 = load %struct.vf610_adc*, %struct.vf610_adc** %12, align 8
  %33 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %32, i32 0, i32 4
  %34 = call i32 @reinit_completion(i32* %33)
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %36 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @VF610_ADC_ADCHC(i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* @VF610_ADC_AIEN, align 4
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.vf610_adc*, %struct.vf610_adc** %12, align 8
  %44 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VF610_REG_ADC_HC0, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.vf610_adc*, %struct.vf610_adc** %12, align 8
  %50 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %49, i32 0, i32 4
  %51 = load i32, i32* @VF610_ADC_TIMEOUT, align 4
  %52 = call i64 @wait_for_completion_interruptible_timeout(i32* %50, i32 %51)
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %31
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %130

61:                                               ; preds = %31
  %62 = load i64, i64* %14, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i64, i64* %14, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  br label %130

70:                                               ; preds = %61
  %71 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %72 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %90 [
    i32 128, label %74
    i32 129, label %79
  ]

74:                                               ; preds = %70
  %75 = load %struct.vf610_adc*, %struct.vf610_adc** %12, align 8
  %76 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %96

79:                                               ; preds = %70
  %80 = load %struct.vf610_adc*, %struct.vf610_adc** %12, align 8
  %81 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @VF610_VTEMP25_3V3, align 4
  %84 = sub nsw i32 %82, %83
  %85 = mul nsw i32 %84, 1000000
  %86 = load i32, i32* @VF610_TEMP_SLOPE_COEFF, align 4
  %87 = sdiv i32 %85, %86
  %88 = sub nsw i32 25000, %87
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  br label %96

90:                                               ; preds = %70
  %91 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %130

96:                                               ; preds = %79, %74
  %97 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %98 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %100, i32* %6, align 4
  br label %130

101:                                              ; preds = %5
  %102 = load %struct.vf610_adc*, %struct.vf610_adc** %12, align 8
  %103 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 1000
  %106 = load i32*, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.vf610_adc*, %struct.vf610_adc** %12, align 8
  %108 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** %10, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %112, i32* %6, align 4
  br label %130

113:                                              ; preds = %5
  %114 = load %struct.vf610_adc*, %struct.vf610_adc** %12, align 8
  %115 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.vf610_adc*, %struct.vf610_adc** %12, align 8
  %118 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32*, i32** %10, align 8
  store i32 0, i32* %124, align 4
  %125 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %125, i32* %6, align 4
  br label %130

126:                                              ; preds = %5
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %127, %113, %101, %96, %90, %64, %55, %25
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.vf610_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @VF610_ADC_ADCHC(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

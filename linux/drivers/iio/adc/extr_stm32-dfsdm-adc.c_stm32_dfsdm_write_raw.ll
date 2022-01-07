; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.stm32_dfsdm_adc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.stm32_dfsdm_channel* }
%struct.stm32_dfsdm_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @stm32_dfsdm_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.stm32_dfsdm_adc*, align 8
  %13 = alloca %struct.stm32_dfsdm_channel*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev* %16)
  store %struct.stm32_dfsdm_adc* %17, %struct.stm32_dfsdm_adc** %12, align 8
  %18 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %12, align 8
  %19 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %21, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %22, i64 %25
  store %struct.stm32_dfsdm_channel* %26, %struct.stm32_dfsdm_channel** %13, align 8
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %15, align 4
  %29 = load i64, i64* %11, align 8
  switch i64 %29, label %93 [
    i64 129, label %30
    i64 128, label %51
  ]

30:                                               ; preds = %5
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %6, align 4
  br label %96

37:                                               ; preds = %30
  %38 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @stm32_dfsdm_compute_all_osrs(%struct.iio_dev* %38, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %12, align 8
  %46 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %49 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %48)
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %6, align 4
  br label %96

51:                                               ; preds = %5
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %96

57:                                               ; preds = %51
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %6, align 4
  br label %96

64:                                               ; preds = %57
  %65 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %13, align 8
  %66 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %81 [
    i32 132, label %68
    i32 131, label %74
    i32 130, label %74
  ]

68:                                               ; preds = %64
  %69 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %12, align 8
  %70 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %14, align 4
  br label %85

74:                                               ; preds = %64, %64
  %75 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %12, align 8
  %76 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = udiv i32 %79, 2
  store i32 %80, i32* %14, align 4
  br label %85

81:                                               ; preds = %64
  %82 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %12, align 8
  %83 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %81, %74, %68
  %86 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @dfsdm_adc_set_samp_freq(%struct.iio_dev* %86, i32 %87, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %91 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %90)
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %6, align 4
  br label %96

93:                                               ; preds = %5
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %85, %62, %54, %47, %35
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @stm32_dfsdm_compute_all_osrs(%struct.iio_dev*, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @dfsdm_adc_set_samp_freq(%struct.iio_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

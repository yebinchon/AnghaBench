; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_npcm_adc.c_npcm_adc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_npcm_adc.c_npcm_adc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.npcm_adc = type { i32, i32, i64 }

@NPCM_ADCCON = common dso_local global i64 0, align 8
@NPCM_ADCCON_ADC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @npcm_adc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_adc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.npcm_adc*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.iio_dev* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.iio_dev* %7, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.npcm_adc* @iio_priv(%struct.iio_dev* %8)
  store %struct.npcm_adc* %9, %struct.npcm_adc** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %11 = call i32 @iio_device_unregister(%struct.iio_dev* %10)
  %12 = load %struct.npcm_adc*, %struct.npcm_adc** %4, align 8
  %13 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NPCM_ADCCON, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @ioread32(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @NPCM_ADCCON_ADC_EN, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load %struct.npcm_adc*, %struct.npcm_adc** %4, align 8
  %23 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NPCM_ADCCON, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @iowrite32(i32 %21, i64 %26)
  %28 = load %struct.npcm_adc*, %struct.npcm_adc** %4, align 8
  %29 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IS_ERR(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %1
  %34 = load %struct.npcm_adc*, %struct.npcm_adc** %4, align 8
  %35 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @regulator_disable(i32 %36)
  br label %38

38:                                               ; preds = %33, %1
  %39 = load %struct.npcm_adc*, %struct.npcm_adc** %4, align 8
  %40 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clk_disable_unprepare(i32 %41)
  ret i32 0
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.npcm_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

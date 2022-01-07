; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_update_scan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_update_scan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.stm32_adc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64*)* @stm32_adc_update_scan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adc_update_scan_mode(%struct.iio_dev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.stm32_adc*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.stm32_adc* @iio_priv(%struct.iio_dev* %9)
  store %struct.stm32_adc* %10, %struct.stm32_adc** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call i32 @pm_runtime_get_sync(%struct.device* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = call i32 @pm_runtime_put_noidle(%struct.device* %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load i64*, i64** %5, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @bitmap_weight(i64* %24, i32 %27)
  %29 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %30 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = call i32 @stm32_adc_conf_scan_seq(%struct.iio_dev* %31, i64* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = call i32 @pm_runtime_mark_last_busy(%struct.device* %34)
  %36 = load %struct.device*, %struct.device** %7, align 8
  %37 = call i32 @pm_runtime_put_autosuspend(%struct.device* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %23, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.stm32_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @bitmap_weight(i64*, i32) #1

declare dso_local i32 @stm32_adc_conf_scan_seq(%struct.iio_dev*, i64*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

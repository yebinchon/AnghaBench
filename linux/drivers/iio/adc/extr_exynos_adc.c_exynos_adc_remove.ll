; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_adc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_adc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.exynos_adc = type { i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.exynos_adc*)* }

@CONFIG_INPUT = common dso_local global i32 0, align 4
@exynos_adc_remove_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_adc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_adc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.exynos_adc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.iio_dev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.exynos_adc* @iio_priv(%struct.iio_dev* %7)
  store %struct.exynos_adc* %8, %struct.exynos_adc** %4, align 8
  %9 = load i32, i32* @CONFIG_INPUT, align 4
  %10 = call i64 @IS_REACHABLE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %14 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %19 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.exynos_adc* %21)
  %23 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %24 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @input_unregister_device(i64 %25)
  br label %27

27:                                               ; preds = %17, %12, %1
  %28 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 0
  %30 = load i32, i32* @exynos_adc_remove_devices, align 4
  %31 = call i32 @device_for_each_child(i32* %29, i32* null, i32 %30)
  %32 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %33 = call i32 @iio_device_unregister(%struct.iio_dev* %32)
  %34 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %35 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %38 = call i32 @free_irq(i32 %36, %struct.exynos_adc* %37)
  %39 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %40 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.exynos_adc*)*, i32 (%struct.exynos_adc*)** %42, align 8
  %44 = icmp ne i32 (%struct.exynos_adc*)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %27
  %46 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %47 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.exynos_adc*)*, i32 (%struct.exynos_adc*)** %49, align 8
  %51 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %52 = call i32 %50(%struct.exynos_adc* %51)
  br label %53

53:                                               ; preds = %45, %27
  %54 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %55 = call i32 @exynos_adc_disable_clk(%struct.exynos_adc* %54)
  %56 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %57 = call i32 @exynos_adc_unprepare_clk(%struct.exynos_adc* %56)
  %58 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %59 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @regulator_disable(i32 %60)
  ret i32 0
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.exynos_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @IS_REACHABLE(i32) #1

declare dso_local i32 @free_irq(i32, %struct.exynos_adc*) #1

declare dso_local i32 @input_unregister_device(i64) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @exynos_adc_disable_clk(%struct.exynos_adc*) #1

declare dso_local i32 @exynos_adc_unprepare_clk(%struct.exynos_adc*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

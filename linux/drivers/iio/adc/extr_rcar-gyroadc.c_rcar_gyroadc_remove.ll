; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rcar-gyroadc.c_rcar_gyroadc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rcar-gyroadc.c_rcar_gyroadc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.rcar_gyroadc = type { i32, %struct.device* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_gyroadc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gyroadc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.rcar_gyroadc*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.iio_dev* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.iio_dev* %7, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.rcar_gyroadc* @iio_priv(%struct.iio_dev* %8)
  store %struct.rcar_gyroadc* %9, %struct.rcar_gyroadc** %4, align 8
  %10 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %4, align 8
  %11 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %10, i32 0, i32 1
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = call i32 @iio_device_unregister(%struct.iio_dev* %13)
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @pm_runtime_get_sync(%struct.device* %15)
  %17 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %4, align 8
  %18 = call i32 @rcar_gyroadc_hw_stop(%struct.rcar_gyroadc* %17)
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @pm_runtime_put_sync(%struct.device* %19)
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 @pm_runtime_disable(%struct.device* %21)
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @pm_runtime_set_suspended(%struct.device* %23)
  %25 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %4, align 8
  %26 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  %29 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %30 = call i32 @rcar_gyroadc_deinit_supplies(%struct.iio_dev* %29)
  ret i32 0
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.rcar_gyroadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @rcar_gyroadc_hw_stop(%struct.rcar_gyroadc*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @rcar_gyroadc_deinit_supplies(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

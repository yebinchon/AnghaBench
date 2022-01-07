; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_platform.c_dw_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_platform.c_dw_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dw_dma_chip_pdata = type { %struct.dw_dma_chip* }
%struct.dw_dma_chip = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @dw_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dw_dma_chip_pdata*, align 8
  %4 = alloca %struct.dw_dma_chip*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.dw_dma_chip_pdata* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.dw_dma_chip_pdata* %6, %struct.dw_dma_chip_pdata** %3, align 8
  %7 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %3, align 8
  %8 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %7, i32 0, i32 0
  %9 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %8, align 8
  store %struct.dw_dma_chip* %9, %struct.dw_dma_chip** %4, align 8
  %10 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %4, align 8
  %11 = getelementptr inbounds %struct.dw_dma_chip, %struct.dw_dma_chip* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pm_runtime_get_sync(i32 %12)
  %14 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %4, align 8
  %15 = call i32 @do_dw_dma_disable(%struct.dw_dma_chip* %14)
  %16 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %4, align 8
  %17 = getelementptr inbounds %struct.dw_dma_chip, %struct.dw_dma_chip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pm_runtime_put_sync_suspend(i32 %18)
  %20 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %4, align 8
  %21 = getelementptr inbounds %struct.dw_dma_chip, %struct.dw_dma_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  ret void
}

declare dso_local %struct.dw_dma_chip_pdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @do_dw_dma_disable(%struct.dw_dma_chip*) #1

declare dso_local i32 @pm_runtime_put_sync_suspend(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

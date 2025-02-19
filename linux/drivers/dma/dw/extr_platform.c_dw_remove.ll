; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_platform.c_dw_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_platform.c_dw_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dw_dma_chip_pdata = type { i32 (%struct.dw_dma_chip*)*, %struct.dw_dma_chip.0* }
%struct.dw_dma_chip = type opaque
%struct.dw_dma_chip.0 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"can't remove device properly: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dw_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dw_dma_chip_pdata*, align 8
  %4 = alloca %struct.dw_dma_chip.0*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.dw_dma_chip_pdata* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.dw_dma_chip_pdata* %7, %struct.dw_dma_chip_pdata** %3, align 8
  %8 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %3, align 8
  %9 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %8, i32 0, i32 1
  %10 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %9, align 8
  store %struct.dw_dma_chip.0* %10, %struct.dw_dma_chip.0** %4, align 8
  %11 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %4, align 8
  %12 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dw_dma_acpi_controller_free(i32 %13)
  %15 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %4, align 8
  %16 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dw_dma_of_controller_free(i32 %17)
  %19 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %3, align 8
  %20 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %19, i32 0, i32 0
  %21 = load i32 (%struct.dw_dma_chip*)*, i32 (%struct.dw_dma_chip*)** %20, align 8
  %22 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %4, align 8
  %23 = bitcast %struct.dw_dma_chip.0* %22 to %struct.dw_dma_chip*
  %24 = call i32 %21(%struct.dw_dma_chip* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %4, align 8
  %29 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @pm_runtime_disable(i32* %35)
  %37 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %4, align 8
  %38 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_disable_unprepare(i32 %39)
  ret i32 0
}

declare dso_local %struct.dw_dma_chip_pdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dw_dma_acpi_controller_free(i32) #1

declare dso_local i32 @dw_dma_of_controller_free(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

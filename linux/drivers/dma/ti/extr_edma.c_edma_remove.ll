; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64 }
%struct.edma_cc = type { i32, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @edma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.edma_cc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.edma_cc* @dev_get_drvdata(%struct.device* %7)
  store %struct.edma_cc* %8, %struct.edma_cc** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %11 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %14 = call i32 @devm_free_irq(%struct.device* %9, i32 %12, %struct.edma_cc* %13)
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %17 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %20 = call i32 @devm_free_irq(%struct.device* %15, i32 %18, %struct.edma_cc* %19)
  %21 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %22 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %21, i32 0, i32 2
  %23 = call i32 @edma_cleanupp_vchan(i32* %22)
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @of_dma_controller_free(i64 %31)
  br label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %35 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %34, i32 0, i32 2
  %36 = call i32 @dma_async_device_unregister(i32* %35)
  %37 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %38 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %43 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @dma_async_device_unregister(i32* %44)
  br label %46

46:                                               ; preds = %41, %33
  %47 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %48 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %49 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @edma_free_slot(%struct.edma_cc* %47, i32 %50)
  ret i32 0
}

declare dso_local %struct.edma_cc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @devm_free_irq(%struct.device*, i32, %struct.edma_cc*) #1

declare dso_local i32 @edma_cleanupp_vchan(i32*) #1

declare dso_local i32 @of_dma_controller_free(i64) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @edma_free_slot(%struct.edma_cc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

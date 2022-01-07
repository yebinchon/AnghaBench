; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sirf-dma.c_sirfsoc_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sirf-dma.c_sirfsoc_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.sirfsoc_dma = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sirfsoc_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_dma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sirfsoc_dma*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sirfsoc_dma* @dev_get_drvdata(%struct.device* %7)
  store %struct.sirfsoc_dma* %8, %struct.sirfsoc_dma** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @of_dma_controller_free(i32 %12)
  %14 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %15 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %14, i32 0, i32 2
  %16 = call i32 @dma_async_device_unregister(i32* %15)
  %17 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %18 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.sirfsoc_dma* %20)
  %22 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %23 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %22, i32 0, i32 1
  %24 = call i32 @tasklet_kill(i32* %23)
  %25 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %26 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @irq_dispose_mapping(i32 %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @pm_runtime_disable(%struct.device* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @pm_runtime_status_suspended(%struct.device* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %1
  %37 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @sirfsoc_dma_runtime_suspend(%struct.device* %38)
  br label %40

40:                                               ; preds = %36, %1
  ret i32 0
}

declare dso_local %struct.sirfsoc_dma* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @of_dma_controller_free(i32) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.sirfsoc_dma*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_status_suspended(%struct.device*) #1

declare dso_local i32 @sirfsoc_dma_runtime_suspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

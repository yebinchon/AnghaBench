; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_dma = type { %struct.tegra_dma_channel*, %struct.TYPE_2__*, i32 }
%struct.tegra_dma_channel = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tegra_dma*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_dma_channel*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.tegra_dma* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.tegra_dma* %7, %struct.tegra_dma** %3, align 8
  %8 = load %struct.tegra_dma*, %struct.tegra_dma** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %8, i32 0, i32 2
  %10 = call i32 @dma_async_device_unregister(i32* %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %34, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.tegra_dma*, %struct.tegra_dma** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %11
  %20 = load %struct.tegra_dma*, %struct.tegra_dma** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %20, i32 0, i32 0
  %22 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %22, i64 %24
  store %struct.tegra_dma_channel* %25, %struct.tegra_dma_channel** %5, align 8
  %26 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %5, align 8
  %27 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %5, align 8
  %30 = call i32 @free_irq(i32 %28, %struct.tegra_dma_channel* %29)
  %31 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %5, align 8
  %32 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %31, i32 0, i32 0
  %33 = call i32 @tasklet_kill(i32* %32)
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %11

37:                                               ; preds = %11
  %38 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @pm_runtime_disable(i32* %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @pm_runtime_status_suspended(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @tegra_dma_runtime_suspend(i32* %47)
  br label %49

49:                                               ; preds = %45, %37
  ret i32 0
}

declare dso_local %struct.tegra_dma* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.tegra_dma_channel*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_status_suspended(i32*) #1

declare dso_local i32 @tegra_dma_runtime_suspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

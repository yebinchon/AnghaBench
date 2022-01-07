; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdma_engine = type { %struct.sdma_channel*, i32, i32, i32, i32, i32 }
%struct.sdma_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_DMA_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdma_channel*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.sdma_engine* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.sdma_engine* %7, %struct.sdma_engine** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %11 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %14 = call i32 @devm_free_irq(i32* %9, i32 %12, %struct.sdma_engine* %13)
  %15 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %16 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %15, i32 0, i32 4
  %17 = call i32 @dma_async_device_unregister(i32* %16)
  %18 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %19 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @kfree(i32 %20)
  %22 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %23 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_unprepare(i32 %24)
  %26 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %27 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_unprepare(i32 %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %49, %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MAX_DMA_CHANNELS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %36 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %35, i32 0, i32 0
  %37 = load %struct.sdma_channel*, %struct.sdma_channel** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %37, i64 %39
  store %struct.sdma_channel* %40, %struct.sdma_channel** %5, align 8
  %41 = load %struct.sdma_channel*, %struct.sdma_channel** %5, align 8
  %42 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = call i32 @tasklet_kill(i32* %43)
  %45 = load %struct.sdma_channel*, %struct.sdma_channel** %5, align 8
  %46 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @sdma_free_chan_resources(i32* %47)
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %30

52:                                               ; preds = %30
  %53 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %54 = call i32 @platform_set_drvdata(%struct.platform_device* %53, i32* null)
  ret i32 0
}

declare dso_local %struct.sdma_engine* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.sdma_engine*) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @sdma_free_chan_resources(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

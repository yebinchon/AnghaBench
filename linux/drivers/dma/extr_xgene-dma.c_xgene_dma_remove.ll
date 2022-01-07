; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xgene_dma = type { i32, %struct.xgene_dma_chan* }
%struct.xgene_dma_chan = type { i32 }

@XGENE_DMA_MAX_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_dma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.xgene_dma*, align 8
  %4 = alloca %struct.xgene_dma_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.xgene_dma* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.xgene_dma* %7, %struct.xgene_dma** %3, align 8
  %8 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %9 = call i32 @xgene_dma_async_unregister(%struct.xgene_dma* %8)
  %10 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %11 = call i32 @xgene_dma_mask_interrupts(%struct.xgene_dma* %10)
  %12 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %13 = call i32 @xgene_dma_disable(%struct.xgene_dma* %12)
  %14 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %15 = call i32 @xgene_dma_free_irqs(%struct.xgene_dma* %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %32, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @XGENE_DMA_MAX_CHANNEL, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %22 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %21, i32 0, i32 1
  %23 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %23, i64 %25
  store %struct.xgene_dma_chan* %26, %struct.xgene_dma_chan** %4, align 8
  %27 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %28 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %27, i32 0, i32 0
  %29 = call i32 @tasklet_kill(i32* %28)
  %30 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %31 = call i32 @xgene_dma_delete_chan_rings(%struct.xgene_dma_chan* %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %37 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @IS_ERR(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %43 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @clk_disable_unprepare(i32 %44)
  br label %46

46:                                               ; preds = %41, %35
  ret i32 0
}

declare dso_local %struct.xgene_dma* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @xgene_dma_async_unregister(%struct.xgene_dma*) #1

declare dso_local i32 @xgene_dma_mask_interrupts(%struct.xgene_dma*) #1

declare dso_local i32 @xgene_dma_disable(%struct.xgene_dma*) #1

declare dso_local i32 @xgene_dma_free_irqs(%struct.xgene_dma*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @xgene_dma_delete_chan_rings(%struct.xgene_dma_chan*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

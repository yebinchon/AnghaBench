; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.omap_chan = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.omap_dmadev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @omap_dma_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dma_pause(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.omap_chan*, align 8
  %4 = alloca %struct.omap_dmadev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %9 = call %struct.omap_chan* @to_omap_dma_chan(%struct.dma_chan* %8)
  store %struct.omap_chan* %9, %struct.omap_chan** %3, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.omap_dmadev* @to_omap_dma_dev(i32 %12)
  store %struct.omap_dmadev* %13, %struct.omap_dmadev** %4, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.omap_dmadev*, %struct.omap_dmadev** %4, align 8
  %17 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %21 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %59

25:                                               ; preds = %1
  %26 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %27 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %41

31:                                               ; preds = %25
  %32 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %33 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %31
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %46 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %51 = call i32 @omap_dma_stop(%struct.omap_chan* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %56 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %44, %41
  br label %59

59:                                               ; preds = %58, %24
  %60 = load %struct.omap_dmadev*, %struct.omap_dmadev** %4, align 8
  %61 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %60, i32 0, i32 0
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.omap_chan* @to_omap_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.omap_dmadev* @to_omap_dma_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @omap_dma_stop(%struct.omap_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

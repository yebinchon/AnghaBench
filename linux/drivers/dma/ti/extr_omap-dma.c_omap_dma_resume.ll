; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.omap_chan = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.omap_dmadev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLNK_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @omap_dma_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dma_resume(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.omap_chan*, align 8
  %4 = alloca %struct.omap_dmadev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.omap_chan* @to_omap_dma_chan(%struct.dma_chan* %7)
  store %struct.omap_chan* %8, %struct.omap_chan** %3, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.omap_dmadev* @to_omap_dma_dev(i32 %11)
  store %struct.omap_dmadev* %12, %struct.omap_dmadev** %4, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.omap_dmadev*, %struct.omap_dmadev** %4, align 8
  %16 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %20 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %1
  %24 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %25 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = call i32 (...) @mb()
  %30 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %31 = load i32, i32* @CLNK_CTRL, align 4
  %32 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %33 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @omap_dma_chan_write(%struct.omap_chan* %30, i32 %31, i32 %36)
  %38 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %39 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %40 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = call i32 @omap_dma_start(%struct.omap_chan* %38, %struct.TYPE_2__* %41)
  %43 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %44 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %28, %23, %1
  %46 = load %struct.omap_dmadev*, %struct.omap_dmadev** %4, align 8
  %47 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %46, i32 0, i32 0
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.omap_chan* @to_omap_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.omap_dmadev* @to_omap_dma_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @omap_dma_chan_write(%struct.omap_chan*, i32, i32) #1

declare dso_local i32 @omap_dma_start(%struct.omap_chan*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

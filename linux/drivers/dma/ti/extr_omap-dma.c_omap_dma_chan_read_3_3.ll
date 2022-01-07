; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_chan_read_3_3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_chan_read_3_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_chan = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.omap_dmadev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@DMA_ERRATA_3_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.omap_chan*, i32)* @omap_dma_chan_read_3_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @omap_dma_chan_read_3_3(%struct.omap_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_dmadev*, align 8
  %6 = alloca i64, align 8
  store %struct.omap_chan* %0, %struct.omap_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %8 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.omap_dmadev* @to_omap_dma_dev(i32 %11)
  store %struct.omap_dmadev* %12, %struct.omap_dmadev** %5, align 8
  %13 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @omap_dma_chan_read(%struct.omap_chan* %13, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.omap_dmadev*, %struct.omap_dmadev** %5, align 8
  %20 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DMA_ERRATA_3_3, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @omap_dma_chan_read(%struct.omap_chan* %28, i32 %29)
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %27, %18, %2
  %32 = load i64, i64* %6, align 8
  ret i64 %32
}

declare dso_local %struct.omap_dmadev* @to_omap_dma_dev(i32) #1

declare dso_local i64 @omap_dma_chan_read(%struct.omap_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

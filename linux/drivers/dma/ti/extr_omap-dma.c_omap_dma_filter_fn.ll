; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_filter_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_filter_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.dma_chan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.omap_dmadev = type { i32 }
%struct.omap_chan = type { i32 }

@omap_dma_driver = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @omap_dma_filter_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dma_filter_fn(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap_dmadev*, align 8
  %7 = alloca %struct.omap_chan*, align 8
  %8 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @omap_dma_driver, i32 0, i32 0)
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %19 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call %struct.omap_dmadev* @to_omap_dma_dev(%struct.TYPE_5__* %20)
  store %struct.omap_dmadev* %21, %struct.omap_dmadev** %6, align 8
  %22 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %23 = call %struct.omap_chan* @to_omap_dma_chan(%struct.dma_chan* %22)
  store %struct.omap_chan* %23, %struct.omap_chan** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.omap_dmadev*, %struct.omap_dmadev** %6, align 8
  %29 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ule i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.omap_chan*, %struct.omap_chan** %7, align 8
  %35 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 1, i32* %3, align 4
  br label %38

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36, %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.omap_dmadev* @to_omap_dma_dev(%struct.TYPE_5__*) #1

declare dso_local %struct.omap_chan* @to_omap_dma_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_chan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_chan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_dmadev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bcm2835_chan = type { i32, i32, i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bcm2835_dma_desc_free = common dso_local global i32 0, align 4
@BCM2835_DMA_DEBUG = common dso_local global i64 0, align 8
@BCM2835_DMA_DEBUG_LITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_dmadev*, i32, i32, i32)* @bcm2835_dma_chan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_dma_chan_init(%struct.bcm2835_dmadev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm2835_dmadev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcm2835_chan*, align 8
  store %struct.bcm2835_dmadev* %0, %struct.bcm2835_dmadev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.bcm2835_dmadev*, %struct.bcm2835_dmadev** %6, align 8
  %12 = getelementptr inbounds %struct.bcm2835_dmadev, %struct.bcm2835_dmadev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.bcm2835_chan* @devm_kzalloc(i32 %14, i32 32, i32 %15)
  store %struct.bcm2835_chan* %16, %struct.bcm2835_chan** %10, align 8
  %17 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %10, align 8
  %18 = icmp ne %struct.bcm2835_chan* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %61

22:                                               ; preds = %4
  %23 = load i32, i32* @bcm2835_dma_desc_free, align 4
  %24 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %10, align 8
  %25 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %10, align 8
  %28 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %27, i32 0, i32 5
  %29 = load %struct.bcm2835_dmadev*, %struct.bcm2835_dmadev** %6, align 8
  %30 = getelementptr inbounds %struct.bcm2835_dmadev, %struct.bcm2835_dmadev* %29, i32 0, i32 1
  %31 = call i32 @vchan_init(%struct.TYPE_3__* %28, %struct.TYPE_4__* %30)
  %32 = load %struct.bcm2835_dmadev*, %struct.bcm2835_dmadev** %6, align 8
  %33 = getelementptr inbounds %struct.bcm2835_dmadev, %struct.bcm2835_dmadev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @BCM2835_DMA_CHANIO(i32 %34, i32 %35)
  %37 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %10, align 8
  %38 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %10, align 8
  %41 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %10, align 8
  %44 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %10, align 8
  %47 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %10, align 8
  %49 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BCM2835_DMA_DEBUG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl(i64 %52)
  %54 = load i32, i32* @BCM2835_DMA_DEBUG_LITE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %22
  %58 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %10, align 8
  %59 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %58, i32 0, i32 3
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %22
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %19
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.bcm2835_chan* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @vchan_init(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

declare dso_local i64 @BCM2835_DMA_CHANIO(i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

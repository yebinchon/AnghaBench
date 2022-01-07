; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_desc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_desc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txx9dmac_desc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.txx9dmac_chan = type { i32, %struct.txx9dmac_dev* }
%struct.txx9dmac_dev = type { i32 }

@txx9dmac_tx_submit = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.txx9dmac_desc* (%struct.txx9dmac_chan*, i32)* @txx9dmac_desc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.txx9dmac_desc* @txx9dmac_desc_alloc(%struct.txx9dmac_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.txx9dmac_desc*, align 8
  %4 = alloca %struct.txx9dmac_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.txx9dmac_dev*, align 8
  %7 = alloca %struct.txx9dmac_desc*, align 8
  store %struct.txx9dmac_chan* %0, %struct.txx9dmac_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %9 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %8, i32 0, i32 1
  %10 = load %struct.txx9dmac_dev*, %struct.txx9dmac_dev** %9, align 8
  store %struct.txx9dmac_dev* %10, %struct.txx9dmac_dev** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.txx9dmac_desc* @kzalloc(i32 20, i32 %11)
  store %struct.txx9dmac_desc* %12, %struct.txx9dmac_desc** %7, align 8
  %13 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %14 = icmp ne %struct.txx9dmac_desc* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.txx9dmac_desc* null, %struct.txx9dmac_desc** %3, align 8
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %18 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %17, i32 0, i32 2
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %21 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %20, i32 0, i32 1
  %22 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %23 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %22, i32 0, i32 0
  %24 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__* %21, i32* %23)
  %25 = load i32, i32* @txx9dmac_tx_submit, align 4
  %26 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %27 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @DMA_CTRL_ACK, align 4
  %30 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %31 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %34 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %33, i32 0, i32 0
  %35 = call i32 @chan2parent(i32* %34)
  %36 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %37 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %36, i32 0, i32 0
  %38 = load %struct.txx9dmac_dev*, %struct.txx9dmac_dev** %6, align 8
  %39 = getelementptr inbounds %struct.txx9dmac_dev, %struct.txx9dmac_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = call i32 @dma_map_single(i32 %35, i32* %37, i32 %40, i32 %41)
  %43 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %44 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  store %struct.txx9dmac_desc* %46, %struct.txx9dmac_desc** %3, align 8
  br label %47

47:                                               ; preds = %16, %15
  %48 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %3, align 8
  ret %struct.txx9dmac_desc* %48
}

declare dso_local %struct.txx9dmac_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i32 @chan2parent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

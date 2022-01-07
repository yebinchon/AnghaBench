; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_start_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_start_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_chan = type { i64, %struct.bcm2835_desc*, i32 }
%struct.bcm2835_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.virt_dma_desc = type { i32, i32 }

@BCM2835_DMA_ADDR = common dso_local global i64 0, align 8
@BCM2835_DMA_ACTIVE = common dso_local global i32 0, align 4
@BCM2835_DMA_CS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_chan*)* @bcm2835_dma_start_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_dma_start_desc(%struct.bcm2835_chan* %0) #0 {
  %2 = alloca %struct.bcm2835_chan*, align 8
  %3 = alloca %struct.virt_dma_desc*, align 8
  %4 = alloca %struct.bcm2835_desc*, align 8
  store %struct.bcm2835_chan* %0, %struct.bcm2835_chan** %2, align 8
  %5 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %2, align 8
  %6 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %5, i32 0, i32 2
  %7 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %6)
  store %struct.virt_dma_desc* %7, %struct.virt_dma_desc** %3, align 8
  %8 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %9 = icmp ne %struct.virt_dma_desc* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %2, align 8
  %12 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %11, i32 0, i32 1
  store %struct.bcm2835_desc* null, %struct.bcm2835_desc** %12, align 8
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %15 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %14, i32 0, i32 1
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %18 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %17, i32 0, i32 0
  %19 = call %struct.bcm2835_desc* @to_bcm2835_dma_desc(i32* %18)
  store %struct.bcm2835_desc* %19, %struct.bcm2835_desc** %4, align 8
  %20 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %2, align 8
  %21 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %20, i32 0, i32 1
  store %struct.bcm2835_desc* %19, %struct.bcm2835_desc** %21, align 8
  %22 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %4, align 8
  %23 = getelementptr inbounds %struct.bcm2835_desc, %struct.bcm2835_desc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %2, align 8
  %29 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BCM2835_DMA_ADDR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load i32, i32* @BCM2835_DMA_ACTIVE, align 4
  %35 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %2, align 8
  %36 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BCM2835_DMA_CS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  br label %41

41:                                               ; preds = %13, %10
  ret void
}

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.bcm2835_desc* @to_bcm2835_dma_desc(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

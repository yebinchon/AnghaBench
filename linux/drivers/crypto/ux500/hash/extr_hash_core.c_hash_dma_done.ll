; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ux500/hash/extr_hash_core.c_hash_dma_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ux500/hash/extr_hash_core.c_hash_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_ctx = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.dma_chan* }
%struct.dma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash_ctx*)* @hash_dma_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_dma_done(%struct.hash_ctx* %0) #0 {
  %2 = alloca %struct.hash_ctx*, align 8
  %3 = alloca %struct.dma_chan*, align 8
  store %struct.hash_ctx* %0, %struct.hash_ctx** %2, align 8
  %4 = load %struct.hash_ctx*, %struct.hash_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  store %struct.dma_chan* %9, %struct.dma_chan** %3, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %11 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %10)
  %12 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hash_ctx*, %struct.hash_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hash_ctx*, %struct.hash_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @dma_unmap_sg(i32 %16, i32 %22, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

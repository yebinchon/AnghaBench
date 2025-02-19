; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_dmanv04.c_nv04_fifo_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_dmanv04.c_nv04_fifo_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nv04_fifo_chan = type { %struct.TYPE_8__, %struct.nv04_fifo* }
%struct.TYPE_8__ = type { i32 }
%struct.nv04_fifo = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NV04_PFIFO_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv04_fifo_dma_init(%struct.nvkm_fifo_chan* %0) #0 {
  %2 = alloca %struct.nvkm_fifo_chan*, align 8
  %3 = alloca %struct.nv04_fifo_chan*, align 8
  %4 = alloca %struct.nv04_fifo*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %2, align 8
  %8 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %2, align 8
  %9 = call %struct.nv04_fifo_chan* @nv04_fifo_chan(%struct.nvkm_fifo_chan* %8)
  store %struct.nv04_fifo_chan* %9, %struct.nv04_fifo_chan** %3, align 8
  %10 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %3, align 8
  %11 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %10, i32 0, i32 1
  %12 = load %struct.nv04_fifo*, %struct.nv04_fifo** %11, align 8
  store %struct.nv04_fifo* %12, %struct.nv04_fifo** %4, align 8
  %13 = load %struct.nv04_fifo*, %struct.nv04_fifo** %4, align 8
  %14 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %5, align 8
  %19 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %3, align 8
  %20 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 1, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.nv04_fifo*, %struct.nv04_fifo** %4, align 8
  %25 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = load i32, i32* @NV04_PFIFO_MODE, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @nvkm_mask(%struct.nvkm_device* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.nv04_fifo*, %struct.nv04_fifo** %4, align 8
  %35 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local %struct.nv04_fifo_chan* @nv04_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

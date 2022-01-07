; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chang84.c_g84_fifo_chan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chang84.c_g84_fifo_chan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nv50_fifo_chan = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.nv50_fifo* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.nv50_fifo = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fifo_chan*)* @g84_fifo_chan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g84_fifo_chan_init(%struct.nvkm_fifo_chan* %0) #0 {
  %2 = alloca %struct.nvkm_fifo_chan*, align 8
  %3 = alloca %struct.nv50_fifo_chan*, align 8
  %4 = alloca %struct.nv50_fifo*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %2, align 8
  %8 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %2, align 8
  %9 = call %struct.nv50_fifo_chan* @nv50_fifo_chan(%struct.nvkm_fifo_chan* %8)
  store %struct.nv50_fifo_chan* %9, %struct.nv50_fifo_chan** %3, align 8
  %10 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %3, align 8
  %11 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %10, i32 0, i32 2
  %12 = load %struct.nv50_fifo*, %struct.nv50_fifo** %11, align 8
  store %struct.nv50_fifo* %12, %struct.nv50_fifo** %4, align 8
  %13 = load %struct.nv50_fifo*, %struct.nv50_fifo** %4, align 8
  %14 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %5, align 8
  %19 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %3, align 8
  %20 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 8
  store i32 %24, i32* %6, align 4
  %25 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %3, align 8
  %26 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 4
  %32 = add nsw i32 9728, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 -2147483648, %33
  %35 = call i32 @nvkm_wr32(%struct.nvkm_device* %29, i32 %32, i32 %34)
  %36 = load %struct.nv50_fifo*, %struct.nv50_fifo** %4, align 8
  %37 = call i32 @nv50_fifo_runlist_update(%struct.nv50_fifo* %36)
  ret void
}

declare dso_local %struct.nv50_fifo_chan* @nv50_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nv50_fifo_runlist_update(%struct.nv50_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

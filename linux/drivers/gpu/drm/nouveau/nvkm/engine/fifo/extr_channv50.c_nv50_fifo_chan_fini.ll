; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_channv50.c_nv50_fifo_chan_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_channv50.c_nv50_fifo_chan_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nv50_fifo_chan = type { %struct.TYPE_8__, %struct.nv50_fifo* }
%struct.TYPE_8__ = type { i32 }
%struct.nv50_fifo = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_fifo_chan_fini(%struct.nvkm_fifo_chan* %0) #0 {
  %2 = alloca %struct.nvkm_fifo_chan*, align 8
  %3 = alloca %struct.nv50_fifo_chan*, align 8
  %4 = alloca %struct.nv50_fifo*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %2, align 8
  %7 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %2, align 8
  %8 = call %struct.nv50_fifo_chan* @nv50_fifo_chan(%struct.nvkm_fifo_chan* %7)
  store %struct.nv50_fifo_chan* %8, %struct.nv50_fifo_chan** %3, align 8
  %9 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %3, align 8
  %10 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %9, i32 0, i32 1
  %11 = load %struct.nv50_fifo*, %struct.nv50_fifo** %10, align 8
  store %struct.nv50_fifo* %11, %struct.nv50_fifo** %4, align 8
  %12 = load %struct.nv50_fifo*, %struct.nv50_fifo** %4, align 8
  %13 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %5, align 8
  %18 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %3, align 8
  %19 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %23, 4
  %25 = add nsw i32 9728, %24
  %26 = call i32 @nvkm_mask(%struct.nvkm_device* %22, i32 %25, i32 -2147483648, i32 0)
  %27 = load %struct.nv50_fifo*, %struct.nv50_fifo** %4, align 8
  %28 = call i32 @nv50_fifo_runlist_update(%struct.nv50_fifo* %27)
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %30, 4
  %32 = add nsw i32 9728, %31
  %33 = call i32 @nvkm_wr32(%struct.nvkm_device* %29, i32 %32, i32 0)
  ret void
}

declare dso_local %struct.nv50_fifo_chan* @nv50_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nv50_fifo_runlist_update(%struct.nv50_fifo*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chang84.c_g84_fifo_chan_engine_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chang84.c_g84_fifo_chan_engine_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_engine = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nv50_fifo_chan = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo_chan*, %struct.nvkm_engine*, %struct.nvkm_object*)* @g84_fifo_chan_engine_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g84_fifo_chan_engine_ctor(%struct.nvkm_fifo_chan* %0, %struct.nvkm_engine* %1, %struct.nvkm_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_fifo_chan*, align 8
  %6 = alloca %struct.nvkm_engine*, align 8
  %7 = alloca %struct.nvkm_object*, align 8
  %8 = alloca %struct.nv50_fifo_chan*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %5, align 8
  store %struct.nvkm_engine* %1, %struct.nvkm_engine** %6, align 8
  store %struct.nvkm_object* %2, %struct.nvkm_object** %7, align 8
  %10 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %5, align 8
  %11 = call %struct.nv50_fifo_chan* @nv50_fifo_chan(%struct.nvkm_fifo_chan* %10)
  store %struct.nv50_fifo_chan* %11, %struct.nv50_fifo_chan** %8, align 8
  %12 = load %struct.nvkm_engine*, %struct.nvkm_engine** %6, align 8
  %13 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.nvkm_engine*, %struct.nvkm_engine** %6, align 8
  %17 = call i64 @g84_fifo_chan_engine_addr(%struct.nvkm_engine* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %22 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %8, align 8
  %23 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @nvkm_object_bind(%struct.nvkm_object* %21, i32* null, i32 0, i32* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %20, %19
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.nv50_fifo_chan* @nv50_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i64 @g84_fifo_chan_engine_addr(%struct.nvkm_engine*) #1

declare dso_local i32 @nvkm_object_bind(%struct.nvkm_object*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogv100.c_gv100_fifo_gpfifo_engine_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogv100.c_gv100_fifo_gpfifo_engine_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_engine = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.gk104_fifo_chan = type { %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.nvkm_gpuobj* }
%struct.nvkm_gpuobj = type { i32 }

@NVKM_ENGINE_CE0 = common dso_local global i64 0, align 8
@NVKM_ENGINE_CE_LAST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv100_fifo_gpfifo_engine_init(%struct.nvkm_fifo_chan* %0, %struct.nvkm_engine* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_fifo_chan*, align 8
  %5 = alloca %struct.nvkm_engine*, align 8
  %6 = alloca %struct.gk104_fifo_chan*, align 8
  %7 = alloca %struct.nvkm_gpuobj*, align 8
  %8 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %4, align 8
  store %struct.nvkm_engine* %1, %struct.nvkm_engine** %5, align 8
  %9 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %10 = call %struct.gk104_fifo_chan* @gk104_fifo_chan(%struct.nvkm_fifo_chan* %9)
  store %struct.gk104_fifo_chan* %10, %struct.gk104_fifo_chan** %6, align 8
  %11 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %6, align 8
  %12 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %13, align 8
  store %struct.nvkm_gpuobj* %14, %struct.nvkm_gpuobj** %7, align 8
  %15 = load %struct.nvkm_engine*, %struct.nvkm_engine** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NVKM_ENGINE_CE0, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.nvkm_engine*, %struct.nvkm_engine** %5, align 8
  %23 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NVKM_ENGINE_CE_LAST, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %57

29:                                               ; preds = %21, %2
  %30 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %6, align 8
  %31 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.nvkm_engine*, %struct.nvkm_engine** %5, align 8
  %34 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %43 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %42)
  %44 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @lower_32_bits(i32 %45)
  %47 = or i32 %46, 4
  %48 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %44, i32 528, i32 %47)
  %49 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @upper_32_bits(i32 %50)
  %52 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %49, i32 532, i32 %51)
  %53 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %54 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %53)
  %55 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %6, align 8
  %56 = call i32 @gv100_fifo_gpfifo_engine_valid(%struct.gk104_fifo_chan* %55, i32 0, i32 1)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %29, %28
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.gk104_fifo_chan* @gk104_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_gpuobj*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @gv100_fifo_gpfifo_engine_valid(%struct.gk104_fifo_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogv100.c_gv100_fifo_gpfifo_engine_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogv100.c_gv100_fifo_gpfifo_engine_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_engine = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.gk104_fifo_chan = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_gpuobj* }
%struct.nvkm_gpuobj = type { i32 }

@NVKM_ENGINE_CE0 = common dso_local global i64 0, align 8
@NVKM_ENGINE_CE_LAST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv100_fifo_gpfifo_engine_fini(%struct.nvkm_fifo_chan* %0, %struct.nvkm_engine* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_fifo_chan*, align 8
  %6 = alloca %struct.nvkm_engine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gk104_fifo_chan*, align 8
  %9 = alloca %struct.nvkm_gpuobj*, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %5, align 8
  store %struct.nvkm_engine* %1, %struct.nvkm_engine** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %5, align 8
  %12 = call %struct.gk104_fifo_chan* @gk104_fifo_chan(%struct.nvkm_fifo_chan* %11)
  store %struct.gk104_fifo_chan* %12, %struct.gk104_fifo_chan** %8, align 8
  %13 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %8, align 8
  %14 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %15, align 8
  store %struct.nvkm_gpuobj* %16, %struct.nvkm_gpuobj** %9, align 8
  %17 = load %struct.nvkm_engine*, %struct.nvkm_engine** %6, align 8
  %18 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NVKM_ENGINE_CE0, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.nvkm_engine*, %struct.nvkm_engine** %6, align 8
  %25 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NVKM_ENGINE_CE_LAST, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %8, align 8
  %32 = call i32 @gk104_fifo_gpfifo_kick(%struct.gk104_fifo_chan* %31)
  store i32 %32, i32* %4, align 4
  br label %53

33:                                               ; preds = %23, %3
  %34 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %8, align 8
  %35 = call i32 @gv100_fifo_gpfifo_engine_valid(%struct.gk104_fifo_chan* %34, i32 0, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %38, %33
  %44 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %9, align 8
  %45 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %44)
  %46 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %9, align 8
  %47 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %46, i32 528, i32 0)
  %48 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %9, align 8
  %49 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %48, i32 532, i32 0)
  %50 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %9, align 8
  %51 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %43, %41, %30
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.gk104_fifo_chan* @gk104_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @gk104_fifo_gpfifo_kick(%struct.gk104_fifo_chan*) #1

declare dso_local i32 @gv100_fifo_gpfifo_engine_valid(%struct.gk104_fifo_chan*, i32, i32) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_gpuobj*, i32, i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

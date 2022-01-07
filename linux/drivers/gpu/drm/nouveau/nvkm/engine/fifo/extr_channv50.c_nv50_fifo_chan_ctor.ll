; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_channv50.c_nv50_fifo_chan_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_channv50.c_nv50_fifo_chan_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_fifo = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nv50_fifo_chan = type { i32, %struct.TYPE_8__, i32, i32, i32, %struct.nv50_fifo* }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@nv50_fifo_chan_func = common dso_local global i32 0, align 4
@NVKM_ENGINE_DMAOBJ = common dso_local global i64 0, align 8
@NVKM_ENGINE_SW = common dso_local global i64 0, align 8
@NVKM_ENGINE_GR = common dso_local global i64 0, align 8
@NVKM_ENGINE_MPEG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_fifo_chan_ctor(%struct.nv50_fifo* %0, i32 %1, i32 %2, %struct.nvkm_oclass* %3, %struct.nv50_fifo_chan* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_fifo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_oclass*, align 8
  %11 = alloca %struct.nv50_fifo_chan*, align 8
  %12 = alloca %struct.nvkm_device*, align 8
  %13 = alloca i32, align 4
  store %struct.nv50_fifo* %0, %struct.nv50_fifo** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.nvkm_oclass* %3, %struct.nvkm_oclass** %10, align 8
  store %struct.nv50_fifo_chan* %4, %struct.nv50_fifo_chan** %11, align 8
  %14 = load %struct.nv50_fifo*, %struct.nv50_fifo** %7, align 8
  %15 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %100

25:                                               ; preds = %5
  %26 = load %struct.nv50_fifo*, %struct.nv50_fifo** %7, align 8
  %27 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %26, i32 0, i32 0
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* @NVKM_ENGINE_DMAOBJ, align 8
  %31 = shl i64 1, %30
  %32 = load i64, i64* @NVKM_ENGINE_SW, align 8
  %33 = shl i64 1, %32
  %34 = or i64 %31, %33
  %35 = load i64, i64* @NVKM_ENGINE_GR, align 8
  %36 = shl i64 1, %35
  %37 = or i64 %34, %36
  %38 = load i64, i64* @NVKM_ENGINE_MPEG, align 8
  %39 = shl i64 1, %38
  %40 = or i64 %37, %39
  %41 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %10, align 8
  %42 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %43 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %42, i32 0, i32 1
  %44 = call i32 @nvkm_fifo_chan_ctor(i32* @nv50_fifo_chan_func, %struct.TYPE_7__* %27, i32 65536, i32 4096, i32 0, i32 %28, i32 %29, i64 %40, i32 0, i32 12582912, i32 8192, %struct.nvkm_oclass* %41, %struct.TYPE_8__* %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.nv50_fifo*, %struct.nv50_fifo** %7, align 8
  %46 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %47 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %46, i32 0, i32 5
  store %struct.nv50_fifo* %45, %struct.nv50_fifo** %47, align 8
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %25
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %100

52:                                               ; preds = %25
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %54 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %55 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %59 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %58, i32 0, i32 4
  %60 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %53, i32 512, i32 4096, i32 1, i32 %57, i32* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %6, align 4
  br label %100

65:                                               ; preds = %52
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %67 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %68 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %72 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %71, i32 0, i32 3
  %73 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %66, i32 4608, i32 0, i32 1, i32 %70, i32* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %6, align 4
  br label %100

78:                                               ; preds = %65
  %79 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %80 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %81 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %85 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %84, i32 0, i32 2
  %86 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %79, i32 16384, i32 0, i32 0, i32 %83, i32* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %6, align 4
  br label %100

91:                                               ; preds = %78
  %92 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %93 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %94 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %98 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %97, i32 0, i32 0
  %99 = call i32 @nvkm_ramht_new(%struct.nvkm_device* %92, i32 32768, i32 16, i32 %96, i32* %98)
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %91, %89, %76, %63, %50, %22
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @nvkm_fifo_chan_ctor(i32*, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.nvkm_oclass*, %struct.TYPE_8__*) #1

declare dso_local i32 @nvkm_gpuobj_new(%struct.nvkm_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nvkm_ramht_new(%struct.nvkm_device*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

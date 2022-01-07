; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chang84.c_g84_fifo_chan_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chang84.c_g84_fifo_chan_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_fifo = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nv50_fifo_chan = type { i32, %struct.TYPE_8__, i32, i32, i32, i32, %struct.nv50_fifo* }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@g84_fifo_chan_func = common dso_local global i32 0, align 4
@NVKM_ENGINE_BSP = common dso_local global i64 0, align 8
@NVKM_ENGINE_CE0 = common dso_local global i64 0, align 8
@NVKM_ENGINE_CIPHER = common dso_local global i64 0, align 8
@NVKM_ENGINE_DMAOBJ = common dso_local global i64 0, align 8
@NVKM_ENGINE_GR = common dso_local global i64 0, align 8
@NVKM_ENGINE_ME = common dso_local global i64 0, align 8
@NVKM_ENGINE_MPEG = common dso_local global i64 0, align 8
@NVKM_ENGINE_MSPDEC = common dso_local global i64 0, align 8
@NVKM_ENGINE_MSPPP = common dso_local global i64 0, align 8
@NVKM_ENGINE_MSVLD = common dso_local global i64 0, align 8
@NVKM_ENGINE_SEC = common dso_local global i64 0, align 8
@NVKM_ENGINE_SW = common dso_local global i64 0, align 8
@NVKM_ENGINE_VIC = common dso_local global i64 0, align 8
@NVKM_ENGINE_VP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g84_fifo_chan_ctor(%struct.nv50_fifo* %0, i32 %1, i32 %2, %struct.nvkm_oclass* %3, %struct.nv50_fifo_chan* %4) #0 {
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
  br label %143

25:                                               ; preds = %5
  %26 = load %struct.nv50_fifo*, %struct.nv50_fifo** %7, align 8
  %27 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %26, i32 0, i32 0
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* @NVKM_ENGINE_BSP, align 8
  %31 = shl i64 1, %30
  %32 = load i64, i64* @NVKM_ENGINE_CE0, align 8
  %33 = shl i64 1, %32
  %34 = or i64 %31, %33
  %35 = load i64, i64* @NVKM_ENGINE_CIPHER, align 8
  %36 = shl i64 1, %35
  %37 = or i64 %34, %36
  %38 = load i64, i64* @NVKM_ENGINE_DMAOBJ, align 8
  %39 = shl i64 1, %38
  %40 = or i64 %37, %39
  %41 = load i64, i64* @NVKM_ENGINE_GR, align 8
  %42 = shl i64 1, %41
  %43 = or i64 %40, %42
  %44 = load i64, i64* @NVKM_ENGINE_ME, align 8
  %45 = shl i64 1, %44
  %46 = or i64 %43, %45
  %47 = load i64, i64* @NVKM_ENGINE_MPEG, align 8
  %48 = shl i64 1, %47
  %49 = or i64 %46, %48
  %50 = load i64, i64* @NVKM_ENGINE_MSPDEC, align 8
  %51 = shl i64 1, %50
  %52 = or i64 %49, %51
  %53 = load i64, i64* @NVKM_ENGINE_MSPPP, align 8
  %54 = shl i64 1, %53
  %55 = or i64 %52, %54
  %56 = load i64, i64* @NVKM_ENGINE_MSVLD, align 8
  %57 = shl i64 1, %56
  %58 = or i64 %55, %57
  %59 = load i64, i64* @NVKM_ENGINE_SEC, align 8
  %60 = shl i64 1, %59
  %61 = or i64 %58, %60
  %62 = load i64, i64* @NVKM_ENGINE_SW, align 8
  %63 = shl i64 1, %62
  %64 = or i64 %61, %63
  %65 = load i64, i64* @NVKM_ENGINE_VIC, align 8
  %66 = shl i64 1, %65
  %67 = or i64 %64, %66
  %68 = load i64, i64* @NVKM_ENGINE_VP, align 8
  %69 = shl i64 1, %68
  %70 = or i64 %67, %69
  %71 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %10, align 8
  %72 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %73 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %72, i32 0, i32 1
  %74 = call i32 @nvkm_fifo_chan_ctor(i32* @g84_fifo_chan_func, %struct.TYPE_7__* %27, i32 65536, i32 4096, i32 0, i32 %28, i32 %29, i64 %70, i32 0, i32 12582912, i32 8192, %struct.nvkm_oclass* %71, %struct.TYPE_8__* %73)
  store i32 %74, i32* %13, align 4
  %75 = load %struct.nv50_fifo*, %struct.nv50_fifo** %7, align 8
  %76 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %77 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %76, i32 0, i32 6
  store %struct.nv50_fifo* %75, %struct.nv50_fifo** %77, align 8
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %25
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %6, align 4
  br label %143

82:                                               ; preds = %25
  %83 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %84 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %85 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %89 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %88, i32 0, i32 5
  %90 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %83, i32 512, i32 0, i32 1, i32 %87, i32* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %6, align 4
  br label %143

95:                                               ; preds = %82
  %96 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %97 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %98 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %102 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %101, i32 0, i32 4
  %103 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %96, i32 16384, i32 0, i32 0, i32 %100, i32* %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %6, align 4
  br label %143

108:                                              ; preds = %95
  %109 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %110 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %111 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %115 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %114, i32 0, i32 3
  %116 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %109, i32 4096, i32 1024, i32 1, i32 %113, i32* %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %108
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %6, align 4
  br label %143

121:                                              ; preds = %108
  %122 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %123 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %124 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %128 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %127, i32 0, i32 2
  %129 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %122, i32 256, i32 256, i32 1, i32 %126, i32* %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %121
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %6, align 4
  br label %143

134:                                              ; preds = %121
  %135 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %136 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %137 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %141 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %140, i32 0, i32 0
  %142 = call i32 @nvkm_ramht_new(%struct.nvkm_device* %135, i32 32768, i32 16, i32 %139, i32* %141)
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %134, %132, %119, %106, %93, %80, %22
  %144 = load i32, i32* %6, align 4
  ret i32 %144
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

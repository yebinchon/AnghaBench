; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usernv04.c_nv04_dmaobj_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usernv04.c_nv04_dmaobj_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_dmaobj = type { i32 }
%struct.nvkm_gpuobj = type opaque
%struct.nv04_dmaobj = type { i32, i32, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.nvkm_memory* }
%struct.nvkm_memory = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_dmaobj*, %struct.nvkm_gpuobj*, i32, %struct.nvkm_gpuobj**)* @nv04_dmaobj_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_dmaobj_bind(%struct.nvkm_dmaobj* %0, %struct.nvkm_gpuobj* %1, i32 %2, %struct.nvkm_gpuobj** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_dmaobj*, align 8
  %7 = alloca %struct.nvkm_gpuobj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_gpuobj**, align 8
  %10 = alloca %struct.nv04_dmaobj*, align 8
  %11 = alloca %struct.nvkm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nvkm_memory*, align 8
  store %struct.nvkm_dmaobj* %0, %struct.nvkm_dmaobj** %6, align 8
  store %struct.nvkm_gpuobj* %1, %struct.nvkm_gpuobj** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_gpuobj** %3, %struct.nvkm_gpuobj*** %9, align 8
  %17 = load %struct.nvkm_dmaobj*, %struct.nvkm_dmaobj** %6, align 8
  %18 = call %struct.nv04_dmaobj* @nv04_dmaobj(%struct.nvkm_dmaobj* %17)
  store %struct.nv04_dmaobj* %18, %struct.nv04_dmaobj** %10, align 8
  %19 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %10, align 8
  %20 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %25, align 8
  store %struct.nvkm_device* %26, %struct.nvkm_device** %11, align 8
  %27 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %10, align 8
  %28 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, -4096
  store i32 %31, i32* %12, align 4
  %32 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %10, align 8
  %33 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 4095
  store i32 %36, i32* %13, align 4
  %37 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %10, align 8
  %38 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %10, align 8
  %42 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %40, %44
  store i32 %45, i32* %14, align 4
  %46 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %10, align 8
  %47 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %86

50:                                               ; preds = %4
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %52 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %59, i64 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.nvkm_memory*, %struct.nvkm_memory** %62, align 8
  store %struct.nvkm_memory* %63, %struct.nvkm_memory** %16, align 8
  %64 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %10, align 8
  %65 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %50
  %70 = load %struct.nvkm_memory*, %struct.nvkm_memory** %16, align 8
  %71 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %72 = bitcast %struct.nvkm_gpuobj** %71 to %struct.nvkm_memory**
  %73 = call i32 @nvkm_gpuobj_wrap(%struct.nvkm_memory* %70, %struct.nvkm_memory** %72)
  store i32 %73, i32* %5, align 4
  br label %140

74:                                               ; preds = %50
  %75 = load %struct.nvkm_memory*, %struct.nvkm_memory** %16, align 8
  %76 = call i32 @nvkm_kmap(%struct.nvkm_memory* %75)
  %77 = load %struct.nvkm_memory*, %struct.nvkm_memory** %16, align 8
  %78 = load i32, i32* %12, align 4
  %79 = ashr i32 %78, 10
  %80 = add nsw i32 8, %79
  %81 = call i32 @nvkm_ro32(%struct.nvkm_memory* %77, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, -4096
  store i32 %83, i32* %12, align 4
  %84 = load %struct.nvkm_memory*, %struct.nvkm_memory** %16, align 8
  %85 = call i32 @nvkm_done(%struct.nvkm_memory* %84)
  br label %86

86:                                               ; preds = %74, %4
  %87 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %90 = bitcast %struct.nvkm_gpuobj* %89 to %struct.nvkm_memory*
  %91 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %92 = bitcast %struct.nvkm_gpuobj** %91 to %struct.nvkm_memory**
  %93 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %87, i32 16, i32 %88, i32 0, %struct.nvkm_memory* %90, %struct.nvkm_memory** %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %138

96:                                               ; preds = %86
  %97 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %98 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %97, align 8
  %99 = bitcast %struct.nvkm_gpuobj* %98 to %struct.nvkm_memory*
  %100 = call i32 @nvkm_kmap(%struct.nvkm_memory* %99)
  %101 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %102 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %101, align 8
  %103 = bitcast %struct.nvkm_gpuobj* %102 to %struct.nvkm_memory*
  %104 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %10, align 8
  %105 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = shl i32 %107, 20
  %109 = or i32 %106, %108
  %110 = call i32 @nvkm_wo32(%struct.nvkm_memory* %103, i32 0, i32 %109)
  %111 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %112 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %111, align 8
  %113 = bitcast %struct.nvkm_gpuobj* %112 to %struct.nvkm_memory*
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @nvkm_wo32(%struct.nvkm_memory* %113, i32 4, i32 %114)
  %116 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %117 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %116, align 8
  %118 = bitcast %struct.nvkm_gpuobj* %117 to %struct.nvkm_memory*
  %119 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %10, align 8
  %120 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %12, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @nvkm_wo32(%struct.nvkm_memory* %118, i32 8, i32 %123)
  %125 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %126 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %125, align 8
  %127 = bitcast %struct.nvkm_gpuobj* %126 to %struct.nvkm_memory*
  %128 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %10, align 8
  %129 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %12, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @nvkm_wo32(%struct.nvkm_memory* %127, i32 12, i32 %132)
  %134 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %9, align 8
  %135 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %134, align 8
  %136 = bitcast %struct.nvkm_gpuobj* %135 to %struct.nvkm_memory*
  %137 = call i32 @nvkm_done(%struct.nvkm_memory* %136)
  br label %138

138:                                              ; preds = %96, %86
  %139 = load i32, i32* %15, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %138, %69
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.nv04_dmaobj* @nv04_dmaobj(%struct.nvkm_dmaobj*) #1

declare dso_local i32 @nvkm_gpuobj_wrap(%struct.nvkm_memory*, %struct.nvkm_memory**) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_ro32(%struct.nvkm_memory*, i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_gpuobj_new(%struct.nvkm_device*, i32, i32, i32, %struct.nvkm_memory*, %struct.nvkm_memory**) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_memory*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

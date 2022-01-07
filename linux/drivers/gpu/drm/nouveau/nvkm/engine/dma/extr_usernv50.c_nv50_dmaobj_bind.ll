; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usernv50.c_nv50_dmaobj_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usernv50.c_nv50_dmaobj_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_dmaobj = type { i32 }
%struct.nvkm_gpuobj = type { i32 }
%struct.nv50_dmaobj = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_dmaobj*, %struct.nvkm_gpuobj*, i32, %struct.nvkm_gpuobj**)* @nv50_dmaobj_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_dmaobj_bind(%struct.nvkm_dmaobj* %0, %struct.nvkm_gpuobj* %1, i32 %2, %struct.nvkm_gpuobj** %3) #0 {
  %5 = alloca %struct.nvkm_dmaobj*, align 8
  %6 = alloca %struct.nvkm_gpuobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_gpuobj**, align 8
  %9 = alloca %struct.nv50_dmaobj*, align 8
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_dmaobj* %0, %struct.nvkm_dmaobj** %5, align 8
  store %struct.nvkm_gpuobj* %1, %struct.nvkm_gpuobj** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_gpuobj** %3, %struct.nvkm_gpuobj*** %8, align 8
  %12 = load %struct.nvkm_dmaobj*, %struct.nvkm_dmaobj** %5, align 8
  %13 = call %struct.nv50_dmaobj* @nv50_dmaobj(%struct.nvkm_dmaobj* %12)
  store %struct.nv50_dmaobj* %13, %struct.nv50_dmaobj** %9, align 8
  %14 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %9, align 8
  %15 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %20, align 8
  store %struct.nvkm_device* %21, %struct.nvkm_device** %10, align 8
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %25 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %26 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %22, i32 24, i32 %23, i32 0, %struct.nvkm_gpuobj* %24, %struct.nvkm_gpuobj** %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %4
  %30 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %31 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %30, align 8
  %32 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %31)
  %33 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %34 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %33, align 8
  %35 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %9, align 8
  %36 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %34, i32 0, i32 %37)
  %39 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %40 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %39, align 8
  %41 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %9, align 8
  %42 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lower_32_bits(i32 %44)
  %46 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %40, i32 4, i32 %45)
  %47 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %48 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %47, align 8
  %49 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %9, align 8
  %50 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @lower_32_bits(i32 %52)
  %54 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %48, i32 8, i32 %53)
  %55 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %56 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %55, align 8
  %57 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %9, align 8
  %58 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @upper_32_bits(i32 %60)
  %62 = shl i32 %61, 24
  %63 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %9, align 8
  %64 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @upper_32_bits(i32 %66)
  %68 = or i32 %62, %67
  %69 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %56, i32 12, i32 %68)
  %70 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %71 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %70, align 8
  %72 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %71, i32 16, i32 0)
  %73 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %74 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %73, align 8
  %75 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %9, align 8
  %76 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %74, i32 20, i32 %77)
  %79 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %80 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %79, align 8
  %81 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %80)
  br label %82

82:                                               ; preds = %29, %4
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local %struct.nv50_dmaobj* @nv50_dmaobj(%struct.nvkm_dmaobj*) #1

declare dso_local i32 @nvkm_gpuobj_new(%struct.nvkm_device*, i32, i32, i32, %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj**) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_gpuobj*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

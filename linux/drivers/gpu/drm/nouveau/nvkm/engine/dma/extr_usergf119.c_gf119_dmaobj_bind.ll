; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usergf119.c_gf119_dmaobj_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usergf119.c_gf119_dmaobj_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_dmaobj = type { i32 }
%struct.nvkm_gpuobj = type { i32 }
%struct.gf119_dmaobj = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_dmaobj*, %struct.nvkm_gpuobj*, i32, %struct.nvkm_gpuobj**)* @gf119_dmaobj_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf119_dmaobj_bind(%struct.nvkm_dmaobj* %0, %struct.nvkm_gpuobj* %1, i32 %2, %struct.nvkm_gpuobj** %3) #0 {
  %5 = alloca %struct.nvkm_dmaobj*, align 8
  %6 = alloca %struct.nvkm_gpuobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_gpuobj**, align 8
  %9 = alloca %struct.gf119_dmaobj*, align 8
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_dmaobj* %0, %struct.nvkm_dmaobj** %5, align 8
  store %struct.nvkm_gpuobj* %1, %struct.nvkm_gpuobj** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_gpuobj** %3, %struct.nvkm_gpuobj*** %8, align 8
  %12 = load %struct.nvkm_dmaobj*, %struct.nvkm_dmaobj** %5, align 8
  %13 = call %struct.gf119_dmaobj* @gf119_dmaobj(%struct.nvkm_dmaobj* %12)
  store %struct.gf119_dmaobj* %13, %struct.gf119_dmaobj** %9, align 8
  %14 = load %struct.gf119_dmaobj*, %struct.gf119_dmaobj** %9, align 8
  %15 = getelementptr inbounds %struct.gf119_dmaobj, %struct.gf119_dmaobj* %14, i32 0, i32 1
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
  br i1 %28, label %29, label %67

29:                                               ; preds = %4
  %30 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %31 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %30, align 8
  %32 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %31)
  %33 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %34 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %33, align 8
  %35 = load %struct.gf119_dmaobj*, %struct.gf119_dmaobj** %9, align 8
  %36 = getelementptr inbounds %struct.gf119_dmaobj, %struct.gf119_dmaobj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %34, i32 0, i32 %37)
  %39 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %40 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %39, align 8
  %41 = load %struct.gf119_dmaobj*, %struct.gf119_dmaobj** %9, align 8
  %42 = getelementptr inbounds %struct.gf119_dmaobj, %struct.gf119_dmaobj* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 8
  %46 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %40, i32 4, i32 %45)
  %47 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %48 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %47, align 8
  %49 = load %struct.gf119_dmaobj*, %struct.gf119_dmaobj** %9, align 8
  %50 = getelementptr inbounds %struct.gf119_dmaobj, %struct.gf119_dmaobj* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 8
  %54 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %48, i32 8, i32 %53)
  %55 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %56 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %55, align 8
  %57 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %56, i32 12, i32 0)
  %58 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %59 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %58, align 8
  %60 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %59, i32 16, i32 0)
  %61 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %62 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %61, align 8
  %63 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %62, i32 20, i32 0)
  %64 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %65 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %64, align 8
  %66 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %65)
  br label %67

67:                                               ; preds = %29, %4
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local %struct.gf119_dmaobj* @gf119_dmaobj(%struct.nvkm_dmaobj*) #1

declare dso_local i32 @nvkm_gpuobj_new(%struct.nvkm_device*, i32, i32, i32, %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj**) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_gpuobj*, i32, i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

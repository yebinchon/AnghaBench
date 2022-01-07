; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usergv100.c_gv100_dmaobj_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usergv100.c_gv100_dmaobj_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_dmaobj = type { i32 }
%struct.nvkm_gpuobj = type { i32 }
%struct.gv100_dmaobj = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_dmaobj*, %struct.nvkm_gpuobj*, i32, %struct.nvkm_gpuobj**)* @gv100_dmaobj_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gv100_dmaobj_bind(%struct.nvkm_dmaobj* %0, %struct.nvkm_gpuobj* %1, i32 %2, %struct.nvkm_gpuobj** %3) #0 {
  %5 = alloca %struct.nvkm_dmaobj*, align 8
  %6 = alloca %struct.nvkm_gpuobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_gpuobj**, align 8
  %9 = alloca %struct.gv100_dmaobj*, align 8
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_dmaobj* %0, %struct.nvkm_dmaobj** %5, align 8
  store %struct.nvkm_gpuobj* %1, %struct.nvkm_gpuobj** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_gpuobj** %3, %struct.nvkm_gpuobj*** %8, align 8
  %14 = load %struct.nvkm_dmaobj*, %struct.nvkm_dmaobj** %5, align 8
  %15 = call %struct.gv100_dmaobj* @gv100_dmaobj(%struct.nvkm_dmaobj* %14)
  store %struct.gv100_dmaobj* %15, %struct.gv100_dmaobj** %9, align 8
  %16 = load %struct.gv100_dmaobj*, %struct.gv100_dmaobj** %9, align 8
  %17 = getelementptr inbounds %struct.gv100_dmaobj, %struct.gv100_dmaobj* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %22, align 8
  store %struct.nvkm_device* %23, %struct.nvkm_device** %10, align 8
  %24 = load %struct.gv100_dmaobj*, %struct.gv100_dmaobj** %9, align 8
  %25 = getelementptr inbounds %struct.gv100_dmaobj, %struct.gv100_dmaobj* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.gv100_dmaobj*, %struct.gv100_dmaobj** %9, align 8
  %30 = getelementptr inbounds %struct.gv100_dmaobj, %struct.gv100_dmaobj* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 8
  store i32 %33, i32* %12, align 4
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %37 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %38 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %34, i32 24, i32 %35, i32 0, %struct.nvkm_gpuobj* %36, %struct.nvkm_gpuobj** %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %4
  %42 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %43 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %42, align 8
  %44 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %43)
  %45 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %46 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %45, align 8
  %47 = load %struct.gv100_dmaobj*, %struct.gv100_dmaobj** %9, align 8
  %48 = getelementptr inbounds %struct.gv100_dmaobj, %struct.gv100_dmaobj* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %46, i32 0, i32 %49)
  %51 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %52 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @lower_32_bits(i32 %53)
  %55 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %52, i32 4, i32 %54)
  %56 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %57 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @upper_32_bits(i32 %58)
  %60 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %57, i32 8, i32 %59)
  %61 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %62 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @lower_32_bits(i32 %63)
  %65 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %62, i32 12, i32 %64)
  %66 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %67 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @upper_32_bits(i32 %68)
  %70 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %67, i32 16, i32 %69)
  %71 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %72 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %71, align 8
  %73 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %72)
  br label %74

74:                                               ; preds = %41, %4
  %75 = load i32, i32* %13, align 4
  ret i32 %75
}

declare dso_local %struct.gv100_dmaobj* @gv100_dmaobj(%struct.nvkm_dmaobj*) #1

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

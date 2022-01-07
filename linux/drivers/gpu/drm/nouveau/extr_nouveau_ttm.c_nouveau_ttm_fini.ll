; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nvkm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)* }

@TTM_PL_VRAM = common dso_local global i32 0, align 4
@TTM_PL_TT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_ttm_fini(%struct.nouveau_drm* %0) #0 {
  %2 = alloca %struct.nouveau_drm*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %2, align 8
  %4 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %5 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = call %struct.nvkm_device* @nvxx_device(i32* %6)
  store %struct.nvkm_device* %7, %struct.nvkm_device** %3, align 8
  %8 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %9 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* @TTM_PL_VRAM, align 4
  %12 = call i32 @ttm_bo_clean_mm(i32* %10, i32 %11)
  %13 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %14 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* @TTM_PL_TT, align 4
  %17 = call i32 @ttm_bo_clean_mm(i32* %15, i32 %16)
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = call i32 @ttm_bo_device_release(i32* %20)
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @arch_phys_wc_del(i64 %25)
  %27 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %28 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %31 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %33, align 8
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %36 = call i32 %34(%struct.nvkm_device* %35, i32 1)
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %38 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %40, align 8
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %43 = call i32 %41(%struct.nvkm_device* %42, i32 1)
  %44 = call i32 @arch_io_free_memtype_wc(i32 %36, i32 %43)
  ret void
}

declare dso_local %struct.nvkm_device* @nvxx_device(i32*) #1

declare dso_local i32 @ttm_bo_clean_mm(i32*, i32) #1

declare dso_local i32 @ttm_bo_device_release(i32*) #1

declare dso_local i32 @arch_phys_wc_del(i64) #1

declare dso_local i32 @arch_io_free_memtype_wc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

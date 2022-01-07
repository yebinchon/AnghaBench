; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_vm_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_vm_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_drm_tile = type { i32 }
%struct.nouveau_drm = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.dma_fence = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*, %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile**)* @nouveau_bo_vm_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_bo_vm_cleanup(%struct.ttm_buffer_object* %0, %struct.nouveau_drm_tile* %1, %struct.nouveau_drm_tile** %2) #0 {
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca %struct.nouveau_drm_tile*, align 8
  %6 = alloca %struct.nouveau_drm_tile**, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.dma_fence*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store %struct.nouveau_drm_tile* %1, %struct.nouveau_drm_tile** %5, align 8
  store %struct.nouveau_drm_tile** %2, %struct.nouveau_drm_tile*** %6, align 8
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %11 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nouveau_drm* @nouveau_bdev(i32 %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %7, align 8
  %14 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %15 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %8, align 8
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.dma_fence* @dma_resv_get_excl(i32 %20)
  store %struct.dma_fence* %21, %struct.dma_fence** %9, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %23 = load %struct.nouveau_drm_tile**, %struct.nouveau_drm_tile*** %6, align 8
  %24 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %23, align 8
  %25 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %26 = call i32 @nv10_bo_put_tile_region(%struct.drm_device* %22, %struct.nouveau_drm_tile* %24, %struct.dma_fence* %25)
  %27 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %5, align 8
  %28 = load %struct.nouveau_drm_tile**, %struct.nouveau_drm_tile*** %6, align 8
  store %struct.nouveau_drm_tile* %27, %struct.nouveau_drm_tile** %28, align 8
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.dma_fence* @dma_resv_get_excl(i32) #1

declare dso_local i32 @nv10_bo_put_tile_region(%struct.drm_device*, %struct.nouveau_drm_tile*, %struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

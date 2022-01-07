; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_vm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_vm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }
%struct.ttm_mem_reg = type { i32, i64, i32 }
%struct.nouveau_drm_tile = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_6__, %struct.drm_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.drm_device = type { i32 }
%struct.nouveau_bo = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_CELSIUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.nouveau_drm_tile**)* @nouveau_bo_vm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_bo_vm_bind(%struct.ttm_buffer_object* %0, %struct.ttm_mem_reg* %1, %struct.nouveau_drm_tile** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca %struct.ttm_mem_reg*, align 8
  %7 = alloca %struct.nouveau_drm_tile**, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.nouveau_bo*, align 8
  %11 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %6, align 8
  store %struct.nouveau_drm_tile** %2, %struct.nouveau_drm_tile*** %7, align 8
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %13 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nouveau_drm* @nouveau_bdev(i32 %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %8, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 1
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %9, align 8
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %20 = call %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object* %19)
  store %struct.nouveau_bo* %20, %struct.nouveau_bo** %10, align 8
  %21 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %22 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = shl i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.nouveau_drm_tile**, %struct.nouveau_drm_tile*** %7, align 8
  store %struct.nouveau_drm_tile* null, %struct.nouveau_drm_tile** %26, align 8
  %27 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %28 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TTM_PL_VRAM, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

33:                                               ; preds = %3
  %34 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %35 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NV_DEVICE_INFO_V0_CELSIUS, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %33
  %43 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %46 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %49 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %52 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.nouveau_drm_tile* @nv10_bo_set_tiling(%struct.drm_device* %43, i32 %44, i32 %47, i32 %50, i32 %53)
  %55 = load %struct.nouveau_drm_tile**, %struct.nouveau_drm_tile*** %7, align 8
  store %struct.nouveau_drm_tile* %54, %struct.nouveau_drm_tile** %55, align 8
  br label %56

56:                                               ; preds = %42, %33
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %32
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object*) #1

declare dso_local %struct.nouveau_drm_tile* @nv10_bo_set_tiling(%struct.drm_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

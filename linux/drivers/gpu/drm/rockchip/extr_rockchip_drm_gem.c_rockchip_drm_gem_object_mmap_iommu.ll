; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_drm_gem_object_mmap_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_drm_gem_object_mmap_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.rockchip_gem_object = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_object*, %struct.vm_area_struct*)* @rockchip_drm_gem_object_mmap_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_drm_gem_object_mmap_iommu(%struct.drm_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.rockchip_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %10 = call %struct.rockchip_gem_object* @to_rockchip_obj(%struct.drm_gem_object* %9)
  store %struct.rockchip_gem_object* %10, %struct.rockchip_gem_object** %6, align 8
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %12 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = lshr i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = call i64 @vma_pages(%struct.vm_area_struct* %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %6, align 8
  %26 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @vm_map_pages(%struct.vm_area_struct* %24, i32 %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %23, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.rockchip_gem_object* @to_rockchip_obj(%struct.drm_gem_object*) #1

declare dso_local i64 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_map_pages(%struct.vm_area_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

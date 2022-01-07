; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_drm_gem_object_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_drm_gem_object_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.rockchip_gem_object = type { i64 }

@VM_PFNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_object*, %struct.vm_area_struct*)* @rockchip_drm_gem_object_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_drm_gem_object_mmap(%struct.drm_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rockchip_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = call %struct.rockchip_gem_object* @to_rockchip_obj(%struct.drm_gem_object* %7)
  store %struct.rockchip_gem_object* %8, %struct.rockchip_gem_object** %6, align 8
  %9 = load i32, i32* @VM_PFNMAP, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %6, align 8
  %16 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = call i32 @rockchip_drm_gem_object_mmap_iommu(%struct.drm_gem_object* %20, %struct.vm_area_struct* %21)
  store i32 %22, i32* %5, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %26 = call i32 @rockchip_drm_gem_object_mmap_dma(%struct.drm_gem_object* %24, %struct.vm_area_struct* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %32 = call i32 @drm_gem_vm_close(%struct.vm_area_struct* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.rockchip_gem_object* @to_rockchip_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @rockchip_drm_gem_object_mmap_iommu(%struct.drm_gem_object*, %struct.vm_area_struct*) #1

declare dso_local i32 @rockchip_drm_gem_object_mmap_dma(%struct.drm_gem_object*, %struct.vm_area_struct*) #1

declare dso_local i32 @drm_gem_vm_close(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_iommu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_iommu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_gem_object = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.rockchip_drm_private* }
%struct.rockchip_drm_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_gem_object*)* @rockchip_gem_iommu_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_gem_iommu_unmap(%struct.rockchip_gem_object* %0) #0 {
  %2 = alloca %struct.rockchip_gem_object*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.rockchip_drm_private*, align 8
  store %struct.rockchip_gem_object* %0, %struct.rockchip_gem_object** %2, align 8
  %5 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %2, align 8
  %6 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %10, align 8
  store %struct.rockchip_drm_private* %11, %struct.rockchip_drm_private** %4, align 8
  %12 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %4, align 8
  %13 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %2, align 8
  %16 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %2, align 8
  %19 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @iommu_unmap(i32 %14, i32 %17, i32 %20)
  %22 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %4, align 8
  %23 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %2, align 8
  %26 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %25, i32 0, i32 0
  %27 = call i32 @drm_mm_remove_node(i32* %26)
  %28 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %4, align 8
  %29 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  ret i32 0
}

declare dso_local i32 @iommu_unmap(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_mm_remove_node(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

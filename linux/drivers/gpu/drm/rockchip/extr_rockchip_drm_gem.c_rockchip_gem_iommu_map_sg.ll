; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_iommu_map_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_iommu_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.dma_buf_attachment = type { i32 }
%struct.sg_table = type { i32 }
%struct.rockchip_gem_object = type { %struct.sg_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.dma_buf_attachment*, %struct.sg_table*, %struct.rockchip_gem_object*)* @rockchip_gem_iommu_map_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_gem_iommu_map_sg(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2, %struct.rockchip_gem_object* %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.rockchip_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  store %struct.rockchip_gem_object* %3, %struct.rockchip_gem_object** %8, align 8
  %9 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %10 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %8, align 8
  %11 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %10, i32 0, i32 0
  store %struct.sg_table* %9, %struct.sg_table** %11, align 8
  %12 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %8, align 8
  %13 = call i32 @rockchip_gem_iommu_map(%struct.rockchip_gem_object* %12)
  ret i32 %13
}

declare dso_local i32 @rockchip_gem_iommu_map(%struct.rockchip_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

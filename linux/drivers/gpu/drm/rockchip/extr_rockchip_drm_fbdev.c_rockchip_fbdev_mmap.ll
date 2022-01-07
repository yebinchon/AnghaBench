; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_fbdev.c_rockchip_fbdev_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_fbdev.c_rockchip_fbdev_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.rockchip_drm_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @rockchip_fbdev_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_fbdev_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.drm_fb_helper*, align 8
  %6 = alloca %struct.rockchip_drm_private*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  store %struct.drm_fb_helper* %9, %struct.drm_fb_helper** %5, align 8
  %10 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %11 = call %struct.rockchip_drm_private* @to_drm_private(%struct.drm_fb_helper* %10)
  store %struct.rockchip_drm_private* %11, %struct.rockchip_drm_private** %6, align 8
  %12 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %6, align 8
  %13 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = call i32 @rockchip_gem_mmap_buf(i32 %14, %struct.vm_area_struct* %15)
  ret i32 %16
}

declare dso_local %struct.rockchip_drm_private* @to_drm_private(%struct.drm_fb_helper*) #1

declare dso_local i32 @rockchip_gem_mmap_buf(i32, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

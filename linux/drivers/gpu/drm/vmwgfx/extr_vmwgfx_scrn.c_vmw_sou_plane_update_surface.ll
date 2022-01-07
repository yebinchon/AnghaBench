; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_plane_update_surface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_plane_update_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.drm_plane = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.vmw_framebuffer = type { i32 }
%struct.vmw_fence_obj = type { i32 }
%struct.vmw_du_update_plane_surface = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, %struct.vmw_fence_obj**, %struct.vmw_framebuffer*, i32, %struct.vmw_private*, %struct.drm_plane_state*, %struct.drm_plane* }

@vmw_sou_surface_fifo_size = common dso_local global i32 0, align 4
@vmw_sou_surface_post_prepare = common dso_local global i32 0, align 4
@vmw_sou_surface_pre_clip = common dso_local global i32 0, align 4
@vmw_sou_surface_clip_rect = common dso_local global i32 0, align 4
@vmw_sou_surface_post_clip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.drm_plane*, %struct.drm_plane_state*, %struct.vmw_framebuffer*, %struct.vmw_fence_obj**)* @vmw_sou_plane_update_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_sou_plane_update_surface(%struct.vmw_private* %0, %struct.drm_plane* %1, %struct.drm_plane_state* %2, %struct.vmw_framebuffer* %3, %struct.vmw_fence_obj** %4) #0 {
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca %struct.drm_plane_state*, align 8
  %9 = alloca %struct.vmw_framebuffer*, align 8
  %10 = alloca %struct.vmw_fence_obj**, align 8
  %11 = alloca %struct.vmw_du_update_plane_surface, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %7, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %8, align 8
  store %struct.vmw_framebuffer* %3, %struct.vmw_framebuffer** %9, align 8
  store %struct.vmw_fence_obj** %4, %struct.vmw_fence_obj*** %10, align 8
  %12 = call i32 @memset(%struct.vmw_du_update_plane_surface* %11, i32 0, i32 88)
  %13 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %14 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 13
  store %struct.drm_plane* %13, %struct.drm_plane** %15, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %17 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 12
  store %struct.drm_plane_state* %16, %struct.drm_plane_state** %18, align 8
  %19 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %20 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 11
  store %struct.vmw_private* %19, %struct.vmw_private** %21, align 8
  %22 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %23 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @vmw_crtc_to_du(i32 %26)
  %28 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 8
  %30 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %9, align 8
  %31 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 9
  store %struct.vmw_framebuffer* %30, %struct.vmw_framebuffer** %32, align 8
  %33 = load %struct.vmw_fence_obj**, %struct.vmw_fence_obj*** %10, align 8
  %34 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 8
  store %struct.vmw_fence_obj** %33, %struct.vmw_fence_obj*** %35, align 8
  %36 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %37 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 7
  store i32* %37, i32** %39, align 8
  %40 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* @vmw_sou_surface_fifo_size, align 4
  %45 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @vmw_sou_surface_post_prepare, align 4
  %48 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @vmw_sou_surface_pre_clip, align 4
  %51 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @vmw_sou_surface_clip_rect, align 4
  %54 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @vmw_sou_surface_post_clip, align 4
  %57 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = getelementptr inbounds %struct.vmw_du_update_plane_surface, %struct.vmw_du_update_plane_surface* %11, i32 0, i32 0
  %60 = call i32 @vmw_du_helper_plane_update(%struct.TYPE_4__* %59)
  ret i32 %60
}

declare dso_local i32 @memset(%struct.vmw_du_update_plane_surface*, i32, i32) #1

declare dso_local i32 @vmw_crtc_to_du(i32) #1

declare dso_local i32 @vmw_du_helper_plane_update(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

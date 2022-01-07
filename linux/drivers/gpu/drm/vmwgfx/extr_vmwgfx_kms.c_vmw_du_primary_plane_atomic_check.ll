; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_primary_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_primary_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { %struct.drm_crtc*, i32, %struct.drm_framebuffer* }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.vmw_connector_state = type { i32 }
%struct.vmw_display_unit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_du_primary_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.vmw_connector_state*, align 8
  %10 = alloca %struct.vmw_display_unit*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %5, align 8
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %12 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %11, i32 0, i32 2
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  store %struct.drm_framebuffer* %13, %struct.drm_framebuffer** %6, align 8
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 0
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %17 = icmp ne %struct.drm_crtc* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %20 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 0
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %23, align 8
  %25 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(i32 %21, %struct.drm_crtc* %24)
  store %struct.drm_crtc_state* %25, %struct.drm_crtc_state** %5, align 8
  br label %26

26:                                               ; preds = %18, %2
  %27 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %28 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %29 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %30 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %31 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %27, %struct.drm_crtc_state* %28, i32 %29, i32 %30, i32 0, i32 1)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %26
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %36 = icmp ne %struct.drm_framebuffer* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %39 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %38, i32 0, i32 0
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %39, align 8
  store %struct.drm_crtc* %40, %struct.drm_crtc** %8, align 8
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %42 = call %struct.vmw_display_unit* @vmw_crtc_to_du(%struct.drm_crtc* %41)
  store %struct.vmw_display_unit* %42, %struct.vmw_display_unit** %10, align 8
  %43 = load %struct.vmw_display_unit*, %struct.vmw_display_unit** %10, align 8
  %44 = getelementptr inbounds %struct.vmw_display_unit, %struct.vmw_display_unit* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.vmw_connector_state* @vmw_connector_state_to_vcs(i32 %46)
  store %struct.vmw_connector_state* %47, %struct.vmw_connector_state** %9, align 8
  br label %48

48:                                               ; preds = %37, %34, %26
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(i32, %struct.drm_crtc*) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

declare dso_local %struct.vmw_display_unit* @vmw_crtc_to_du(%struct.drm_crtc*) #1

declare dso_local %struct.vmw_connector_state* @vmw_connector_state_to_vcs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

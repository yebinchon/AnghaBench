; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_primary_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_primary_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.drm_pending_vblank_event* }
%struct.drm_pending_vblank_event = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.drm_file* }
%struct.drm_file = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.vmw_fence_obj = type { i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_framebuffer = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to update screen.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to queue event on fence.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @vmw_sou_primary_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_sou_primary_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_pending_vblank_event*, align 8
  %7 = alloca %struct.vmw_fence_obj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmw_private*, align 8
  %10 = alloca %struct.vmw_framebuffer*, align 8
  %11 = alloca %struct.drm_file*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %12 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %13 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  store %struct.drm_crtc* %16, %struct.drm_crtc** %5, align 8
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %6, align 8
  store %struct.vmw_fence_obj* null, %struct.vmw_fence_obj** %7, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %18 = icmp ne %struct.drm_crtc* %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %2
  %20 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %21 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %19
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %28 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.vmw_private* @vmw_priv(i32 %29)
  store %struct.vmw_private* %30, %struct.vmw_private** %9, align 8
  %31 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %32 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.vmw_framebuffer* @vmw_framebuffer_to_vfb(i64 %35)
  store %struct.vmw_framebuffer* %36, %struct.vmw_framebuffer** %10, align 8
  %37 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %10, align 8
  %38 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %26
  %42 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %43 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %44 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %45 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %10, align 8
  %46 = call i32 @vmw_sou_plane_update_bo(%struct.vmw_private* %42, %struct.drm_plane* %43, %struct.drm_plane_state* %44, %struct.vmw_framebuffer* %45, %struct.vmw_fence_obj** %7)
  store i32 %46, i32* %8, align 4
  br label %53

47:                                               ; preds = %26
  %48 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %49 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %50 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %51 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %10, align 8
  %52 = call i32 @vmw_sou_plane_update_surface(%struct.vmw_private* %48, %struct.drm_plane* %49, %struct.drm_plane_state* %50, %struct.vmw_framebuffer* %51, %struct.vmw_fence_obj** %7)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %47, %41
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  br label %60

59:                                               ; preds = %19, %2
  br label %107

60:                                               ; preds = %58
  %61 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %62 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %64, align 8
  store %struct.drm_pending_vblank_event* %65, %struct.drm_pending_vblank_event** %6, align 8
  %66 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %67 = icmp ne %struct.drm_pending_vblank_event* %66, null
  br i1 %67, label %68, label %102

68:                                               ; preds = %60
  %69 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %7, align 8
  %70 = icmp ne %struct.vmw_fence_obj* %69, null
  br i1 %70, label %71, label %102

71:                                               ; preds = %68
  %72 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %73 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.drm_file*, %struct.drm_file** %74, align 8
  store %struct.drm_file* %75, %struct.drm_file** %11, align 8
  %76 = load %struct.drm_file*, %struct.drm_file** %11, align 8
  %77 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %7, align 8
  %78 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %79 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %78, i32 0, i32 1
  %80 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %81 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %85 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = call i32 @vmw_event_fence_action_queue(%struct.drm_file* %76, %struct.vmw_fence_obj* %77, %struct.TYPE_10__* %79, i32* %83, i32* %87, i32 1)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %71
  %95 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %101

96:                                               ; preds = %71
  %97 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %98 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %100, align 8
  br label %101

101:                                              ; preds = %96, %94
  br label %102

102:                                              ; preds = %101, %68, %60
  %103 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %7, align 8
  %104 = icmp ne %struct.vmw_fence_obj* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj** %7)
  br label %107

107:                                              ; preds = %59, %105, %102
  ret void
}

declare dso_local %struct.vmw_private* @vmw_priv(i32) #1

declare dso_local %struct.vmw_framebuffer* @vmw_framebuffer_to_vfb(i64) #1

declare dso_local i32 @vmw_sou_plane_update_bo(%struct.vmw_private*, %struct.drm_plane*, %struct.drm_plane_state*, %struct.vmw_framebuffer*, %struct.vmw_fence_obj**) #1

declare dso_local i32 @vmw_sou_plane_update_surface(%struct.vmw_private*, %struct.drm_plane*, %struct.drm_plane_state*, %struct.vmw_framebuffer*, %struct.vmw_fence_obj**) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vmw_event_fence_action_queue(%struct.drm_file*, %struct.vmw_fence_obj*, %struct.TYPE_10__*, i32*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

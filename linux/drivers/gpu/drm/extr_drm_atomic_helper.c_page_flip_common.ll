; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_page_flip_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_page_flip_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { i32 }
%struct.drm_crtc = type { i32, %struct.TYPE_2__, %struct.drm_plane* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_plane = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_plane_state = type { i32, i32, %struct.drm_pending_vblank_event* }
%struct.drm_crtc_state = type { i32, i32, %struct.drm_pending_vblank_event* }

@DRM_MODE_PAGE_FLIP_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"[CRTC:%d:%s] disabled, rejecting legacy flip\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_atomic_state*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32)* @page_flip_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_flip_common(%struct.drm_atomic_state* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, %struct.drm_pending_vblank_event* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_atomic_state*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_pending_vblank_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_plane*, align 8
  %13 = alloca %struct.drm_plane_state*, align 8
  %14 = alloca %struct.drm_crtc_state*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %7, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %8, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_pending_vblank_event* %3, %struct.drm_pending_vblank_event** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 2
  %18 = load %struct.drm_plane*, %struct.drm_plane** %17, align 8
  store %struct.drm_plane* %18, %struct.drm_plane** %12, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %7, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %21 = call %struct.drm_plane_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state* %19, %struct.drm_crtc* %20)
  %22 = bitcast %struct.drm_plane_state* %21 to %struct.drm_crtc_state*
  store %struct.drm_crtc_state* %22, %struct.drm_crtc_state** %14, align 8
  %23 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %14, align 8
  %24 = bitcast %struct.drm_crtc_state* %23 to %struct.drm_plane_state*
  %25 = call i64 @IS_ERR(%struct.drm_plane_state* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %14, align 8
  %29 = bitcast %struct.drm_crtc_state* %28 to %struct.drm_plane_state*
  %30 = call i32 @PTR_ERR(%struct.drm_plane_state* %29)
  store i32 %30, i32* %6, align 4
  br label %80

31:                                               ; preds = %5
  %32 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %33 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %14, align 8
  %34 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %33, i32 0, i32 2
  store %struct.drm_pending_vblank_event* %32, %struct.drm_pending_vblank_event** %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @DRM_MODE_PAGE_FLIP_ASYNC, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %14, align 8
  %39 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %7, align 8
  %41 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %42 = call %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state* %40, %struct.drm_plane* %41)
  store %struct.drm_plane_state* %42, %struct.drm_plane_state** %13, align 8
  %43 = load %struct.drm_plane_state*, %struct.drm_plane_state** %13, align 8
  %44 = call i64 @IS_ERR(%struct.drm_plane_state* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load %struct.drm_plane_state*, %struct.drm_plane_state** %13, align 8
  %48 = call i32 @PTR_ERR(%struct.drm_plane_state* %47)
  store i32 %48, i32* %6, align 4
  br label %80

49:                                               ; preds = %31
  %50 = load %struct.drm_plane_state*, %struct.drm_plane_state** %13, align 8
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %52 = call i32 @drm_atomic_set_crtc_for_plane(%struct.drm_plane_state* %50, %struct.drm_crtc* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %6, align 4
  br label %80

57:                                               ; preds = %49
  %58 = load %struct.drm_plane_state*, %struct.drm_plane_state** %13, align 8
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %60 = call i32 @drm_atomic_set_fb_for_plane(%struct.drm_plane_state* %58, %struct.drm_framebuffer* %59)
  %61 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %7, align 8
  %62 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  %63 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %14, align 8
  %64 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %57
  %68 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %69 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %73 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %80

78:                                               ; preds = %57
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %67, %55, %46, %27
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.drm_plane_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_plane_state*) #1

declare dso_local %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state*, %struct.drm_plane*) #1

declare dso_local i32 @drm_atomic_set_crtc_for_plane(%struct.drm_plane_state*, %struct.drm_crtc*) #1

declare dso_local i32 @drm_atomic_set_fb_for_plane(%struct.drm_plane_state*, %struct.drm_framebuffer*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

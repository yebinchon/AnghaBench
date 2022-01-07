; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_cursor_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_cursor_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, i32, i64, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.vmw_surface = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.vmw_surface* }

@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid cursor dimensions (%d, %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"surface not suitable for cursor\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_du_cursor_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca %struct.vmw_surface*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %7, align 8
  store %struct.vmw_surface* null, %struct.vmw_surface** %8, align 8
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %11 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 4
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  store %struct.drm_framebuffer* %12, %struct.drm_framebuffer** %9, align 8
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %19 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(i32 %20, i64 %23)
  store %struct.drm_crtc_state* %24, %struct.drm_crtc_state** %7, align 8
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %27 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %28 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %29 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %30 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %26, %struct.drm_crtc_state* %27, i32 %28, i32 %29, i32 1, i32 1)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %85

35:                                               ; preds = %25
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %37 = icmp ne %struct.drm_framebuffer* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %85

39:                                               ; preds = %35
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %41 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 64
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %46 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 64
  br i1 %48, label %49, label %59

49:                                               ; preds = %44, %39
  %50 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %51 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %54 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %49, %44
  %60 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %61 = call %struct.TYPE_6__* @vmw_framebuffer_to_vfb(%struct.drm_framebuffer* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %67 = call %struct.TYPE_5__* @vmw_framebuffer_to_vfbs(%struct.drm_framebuffer* %66)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.vmw_surface*, %struct.vmw_surface** %68, align 8
  store %struct.vmw_surface* %69, %struct.vmw_surface** %8, align 8
  br label %70

70:                                               ; preds = %65, %59
  %71 = load %struct.vmw_surface*, %struct.vmw_surface** %8, align 8
  %72 = icmp ne %struct.vmw_surface* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load %struct.vmw_surface*, %struct.vmw_surface** %8, align 8
  %75 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %73, %70
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %38, %33
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(i32, i64) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @vmw_framebuffer_to_vfb(%struct.drm_framebuffer*) #1

declare dso_local %struct.TYPE_5__* @vmw_framebuffer_to_vfbs(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

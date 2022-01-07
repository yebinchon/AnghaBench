; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_cursor_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_cursor_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i64, i64, i32, i64, i32 }
%struct.drm_crtc_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@VBOX_MAX_CURSOR_WIDTH = common dso_local global i64 0, align 8
@VBOX_MAX_CURSOR_HEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @vbox_cursor_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbox_cursor_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %6, align 8
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %11 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %25 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32 %23, i64 %26)
  store %struct.drm_crtc_state* %27, %struct.drm_crtc_state** %6, align 8
  %28 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %29 = icmp ne %struct.drm_crtc_state* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %72

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %40 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %41 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %42 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %43 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %39, %struct.drm_crtc_state* %40, i32 %41, i32 %42, i32 1, i32 1)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %72

48:                                               ; preds = %38
  %49 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %50 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %72

54:                                               ; preds = %48
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @VBOX_MAX_CURSOR_WIDTH, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @VBOX_MAX_CURSOR_HEIGHT, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %62, %58, %54
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68, %53, %46, %34
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

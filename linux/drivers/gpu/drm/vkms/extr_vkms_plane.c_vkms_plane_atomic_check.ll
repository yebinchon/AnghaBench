; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_plane.c_vkms_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_plane.c_vkms_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i64 }
%struct.drm_plane_state = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { i32 }

@DRM_PLANE_TYPE_CURSOR = common dso_local global i64 0, align 8
@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @vkms_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vkms_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %10 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %16 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = or i32 %14, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

24:                                               ; preds = %2
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32 %27, i32 %30)
  store %struct.drm_crtc_state* %31, %struct.drm_crtc_state** %6, align 8
  %32 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %33 = call i64 @IS_ERR(%struct.drm_crtc_state* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %37 = call i32 @PTR_ERR(%struct.drm_crtc_state* %36)
  store i32 %37, i32* %3, align 4
  br label %68

38:                                               ; preds = %24
  %39 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %40 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DRM_PLANE_TYPE_CURSOR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %47 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %48 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %49 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %46, %struct.drm_crtc_state* %47, i32 %48, i32 %49, i32 %50, i32 1)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %68

56:                                               ; preds = %45
  %57 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %58 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %61, %56
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64, %54, %35, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

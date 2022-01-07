; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_check_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_check_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i64 }

@DRM_FORMAT_MOD_LINEAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"cursor cannot be tiled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @intel_check_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_check_cursor(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %8 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %9 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  store %struct.drm_framebuffer* %11, %struct.drm_framebuffer** %6, align 8
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %13 = icmp ne %struct.drm_framebuffer* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %16 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DRM_FORMAT_MOD_LINEAR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %58

24:                                               ; preds = %14, %2
  %25 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %25, i32 0, i32 0
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 0
  %29 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %30 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %31 = call i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_2__* %26, i32* %28, i32 %29, i32 %30, i32 1, i32 1)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %58

36:                                               ; preds = %24
  %37 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %38 = call i32 @intel_cursor_check_surface(%struct.intel_plane_state* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %58

43:                                               ; preds = %36
  %44 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %45 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %58

50:                                               ; preds = %43
  %51 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %52 = call i32 @intel_plane_check_src_coordinates(%struct.intel_plane_state* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %55, %49, %41, %34, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_2__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @intel_cursor_check_surface(%struct.intel_plane_state*) #1

declare dso_local i32 @intel_plane_check_src_coordinates(%struct.intel_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

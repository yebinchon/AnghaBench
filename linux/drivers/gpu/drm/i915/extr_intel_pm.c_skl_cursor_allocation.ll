; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_cursor_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_cursor_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.skl_wm_level = type { i32 }
%struct.skl_wm_params = type { i32 }

@DRM_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@DRM_FORMAT_MOD_LINEAR = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@U16_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, i32)* @skl_cursor_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_cursor_allocation(%struct.intel_crtc_state* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.skl_wm_level, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.skl_wm_params, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %5, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %20 = call i32 @ilk_wm_max_level(%struct.drm_i915_private* %19)
  store i32 %20, i32* %7, align 4
  %21 = bitcast %struct.skl_wm_level* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  store i32 0, i32* %10, align 4
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %23 = load i32, i32* @DRM_FORMAT_ARGB8888, align 4
  %24 = call i32 @drm_format_info(i32 %23)
  %25 = load i32, i32* @DRM_FORMAT_MOD_LINEAR, align 4
  %26 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @skl_compute_wm_params(%struct.intel_crtc_state* %22, i32 256, i32 %24, i32 %25, i32 %26, i32 %29, %struct.skl_wm_params* %11, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @WARN_ON(i32 %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %49, %2
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @skl_compute_plane_wm(%struct.intel_crtc_state* %38, i32 %39, %struct.skl_wm_params* %11, %struct.skl_wm_level* %8, %struct.skl_wm_level* %8)
  %41 = getelementptr inbounds %struct.skl_wm_level, %struct.skl_wm_level* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @U16_MAX, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %52

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.skl_wm_level, %struct.skl_wm_level* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %33

52:                                               ; preds = %45, %33
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 32, i32 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @max(i32 %56, i32 %57)
  ret i32 %58
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @ilk_wm_max_level(%struct.drm_i915_private*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @skl_compute_wm_params(%struct.intel_crtc_state*, i32, i32, i32, i32, i32, %struct.skl_wm_params*, i32) #1

declare dso_local i32 @drm_format_info(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @skl_compute_plane_wm(%struct.intel_crtc_state*, i32, %struct.skl_wm_params*, %struct.skl_wm_level*, %struct.skl_wm_level*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

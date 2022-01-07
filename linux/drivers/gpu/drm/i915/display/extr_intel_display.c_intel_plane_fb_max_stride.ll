; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_fb_max_stride.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_fb_max_stride.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_plane = type { i32 (%struct.intel_plane*, i32, i32, i32)* }

@PIPE_A = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_plane_fb_max_stride(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca %struct.intel_plane*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %10 = load i32, i32* @PIPE_A, align 4
  %11 = call %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private* %9, i32 %10)
  store %struct.intel_crtc* %11, %struct.intel_crtc** %7, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %13 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.intel_plane* @to_intel_plane(i32 %15)
  store %struct.intel_plane* %16, %struct.intel_plane** %8, align 8
  %17 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %18 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %17, i32 0, i32 0
  %19 = load i32 (%struct.intel_plane*, i32, i32, i32)*, i32 (%struct.intel_plane*, i32, i32, i32)** %18, align 8
  %20 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %24 = call i32 %19(%struct.intel_plane* %20, i32 %21, i32 %22, i32 %23)
  ret i32 %24
}

declare dso_local %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

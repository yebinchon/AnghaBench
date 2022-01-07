; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi.c_vlv_dsi_get_hw_panel_orientation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi.c_vlv_dsi_get_hw_panel_orientation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_encoder*, %struct.TYPE_4__ }
%struct.intel_encoder = type { i32 (%struct.intel_encoder*, i32*)* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_plane = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DRM_MODE_PANEL_ORIENTATION_UNKNOWN = common dso_local global i32 0, align 4
@DISPLAY_PLANE_ENABLE = common dso_local global i32 0, align 4
@DISPPLANE_ROTATE_180 = common dso_local global i32 0, align 4
@DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP = common dso_local global i32 0, align 4
@DRM_MODE_PANEL_ORIENTATION_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*)* @vlv_dsi_get_hw_panel_orientation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_dsi_get_hw_panel_orientation(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_plane*, align 8
  %9 = alloca %struct.intel_crtc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %13 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %14 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %4, align 8
  %18 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %19 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %18, i32 0, i32 0
  %20 = load %struct.intel_encoder*, %struct.intel_encoder** %19, align 8
  store %struct.intel_encoder* %20, %struct.intel_encoder** %5, align 8
  %21 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %22 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %21, i32 0, i32 0
  %23 = load i32 (%struct.intel_encoder*, i32*)*, i32 (%struct.intel_encoder*, i32*)** %22, align 8
  %24 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %25 = call i32 %23(%struct.intel_encoder* %24, i32* %11)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_UNKNOWN, align 4
  store i32 %28, i32* %2, align 4
  br label %75

29:                                               ; preds = %1
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private* %30, i32 %31)
  store %struct.intel_crtc* %32, %struct.intel_crtc** %9, align 8
  %33 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %34 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.intel_plane* @to_intel_plane(i32 %36)
  store %struct.intel_plane* %37, %struct.intel_plane** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @POWER_DOMAIN_PIPE(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %29
  %46 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_UNKNOWN, align 4
  store i32 %46, i32* %2, align 4
  br label %75

47:                                               ; preds = %29
  %48 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %49 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DSPCNTR(i32 %50)
  %52 = call i32 @I915_READ(i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_UNKNOWN, align 4
  store i32 %58, i32* %7, align 4
  br label %69

59:                                               ; preds = %47
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @DISPPLANE_ROTATE_180, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP, align 4
  store i32 %65, i32* %7, align 4
  br label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_NORMAL, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %66, %64
  br label %69

69:                                               ; preds = %68, %57
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @intel_display_power_put(%struct.drm_i915_private* %70, i32 %71, i32 %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %45, %27
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local i32 @POWER_DOMAIN_PIPE(i32) #1

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DSPCNTR(i32) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

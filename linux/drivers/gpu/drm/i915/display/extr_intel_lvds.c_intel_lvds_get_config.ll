; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_lvds_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_lvds_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_7__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_lvds_encoder = type { i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@LVDS_HSYNC_POLARITY = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@LVDS_VSYNC_POLARITY = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@LVDS_BORDER_ENABLE = common dso_local global i32 0, align 4
@PFIT_CONTROL = common dso_local global i32 0, align 4
@PANEL_8TO6_DITHER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_lvds_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_lvds_get_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_lvds_encoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = call %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_8__* %15)
  store %struct.intel_lvds_encoder* %16, %struct.intel_lvds_encoder** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %6, align 8
  %24 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @I915_READ(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @LVDS_HSYNC_POLARITY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %39

35:                                               ; preds = %2
  %36 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @LVDS_VSYNC_POLARITY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %52

48:                                               ; preds = %39
  %49 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %55 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %61 = call i32 @INTEL_GEN(%struct.drm_i915_private* %60)
  %62 = icmp slt i32 %61, 5
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @LVDS_BORDER_ENABLE, align 4
  %66 = and i32 %64, %65
  %67 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %68 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %52
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %72 = call i32 @INTEL_GEN(%struct.drm_i915_private* %71)
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i32, i32* @PFIT_CONTROL, align 4
  %76 = call i32 @I915_READ(i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @PANEL_8TO6_DITHER_ENABLE, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %81 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %74, %70
  %86 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %87 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %90 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 4
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_8__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

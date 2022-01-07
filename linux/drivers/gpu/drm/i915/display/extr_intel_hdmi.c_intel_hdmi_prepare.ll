; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_hdmi = type { i32 }

@SDVO_ENCODING_HDMI = common dso_local global i32 0, align 4
@HDMI_COLOR_RANGE_16_235 = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@SDVO_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@SDVO_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@HDMI_COLOR_FORMAT_12bpc = common dso_local global i32 0, align 4
@SDVO_COLOR_FORMAT_8bpc = common dso_local global i32 0, align 4
@HDMI_MODE_SELECT_HDMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_hdmi_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_hdmi_prepare(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca %struct.intel_hdmi*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %6, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %18 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.intel_crtc* @to_intel_crtc(i32 %20)
  store %struct.intel_crtc* %21, %struct.intel_crtc** %7, align 8
  %22 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %23 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %22, i32 0, i32 0
  %24 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_4__* %23)
  store %struct.intel_hdmi* %24, %struct.intel_hdmi** %8, align 8
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.drm_display_mode* %27, %struct.drm_display_mode** %9, align 8
  %28 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %29 = call i32 @intel_dp_dual_mode_set_tmds_output(%struct.intel_hdmi* %28, i32 1)
  %30 = load i32, i32* @SDVO_ENCODING_HDMI, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %32 = call i32 @HAS_PCH_SPLIT(%struct.drm_i915_private* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %2
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %36 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @HDMI_COLOR_RANGE_16_235, align 4
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %39, %34, %2
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @SDVO_VSYNC_ACTIVE_HIGH, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @SDVO_HSYNC_ACTIVE_HIGH, align 4
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %61, %54
  %66 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %67 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 24
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @HDMI_COLOR_FORMAT_12bpc, align 4
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %78

74:                                               ; preds = %65
  %75 = load i32, i32* @SDVO_COLOR_FORMAT_8bpc, align 4
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %80 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @HDMI_MODE_SELECT_HDMI, align 4
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %89 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %93 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @SDVO_PIPE_SEL_CPT(i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %117

98:                                               ; preds = %87
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %100 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %104 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @SDVO_PIPE_SEL_CHV(i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %116

109:                                              ; preds = %98
  %110 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %111 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @SDVO_PIPE_SEL(i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %109, %102
  br label %117

117:                                              ; preds = %116, %91
  %118 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %119 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @I915_WRITE(i32 %120, i32 %121)
  %123 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %124 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @POSTING_READ(i32 %125)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_4__*) #1

declare dso_local i32 @intel_dp_dual_mode_set_tmds_output(%struct.intel_hdmi*, i32) #1

declare dso_local i32 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i32 @SDVO_PIPE_SEL_CPT(i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @SDVO_PIPE_SEL_CHV(i32) #1

declare dso_local i32 @SDVO_PIPE_SEL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

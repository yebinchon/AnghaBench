; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.intel_hdmi = type { i32 }
%struct.drm_i915_private = type { i32 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@SDVO_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@SDVO_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@HDMI_MODE_SELECT_HDMI = common dso_local global i32 0, align 4
@HDMI_AUDIO_ENABLE = common dso_local global i32 0, align 4
@HDMI_COLOR_RANGE_16_235 = common dso_local global i32 0, align 4
@SDVO_COLOR_FORMAT_MASK = common dso_local global i32 0, align 4
@HDMI_COLOR_FORMAT_12bpc = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_AVI = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_SPD = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_hdmi_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_hdmi_get_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_hdmi*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 0
  %13 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_8__* %12)
  store %struct.intel_hdmi* %13, %struct.intel_hdmi** %5, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %7, align 8
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %23 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %27 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @I915_READ(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SDVO_HSYNC_ACTIVE_HIGH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SDVO_VSYNC_ACTIVE_HIGH, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %55

51:                                               ; preds = %42
  %52 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @HDMI_MODE_SELECT_HDMI, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %62 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %65 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %66 = call i32 @intel_hdmi_infoframes_enabled(%struct.intel_encoder* %64, %struct.intel_crtc_state* %65)
  %67 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %68 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %73 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %63
  %78 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %79 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %63
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @HDMI_AUDIO_ENABLE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %87 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %86, i32 0, i32 2
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %90 = call i32 @HAS_PCH_SPLIT(%struct.drm_i915_private* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @HDMI_COLOR_RANGE_16_235, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %99 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %98, i32 0, i32 3
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %92, %88
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %103 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %101
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @SDVO_COLOR_FORMAT_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @HDMI_COLOR_FORMAT_12bpc, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %100
  %114 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %115 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %116, 2
  %118 = sdiv i32 %117, 3
  store i32 %118, i32* %10, align 4
  br label %123

119:                                              ; preds = %100
  %120 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %121 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %119, %113
  %124 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %125 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %130 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %10, align 4
  %133 = sdiv i32 %132, %131
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %128, %123
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %137 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %136, i32 0, i32 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 4
  %140 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %141 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %140, i32 0, i32 6
  store i32 4, i32* %141, align 4
  %142 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %143 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %144 = call i32 @intel_hdmi_read_gcp_infoframe(%struct.intel_encoder* %142, %struct.intel_crtc_state* %143)
  %145 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %146 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %147 = load i32, i32* @HDMI_INFOFRAME_TYPE_AVI, align 4
  %148 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %149 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  %151 = call i32 @intel_read_infoframe(%struct.intel_encoder* %145, %struct.intel_crtc_state* %146, i32 %147, i32* %150)
  %152 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %153 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %154 = load i32, i32* @HDMI_INFOFRAME_TYPE_SPD, align 4
  %155 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %156 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %155, i32 0, i32 7
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  %158 = call i32 @intel_read_infoframe(%struct.intel_encoder* %152, %struct.intel_crtc_state* %153, i32 %154, i32* %157)
  %159 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %160 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %161 = load i32, i32* @HDMI_INFOFRAME_TYPE_VENDOR, align 4
  %162 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %163 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = call i32 @intel_read_infoframe(%struct.intel_encoder* %159, %struct.intel_crtc_state* %160, i32 %161, i32* %164)
  ret void
}

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_8__*) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @intel_hdmi_infoframes_enabled(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hdmi_read_gcp_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_read_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

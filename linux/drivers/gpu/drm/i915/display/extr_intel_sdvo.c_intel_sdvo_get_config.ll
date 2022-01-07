; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_sdvo = type { i32 }
%struct.intel_sdvo_dtd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@INTEL_OUTPUT_SDVO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to retrieve SDVO DTD\0A\00", align 1
@PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS = common dso_local global i32 0, align 4
@DTD_FLAG_HSYNC_POSITIVE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DTD_FLAG_VSYNC_POSITIVE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@SDVO_PORT_MULTIPLY_MASK = common dso_local global i32 0, align 4
@SDVO_PORT_MULTIPLY_SHIFT = common dso_local global i32 0, align 4
@SDVO_CMD_GET_CLOCK_RATE_MULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"SDVO pixel multiplier mismatch, port: %i, encoder: %i\0A\00", align 1
@HDMI_COLOR_RANGE_16_235 = common dso_local global i32 0, align 4
@SDVO_CMD_GET_AUDIO_STAT = common dso_local global i32 0, align 4
@SDVO_AUDIO_ELD_VALID = common dso_local global i32 0, align 4
@SDVO_AUDIO_PRESENCE_DETECT = common dso_local global i32 0, align 4
@SDVO_CMD_GET_ENCODE = common dso_local global i32 0, align 4
@SDVO_ENCODE_HDMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_sdvo_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_get_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_sdvo*, align 8
  %8 = alloca %struct.intel_sdvo_dtd, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %5, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %6, align 8
  %22 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %23 = call %struct.intel_sdvo* @to_sdvo(%struct.intel_encoder* %22)
  store %struct.intel_sdvo* %23, %struct.intel_sdvo** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %24 = load i32, i32* @INTEL_OUTPUT_SDVO, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %27 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %31 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @I915_READ(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %35 = call i32 @intel_sdvo_get_input_timing(%struct.intel_sdvo* %34, %struct.intel_sdvo_dtd* %8)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %2
  %39 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS, align 4
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %76

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %8, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DTD_FLAG_HSYNC_POSITIVE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %60

56:                                               ; preds = %45
  %57 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %8, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DTD_FLAG_VSYNC_POSITIVE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %75

71:                                               ; preds = %60
  %72 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %38
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %79 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %77
  store i32 %83, i32* %81, align 4
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %85 = call i64 @IS_I915G(%struct.drm_i915_private* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %76
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %89 = call i64 @IS_I915GM(%struct.drm_i915_private* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %87, %76
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @SDVO_PORT_MULTIPLY_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @SDVO_PORT_MULTIPLY_SHIFT, align 4
  %96 = ashr i32 %94, %95
  %97 = add nsw i32 %96, 1
  %98 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %99 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %91, %87
  %101 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %102 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %10, align 4
  %104 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %105 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %110 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %10, align 4
  %113 = sdiv i32 %112, %111
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %108, %100
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %117 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32 %115, i32* %119, align 4
  %120 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %121 = load i32, i32* @SDVO_CMD_GET_CLOCK_RATE_MULT, align 4
  %122 = call i64 @intel_sdvo_get_value(%struct.intel_sdvo* %120, i32 %121, i32* %13, i32 1)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %114
  %125 = load i32, i32* %13, align 4
  switch i32 %125, label %129 [
    i32 130, label %126
    i32 129, label %127
    i32 128, label %128
  ]

126:                                              ; preds = %124
  store i32 1, i32* %9, align 4
  br label %129

127:                                              ; preds = %124
  store i32 2, i32* %9, align 4
  br label %129

128:                                              ; preds = %124
  store i32 4, i32* %9, align 4
  br label %129

129:                                              ; preds = %124, %128, %127, %126
  br label %130

130:                                              ; preds = %129, %114
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %133 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %131, %134
  %136 = zext i1 %135 to i32
  %137 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %138 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @WARN(i32 %136, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @HDMI_COLOR_RANGE_16_235, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %130
  %147 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %148 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %147, i32 0, i32 2
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %130
  %150 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %151 = load i32, i32* @SDVO_CMD_GET_AUDIO_STAT, align 4
  %152 = call i64 @intel_sdvo_get_value(%struct.intel_sdvo* %150, i32 %151, i32* %13, i32 1)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %149
  %155 = load i32, i32* @SDVO_AUDIO_ELD_VALID, align 4
  %156 = load i32, i32* @SDVO_AUDIO_PRESENCE_DETECT, align 4
  %157 = or i32 %155, %156
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %15, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* %15, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %154
  %164 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %165 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %164, i32 0, i32 3
  store i32 1, i32* %165, align 4
  br label %166

166:                                              ; preds = %163, %154
  br label %167

167:                                              ; preds = %166, %149
  %168 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %169 = load i32, i32* @SDVO_CMD_GET_ENCODE, align 4
  %170 = call i64 @intel_sdvo_get_value(%struct.intel_sdvo* %168, i32 %169, i32* %13, i32 1)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %167
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @SDVO_ENCODE_HDMI, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %178 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %177, i32 0, i32 4
  store i32 1, i32* %178, align 4
  br label %179

179:                                              ; preds = %176, %172
  br label %180

180:                                              ; preds = %179, %167
  %181 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %182 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %183 = call i32 @intel_sdvo_get_avi_infoframe(%struct.intel_sdvo* %181, %struct.intel_crtc_state* %182)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_sdvo* @to_sdvo(%struct.intel_encoder*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @intel_sdvo_get_input_timing(%struct.intel_sdvo*, %struct.intel_sdvo_dtd*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i64 @IS_I915G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I915GM(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_sdvo_get_value(%struct.intel_sdvo*, i32, i32*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @intel_sdvo_get_avi_infoframe(%struct.intel_sdvo*, %struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

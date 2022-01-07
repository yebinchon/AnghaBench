; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_compute_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_compute_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_display_mode, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }
%struct.drm_connector_state = type { i32, i32 }
%struct.intel_sdvo = type { i64, i32 }
%struct.intel_sdvo_connector_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.intel_sdvo_connector = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.drm_display_mode* }

@.str = private unnamed_addr constant [27 x i8] c"forcing bpc to 8 for SDVO\0A\00", align 1
@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@HDMI_AUDIO_OFF_DVI = common dso_local global i64 0, align 8
@HDMI_AUDIO_ON = common dso_local global i64 0, align 8
@HDMI_AUDIO_AUTO = common dso_local global i64 0, align 8
@INTEL_BROADCAST_RGB_AUTO = common dso_local global i64 0, align 8
@INTEL_BROADCAST_RGB_LIMITED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"bad AVI infoframe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_sdvo_compute_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_compute_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.intel_sdvo*, align 8
  %9 = alloca %struct.intel_sdvo_connector_state*, align 8
  %10 = alloca %struct.intel_sdvo_connector*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca %struct.drm_display_mode*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %14 = call %struct.intel_sdvo* @to_sdvo(%struct.intel_encoder* %13)
  store %struct.intel_sdvo* %14, %struct.intel_sdvo** %8, align 8
  %15 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %16 = call %struct.intel_sdvo_connector_state* @to_intel_sdvo_connector_state(%struct.drm_connector_state* %15)
  store %struct.intel_sdvo_connector_state* %16, %struct.intel_sdvo_connector_state** %9, align 8
  %17 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %18 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(i32 %19)
  store %struct.intel_sdvo_connector* %20, %struct.intel_sdvo_connector** %10, align 8
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store %struct.drm_display_mode* %23, %struct.drm_display_mode** %11, align 8
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.drm_display_mode* %26, %struct.drm_display_mode** %12, align 8
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %28, i32 0, i32 0
  store i32 24, i32* %29, align 4
  %30 = load i32, i32* @INTEL_OUTPUT_FORMAT_RGB, align 4
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %32 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %34 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @to_i915(i32 %36)
  %38 = call i64 @HAS_PCH_SPLIT(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %3
  %44 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %45 = call i64 @IS_TV(%struct.intel_sdvo_connector* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %50 = call i32 @intel_sdvo_set_output_timings_from_mode(%struct.intel_sdvo* %48, %struct.drm_display_mode* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %200

55:                                               ; preds = %47
  %56 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %57 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %60 = call i32 @intel_sdvo_get_preferred_input_mode(%struct.intel_sdvo* %56, %struct.intel_sdvo_connector* %57, %struct.drm_display_mode* %58, %struct.drm_display_mode* %59)
  %61 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %62 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  br label %86

63:                                               ; preds = %43
  %64 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %65 = call i64 @IS_LVDS(%struct.intel_sdvo_connector* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %69 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %70 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %72, align 8
  %74 = call i32 @intel_sdvo_set_output_timings_from_mode(%struct.intel_sdvo* %68, %struct.drm_display_mode* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %200

79:                                               ; preds = %67
  %80 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %81 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %84 = call i32 @intel_sdvo_get_preferred_input_mode(%struct.intel_sdvo* %80, %struct.intel_sdvo_connector* %81, %struct.drm_display_mode* %82, %struct.drm_display_mode* %83)
  br label %85

85:                                               ; preds = %79, %63
  br label %86

86:                                               ; preds = %85, %55
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %200

96:                                               ; preds = %86
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %98 = call i32 @intel_sdvo_get_pixel_multiplier(%struct.drm_display_mode* %97)
  %99 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %100 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  %101 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %9, align 8
  %102 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HDMI_AUDIO_OFF_DVI, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %96
  %108 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %109 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %112 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %96
  %114 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %9, align 8
  %115 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @HDMI_AUDIO_ON, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %132, label %120

120:                                              ; preds = %113
  %121 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %9, align 8
  %122 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @HDMI_AUDIO_AUTO, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %129 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127, %113
  %133 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %134 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %133, i32 0, i32 3
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %127, %120
  %136 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %9, align 8
  %137 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @INTEL_BROADCAST_RGB_AUTO, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %135
  %143 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %144 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %149 = call i32 @drm_match_cea_mode(%struct.drm_display_mode* %148)
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %153 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %152, i32 0, i32 4
  store i32 1, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %147, %142
  br label %171

155:                                              ; preds = %135
  %156 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %157 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %155
  %161 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %9, align 8
  %162 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @INTEL_BROADCAST_RGB_LIMITED, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %169 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %168, i32 0, i32 4
  store i32 1, i32* %169, align 4
  br label %170

170:                                              ; preds = %167, %160, %155
  br label %171

171:                                              ; preds = %170, %154
  %172 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %173 = call i64 @IS_TV(%struct.intel_sdvo_connector* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %177 = call i32 @i9xx_adjust_sdvo_tv_clock(%struct.intel_crtc_state* %176)
  br label %178

178:                                              ; preds = %175, %171
  %179 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %180 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %185 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %188 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %183, %178
  %190 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %191 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %192 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %193 = call i32 @intel_sdvo_compute_avi_infoframe(%struct.intel_sdvo* %190, %struct.intel_crtc_state* %191, %struct.drm_connector_state* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %189
  %196 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %4, align 4
  br label %200

199:                                              ; preds = %189
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %199, %195, %93, %76, %52
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local %struct.intel_sdvo* @to_sdvo(%struct.intel_encoder*) #1

declare dso_local %struct.intel_sdvo_connector_state* @to_intel_sdvo_connector_state(%struct.drm_connector_state*) #1

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i64 @HAS_PCH_SPLIT(i32) #1

declare dso_local i32 @to_i915(i32) #1

declare dso_local i64 @IS_TV(%struct.intel_sdvo_connector*) #1

declare dso_local i32 @intel_sdvo_set_output_timings_from_mode(%struct.intel_sdvo*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_sdvo_get_preferred_input_mode(%struct.intel_sdvo*, %struct.intel_sdvo_connector*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i64 @IS_LVDS(%struct.intel_sdvo_connector*) #1

declare dso_local i32 @intel_sdvo_get_pixel_multiplier(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_match_cea_mode(%struct.drm_display_mode*) #1

declare dso_local i32 @i9xx_adjust_sdvo_tv_clock(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_sdvo_compute_avi_infoframe(%struct.intel_sdvo*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_crtc*, %struct.drm_device* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.gma_crtc = type { i32 }
%struct.psb_intel_sdvo = type { i32, i64, i64, i64, i32, %struct.psb_intel_sdvo_dtd, i64 }
%struct.psb_intel_sdvo_dtd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.psb_intel_sdvo_in_out_map = type { i64, i32 }

@SDVO_CMD_SET_IN_OUT_MAP = common dso_local global i32 0, align 4
@SDVO_ENCODE_HDMI = common dso_local global i32 0, align 4
@SDVO_COLORIMETRY_RGB256 = common dso_local global i32 0, align 4
@SDVO_ENCODE_DVI = common dso_local global i32 0, align 4
@SDVO_CLOCK_RATE_MULT_1X = common dso_local global i32 0, align 4
@SDVO_CLOCK_RATE_MULT_2X = common dso_local global i32 0, align 4
@SDVO_CLOCK_RATE_MULT_4X = common dso_local global i32 0, align 4
@SDVOB_PRESERVE_MASK = common dso_local global i32 0, align 4
@SDVOC_PRESERVE_MASK = common dso_local global i32 0, align 4
@SDVO_BORDER_ENABLE = common dso_local global i32 0, align 4
@SDVO_PIPE_B_SELECT = common dso_local global i32 0, align 4
@SDVO_AUDIO_ENABLE = common dso_local global i32 0, align 4
@SDVO_NEED_TO_STALL = common dso_local global i32 0, align 4
@SDVO_STALL_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @psb_intel_sdvo_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_sdvo_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.gma_crtc*, align 8
  %10 = alloca %struct.psb_intel_sdvo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.psb_intel_sdvo_in_out_map, align 8
  %13 = alloca %struct.psb_intel_sdvo_dtd, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %17, i32 0, i32 1
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %7, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %21, align 8
  store %struct.drm_crtc* %22, %struct.drm_crtc** %8, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %24 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %23)
  store %struct.gma_crtc* %24, %struct.gma_crtc** %9, align 8
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %26 = call %struct.psb_intel_sdvo* @to_psb_intel_sdvo(%struct.drm_encoder* %25)
  store %struct.psb_intel_sdvo* %26, %struct.psb_intel_sdvo** %10, align 8
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %28 = call i32 @psb_intel_mode_get_pixel_multiplier(%struct.drm_display_mode* %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %30 = call i64 @IS_MRST(%struct.drm_device* %29)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %16, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = icmp ne %struct.drm_display_mode* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %3
  br label %193

37:                                               ; preds = %3
  %38 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %39 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.psb_intel_sdvo_in_out_map, %struct.psb_intel_sdvo_in_out_map* %12, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.psb_intel_sdvo_in_out_map, %struct.psb_intel_sdvo_in_out_map* %12, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %44 = load i32, i32* @SDVO_CMD_SET_IN_OUT_MAP, align 4
  %45 = call i32 @psb_intel_sdvo_set_value(%struct.psb_intel_sdvo* %43, i32 %44, %struct.psb_intel_sdvo_in_out_map* %12, i32 16)
  %46 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %47 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %48 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @psb_intel_sdvo_set_target_output(%struct.psb_intel_sdvo* %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %37
  br label %193

53:                                               ; preds = %37
  %54 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %55 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %60 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58, %53
  %64 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %65 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %64, i32 0, i32 5
  %66 = bitcast %struct.psb_intel_sdvo_dtd* %13 to i8*
  %67 = bitcast %struct.psb_intel_sdvo_dtd* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  br label %81

68:                                               ; preds = %58
  %69 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %70 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %71 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @psb_intel_sdvo_set_target_output(%struct.psb_intel_sdvo* %69, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  br label %193

76:                                               ; preds = %68
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %78 = call i32 @psb_intel_sdvo_get_dtd_from_mode(%struct.psb_intel_sdvo_dtd* %13, %struct.drm_display_mode* %77)
  %79 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %80 = call i32 @psb_intel_sdvo_set_output_timing(%struct.psb_intel_sdvo* %79, %struct.psb_intel_sdvo_dtd* %13)
  br label %81

81:                                               ; preds = %76, %63
  %82 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %83 = call i32 @psb_intel_sdvo_set_target_input(%struct.psb_intel_sdvo* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  br label %193

86:                                               ; preds = %81
  %87 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %88 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %93 = load i32, i32* @SDVO_ENCODE_HDMI, align 4
  %94 = call i32 @psb_intel_sdvo_set_encode(%struct.psb_intel_sdvo* %92, i32 %93)
  %95 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %96 = load i32, i32* @SDVO_COLORIMETRY_RGB256, align 4
  %97 = call i32 @psb_intel_sdvo_set_colorimetry(%struct.psb_intel_sdvo* %95, i32 %96)
  %98 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %99 = call i32 @psb_intel_sdvo_set_avi_infoframe(%struct.psb_intel_sdvo* %98)
  br label %104

100:                                              ; preds = %86
  %101 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %102 = load i32, i32* @SDVO_ENCODE_DVI, align 4
  %103 = call i32 @psb_intel_sdvo_set_encode(%struct.psb_intel_sdvo* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %91
  %105 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %106 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %111 = call i32 @psb_intel_sdvo_set_tv_format(%struct.psb_intel_sdvo* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  br label %193

114:                                              ; preds = %109, %104
  %115 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %116 = call i32 @psb_intel_sdvo_set_input_timing(%struct.psb_intel_sdvo* %115, %struct.psb_intel_sdvo_dtd* %13)
  %117 = load i32, i32* %14, align 4
  switch i32 %117, label %118 [
    i32 1, label %119
    i32 2, label %121
    i32 4, label %123
  ]

118:                                              ; preds = %114
  br label %119

119:                                              ; preds = %114, %118
  %120 = load i32, i32* @SDVO_CLOCK_RATE_MULT_1X, align 4
  store i32 %120, i32* %15, align 4
  br label %125

121:                                              ; preds = %114
  %122 = load i32, i32* @SDVO_CLOCK_RATE_MULT_2X, align 4
  store i32 %122, i32* %15, align 4
  br label %125

123:                                              ; preds = %114
  %124 = load i32, i32* @SDVO_CLOCK_RATE_MULT_4X, align 4
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %123, %121, %119
  %126 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @psb_intel_sdvo_set_clock_rate_mult(%struct.psb_intel_sdvo* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  br label %193

131:                                              ; preds = %125
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %136 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @REG_READ_AUX(i32 %137)
  store i32 %138, i32* %11, align 4
  br label %144

139:                                              ; preds = %131
  %140 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %141 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @REG_READ(i32 %142)
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %139, %134
  %145 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %146 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  switch i32 %147, label %156 [
    i32 129, label %148
    i32 128, label %152
  ]

148:                                              ; preds = %144
  %149 = load i32, i32* @SDVOB_PRESERVE_MASK, align 4
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %11, align 4
  br label %156

152:                                              ; preds = %144
  %153 = load i32, i32* @SDVOC_PRESERVE_MASK, align 4
  %154 = load i32, i32* %11, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %144, %152, %148
  %157 = load i32, i32* @SDVO_BORDER_ENABLE, align 4
  %158 = or i32 4718592, %157
  %159 = load i32, i32* %11, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %11, align 4
  %161 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %162 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %169

165:                                              ; preds = %156
  %166 = load i32, i32* @SDVO_PIPE_B_SELECT, align 4
  %167 = load i32, i32* %11, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %11, align 4
  br label %169

169:                                              ; preds = %165, %156
  %170 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %171 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i32, i32* @SDVO_AUDIO_ENABLE, align 4
  %176 = load i32, i32* %11, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %11, align 4
  br label %178

178:                                              ; preds = %174, %169
  %179 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %13, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @SDVO_NEED_TO_STALL, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load i32, i32* @SDVO_STALL_SELECT, align 4
  %187 = load i32, i32* %11, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %11, align 4
  br label %189

189:                                              ; preds = %185, %178
  %190 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %10, align 8
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @psb_intel_sdvo_write_sdvox(%struct.psb_intel_sdvo* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %130, %113, %85, %75, %52, %36
  ret void
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.psb_intel_sdvo* @to_psb_intel_sdvo(%struct.drm_encoder*) #1

declare dso_local i32 @psb_intel_mode_get_pixel_multiplier(%struct.drm_display_mode*) #1

declare dso_local i64 @IS_MRST(%struct.drm_device*) #1

declare dso_local i32 @psb_intel_sdvo_set_value(%struct.psb_intel_sdvo*, i32, %struct.psb_intel_sdvo_in_out_map*, i32) #1

declare dso_local i32 @psb_intel_sdvo_set_target_output(%struct.psb_intel_sdvo*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @psb_intel_sdvo_get_dtd_from_mode(%struct.psb_intel_sdvo_dtd*, %struct.drm_display_mode*) #1

declare dso_local i32 @psb_intel_sdvo_set_output_timing(%struct.psb_intel_sdvo*, %struct.psb_intel_sdvo_dtd*) #1

declare dso_local i32 @psb_intel_sdvo_set_target_input(%struct.psb_intel_sdvo*) #1

declare dso_local i32 @psb_intel_sdvo_set_encode(%struct.psb_intel_sdvo*, i32) #1

declare dso_local i32 @psb_intel_sdvo_set_colorimetry(%struct.psb_intel_sdvo*, i32) #1

declare dso_local i32 @psb_intel_sdvo_set_avi_infoframe(%struct.psb_intel_sdvo*) #1

declare dso_local i32 @psb_intel_sdvo_set_tv_format(%struct.psb_intel_sdvo*) #1

declare dso_local i32 @psb_intel_sdvo_set_input_timing(%struct.psb_intel_sdvo*, %struct.psb_intel_sdvo_dtd*) #1

declare dso_local i32 @psb_intel_sdvo_set_clock_rate_mult(%struct.psb_intel_sdvo*, i32) #1

declare dso_local i32 @REG_READ_AUX(i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @psb_intel_sdvo_write_sdvox(%struct.psb_intel_sdvo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

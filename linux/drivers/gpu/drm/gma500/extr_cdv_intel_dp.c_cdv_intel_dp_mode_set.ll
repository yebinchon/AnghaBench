; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device*, %struct.drm_crtc* }
%struct.drm_device = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_display_mode = type { i32, i64, i64 }
%struct.gma_encoder = type { %struct.cdv_intel_dp* }
%struct.cdv_intel_dp = type { i32, i32, i32, i32*, i32, i32*, i32, i64 }
%struct.gma_crtc = type { i32 }

@DP_VOLTAGE_0_4 = common dso_local global i32 0, align 4
@DP_PRE_EMPHASIS_0 = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DP_SYNC_HS_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DP_SYNC_VS_HIGH = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_OFF = common dso_local global i32 0, align 4
@DP_PORT_WIDTH_1 = common dso_local global i32 0, align 4
@DP_PORT_WIDTH_2 = common dso_local global i32 0, align 4
@DP_PORT_WIDTH_4 = common dso_local global i32 0, align 4
@DP_AUDIO_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@DP_LINK_CONFIGURATION_SIZE = common dso_local global i32 0, align 4
@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_MAX_LANE_COUNT = common dso_local global i64 0, align 8
@DP_ENHANCED_FRAME_CAP = common dso_local global i32 0, align 4
@DP_LANE_COUNT_ENHANCED_FRAME_EN = common dso_local global i32 0, align 4
@DP_ENHANCED_FRAMING = common dso_local global i32 0, align 4
@DP_PIPEB_SELECT = common dso_local global i32 0, align 4
@DP_PORT_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"DP expected reg is %x\0A\00", align 1
@PFIT_ENABLE = common dso_local global i32 0, align 4
@PFIT_PIPE_SHIFT = common dso_local global i32 0, align 4
@PFIT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @cdv_intel_dp_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_dp_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.gma_encoder*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.gma_crtc*, align 8
  %10 = alloca %struct.cdv_intel_dp*, align 8
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %14 = call %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder* %13)
  store %struct.gma_encoder* %14, %struct.gma_encoder** %7, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 1
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %16, align 8
  store %struct.drm_crtc* %17, %struct.drm_crtc** %8, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %19 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %18)
  store %struct.gma_crtc* %19, %struct.gma_crtc** %9, align 8
  %20 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %21 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %20, i32 0, i32 0
  %22 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %21, align 8
  store %struct.cdv_intel_dp* %22, %struct.cdv_intel_dp** %10, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %24 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %23, i32 0, i32 0
  %25 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  store %struct.drm_device* %25, %struct.drm_device** %11, align 8
  %26 = load i32, i32* @DP_VOLTAGE_0_4, align 4
  %27 = load i32, i32* @DP_PRE_EMPHASIS_0, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %30 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %32 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %35 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %3
  %45 = load i32, i32* @DP_SYNC_HS_HIGH, align 4
  %46 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %47 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %3
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, i32* @DP_SYNC_VS_HIGH, align 4
  %59 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %60 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %50
  %64 = load i32, i32* @DP_LINK_TRAIN_OFF, align 4
  %65 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %66 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %70 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %90 [
    i32 1, label %72
    i32 2, label %78
    i32 4, label %84
  ]

72:                                               ; preds = %63
  %73 = load i32, i32* @DP_PORT_WIDTH_1, align 4
  %74 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %75 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %90

78:                                               ; preds = %63
  %79 = load i32, i32* @DP_PORT_WIDTH_2, align 4
  %80 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %81 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %90

84:                                               ; preds = %63
  %85 = load i32, i32* @DP_PORT_WIDTH_4, align 4
  %86 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %87 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %63, %84, %78, %72
  %91 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %92 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @DP_AUDIO_OUTPUT_ENABLE, align 4
  %97 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %98 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %90
  %102 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %103 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @DP_LINK_CONFIGURATION_SIZE, align 4
  %106 = call i32 @memset(i32* %104, i32 0, i32 %105)
  %107 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %108 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %111 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %109, i32* %113, align 4
  %114 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %115 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %118 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 %116, i32* %120, align 4
  %121 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %122 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @DP_DPCD_REV, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp sge i32 %126, 17
  br i1 %127, label %128, label %151

128:                                              ; preds = %101
  %129 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %130 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @DP_MAX_LANE_COUNT, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @DP_ENHANCED_FRAME_CAP, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %128
  %139 = load i32, i32* @DP_LANE_COUNT_ENHANCED_FRAME_EN, align 4
  %140 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %141 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %139
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* @DP_ENHANCED_FRAMING, align 4
  %147 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %148 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %138, %128, %101
  %152 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %153 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load i32, i32* @DP_PIPEB_SELECT, align 4
  %158 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %159 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %156, %151
  %163 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %164 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %167 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @DP_PORT_EN, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @REG_WRITE(i32 %165, i32 %170)
  %172 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %173 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %174)
  %176 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %177 = call i64 @is_edp(%struct.gma_encoder* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %211

179:                                              ; preds = %162
  %180 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %181 = call i32 @cdv_intel_edp_panel_on(%struct.gma_encoder* %180)
  %182 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %183 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %186 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %184, %187
  br i1 %188, label %197, label %189

189:                                              ; preds = %179
  %190 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %191 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %194 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %192, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %189, %179
  %198 = load i32, i32* @PFIT_ENABLE, align 4
  store i32 %198, i32* %12, align 4
  br label %200

199:                                              ; preds = %189
  store i32 0, i32* %12, align 4
  br label %200

200:                                              ; preds = %199, %197
  %201 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %202 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @PFIT_PIPE_SHIFT, align 4
  %205 = shl i32 %203, %204
  %206 = load i32, i32* %12, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* @PFIT_CONTROL, align 4
  %209 = load i32, i32* %12, align 4
  %210 = call i32 @REG_WRITE(i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %200, %162
  ret void
}

declare dso_local %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i64 @is_edp(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_panel_on(%struct.gma_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_lvds_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_lvds_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, i64 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_crtc = type { i64 }
%struct.radeon_encoder = type { i64, i64, i32 }
%struct.radeon_encoder_lvds = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RADEON_LVDS_PLL_CNTL = common dso_local global i32 0, align 4
@RADEON_LVDS_PLL_EN = common dso_local global i32 0, align 4
@RADEON_LVDS_SS_GEN_CNTL = common dso_local global i32 0, align 4
@PANEL_ENCODER_ACTION_ENABLE = common dso_local global i32 0, align 4
@RADEON_LVDS_GEN_CNTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"bios LVDS_GEN_CNTL: 0x%x\0A\00", align 1
@RADEON_LVDS_PWRSEQ_DELAY1_SHIFT = common dso_local global i32 0, align 4
@RADEON_LVDS_PWRSEQ_DELAY2_SHIFT = common dso_local global i32 0, align 4
@RADEON_LVDS_DISPLAY_DIS = common dso_local global i32 0, align 4
@RADEON_LVDS_ON = common dso_local global i32 0, align 4
@RADEON_LVDS_BLON = common dso_local global i32 0, align 4
@RADEON_LVDS_EN = common dso_local global i32 0, align 4
@RADEON_LVDS_RST_FM = common dso_local global i32 0, align 4
@R300_LVDS_SRC_SEL_MASK = common dso_local global i32 0, align 4
@RMX_OFF = common dso_local global i64 0, align 8
@R300_LVDS_SRC_SEL_RMX = common dso_local global i32 0, align 4
@RADEON_LVDS_SEL_CRTC2 = common dso_local global i32 0, align 4
@R300_LVDS_SRC_SEL_CRTC2 = common dso_local global i32 0, align 4
@CHIP_RV410 = common dso_local global i64 0, align 8
@RADEON_CLOCK_CNTL_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @radeon_legacy_lvds_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_legacy_lvds_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_crtc*, align 8
  %10 = alloca %struct.radeon_encoder*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.radeon_encoder_lvds*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 1
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %7, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %8, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %23)
  store %struct.radeon_crtc* %24, %struct.radeon_crtc** %9, align 8
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %26 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %25)
  store %struct.radeon_encoder* %26, %struct.radeon_encoder** %10, align 8
  %27 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @RADEON_LVDS_PLL_CNTL, align 4
  %29 = call i32 @RREG32(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @RADEON_LVDS_PLL_EN, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @RADEON_LVDS_SS_GEN_CNTL, align 4
  %35 = call i32 @RREG32(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %3
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %45 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %47 = load i32, i32* @PANEL_ENCODER_ACTION_ENABLE, align 4
  %48 = call i32 @atombios_digital_setup(%struct.drm_encoder* %46, i32 %47)
  %49 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %50 = call i32 @RREG32(i32 %49)
  store i32 %50, i32* %12, align 4
  br label %91

51:                                               ; preds = %3
  %52 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %53 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.radeon_encoder_lvds*
  store %struct.radeon_encoder_lvds* %55, %struct.radeon_encoder_lvds** %14, align 8
  %56 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %14, align 8
  %57 = icmp ne %struct.radeon_encoder_lvds* %56, null
  br i1 %57, label %58, label %87

58:                                               ; preds = %51
  %59 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %14, align 8
  %60 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %14, align 8
  %64 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* @RADEON_LVDS_PWRSEQ_DELAY1_SHIFT, align 4
  %67 = shl i32 15, %66
  %68 = load i32, i32* @RADEON_LVDS_PWRSEQ_DELAY2_SHIFT, align 4
  %69 = shl i32 15, %68
  %70 = or i32 %67, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %13, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %14, align 8
  %75 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RADEON_LVDS_PWRSEQ_DELAY1_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %14, align 8
  %80 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @RADEON_LVDS_PWRSEQ_DELAY2_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = or i32 %78, %83
  %85 = load i32, i32* %13, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %13, align 4
  br label %90

87:                                               ; preds = %51
  %88 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %89 = call i32 @RREG32(i32 %88)
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %87, %58
  br label %91

91:                                               ; preds = %90, %40
  %92 = load i32, i32* @RADEON_LVDS_DISPLAY_DIS, align 4
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* @RADEON_LVDS_ON, align 4
  %96 = load i32, i32* @RADEON_LVDS_BLON, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @RADEON_LVDS_EN, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @RADEON_LVDS_RST_FM, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %12, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %106 = call i64 @ASIC_IS_R300(%struct.radeon_device* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %91
  %109 = load i32, i32* @R300_LVDS_SRC_SEL_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %11, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %108, %91
  %114 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %115 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %113
  %119 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %120 = call i64 @ASIC_IS_R300(%struct.radeon_device* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %118
  %123 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %124 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @RMX_OFF, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* @R300_LVDS_SRC_SEL_RMX, align 4
  %130 = load i32, i32* %11, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %128, %122
  br label %138

133:                                              ; preds = %118
  %134 = load i32, i32* @RADEON_LVDS_SEL_CRTC2, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %12, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %133, %132
  br label %152

139:                                              ; preds = %113
  %140 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %141 = call i64 @ASIC_IS_R300(%struct.radeon_device* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* @R300_LVDS_SRC_SEL_CRTC2, align 4
  %145 = load i32, i32* %11, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %11, align 4
  br label %151

147:                                              ; preds = %139
  %148 = load i32, i32* @RADEON_LVDS_SEL_CRTC2, align 4
  %149 = load i32, i32* %12, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151, %138
  %153 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @WREG32(i32 %153, i32 %154)
  %156 = load i32, i32* @RADEON_LVDS_PLL_CNTL, align 4
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @WREG32(i32 %156, i32 %157)
  %159 = load i32, i32* @RADEON_LVDS_SS_GEN_CNTL, align 4
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @WREG32(i32 %159, i32 %160)
  %162 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @CHIP_RV410, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %152
  %168 = load i32, i32* @RADEON_CLOCK_CNTL_INDEX, align 4
  %169 = call i32 @WREG32(i32 %168, i32 0)
  br label %170

170:                                              ; preds = %167, %152
  %171 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %172 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %177 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %178 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @radeon_atombios_encoder_crtc_scratch_regs(%struct.drm_encoder* %176, i64 %179)
  br label %187

181:                                              ; preds = %170
  %182 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %183 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %184 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @radeon_combios_encoder_crtc_scratch_regs(%struct.drm_encoder* %182, i64 %185)
  br label %187

187:                                              ; preds = %181, %175
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @atombios_digital_setup(%struct.drm_encoder*, i32) #1

declare dso_local i64 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_atombios_encoder_crtc_scratch_regs(%struct.drm_encoder*, i64) #1

declare dso_local i32 @radeon_combios_encoder_crtc_scratch_regs(%struct.drm_encoder*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

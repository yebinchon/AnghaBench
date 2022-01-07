; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_primary_dac_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_primary_dac_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, i64 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_crtc = type { i64 }
%struct.radeon_encoder = type { i64 }
%struct.radeon_encoder_primary_dac = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CHIP_R200 = common dso_local global i64 0, align 8
@RADEON_DISP_OUTPUT_CNTL = common dso_local global i32 0, align 4
@RADEON_DISP_DAC_SOURCE_MASK = common dso_local global i32 0, align 4
@RADEON_DAC_CNTL2 = common dso_local global i32 0, align 4
@RADEON_DAC2_DAC_CLK_SEL = common dso_local global i32 0, align 4
@RADEON_DISP_DAC_SOURCE_CRTC2 = common dso_local global i32 0, align 4
@RADEON_DAC_MASK_ALL = common dso_local global i32 0, align 4
@RADEON_DAC_VGA_ADR_EN = common dso_local global i32 0, align 4
@RADEON_DAC_8BIT_EN = common dso_local global i32 0, align 4
@RADEON_DAC_CNTL = common dso_local global i32 0, align 4
@RADEON_DAC_RANGE_CNTL = common dso_local global i32 0, align 4
@RADEON_DAC_BLANKING = common dso_local global i32 0, align 4
@RADEON_DAC_MACRO_CNTL = common dso_local global i32 0, align 4
@RADEON_DAC_PDWN_R = common dso_local global i32 0, align 4
@RADEON_DAC_PDWN_G = common dso_local global i32 0, align 4
@RADEON_DAC_PDWN_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @radeon_legacy_primary_dac_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_legacy_primary_dac_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca %struct.radeon_encoder_primary_dac*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 1
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %7, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.radeon_device*, %struct.radeon_device** %20, align 8
  store %struct.radeon_device* %21, %struct.radeon_device** %8, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %23 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %24)
  store %struct.radeon_crtc* %25, %struct.radeon_crtc** %9, align 8
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %27 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %26)
  store %struct.radeon_encoder* %27, %struct.radeon_encoder** %10, align 8
  %28 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %30 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %3
  %34 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CHIP_R200, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %41 = call i64 @ASIC_IS_R300(%struct.radeon_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39, %33
  %44 = load i32, i32* @RADEON_DISP_OUTPUT_CNTL, align 4
  %45 = call i32 @RREG32(i32 %44)
  %46 = load i32, i32* @RADEON_DISP_DAC_SOURCE_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @RADEON_DISP_OUTPUT_CNTL, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @WREG32(i32 %49, i32 %50)
  br label %61

52:                                               ; preds = %39
  %53 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %54 = call i32 @RREG32(i32 %53)
  %55 = load i32, i32* @RADEON_DAC2_DAC_CLK_SEL, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @WREG32(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %52, %43
  br label %93

62:                                               ; preds = %3
  %63 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CHIP_R200, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %70 = call i64 @ASIC_IS_R300(%struct.radeon_device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %68, %62
  %73 = load i32, i32* @RADEON_DISP_OUTPUT_CNTL, align 4
  %74 = call i32 @RREG32(i32 %73)
  %75 = load i32, i32* @RADEON_DISP_DAC_SOURCE_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* @RADEON_DISP_DAC_SOURCE_CRTC2, align 4
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* @RADEON_DISP_OUTPUT_CNTL, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @WREG32(i32 %81, i32 %82)
  br label %92

84:                                               ; preds = %68
  %85 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %86 = call i32 @RREG32(i32 %85)
  %87 = load i32, i32* @RADEON_DAC2_DAC_CLK_SEL, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @WREG32(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %72
  br label %93

93:                                               ; preds = %92, %61
  %94 = load i32, i32* @RADEON_DAC_MASK_ALL, align 4
  %95 = load i32, i32* @RADEON_DAC_VGA_ADR_EN, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @RADEON_DAC_8BIT_EN, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* @RADEON_DAC_CNTL, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @RADEON_DAC_RANGE_CNTL, align 4
  %102 = load i32, i32* @RADEON_DAC_BLANKING, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @WREG32_P(i32 %99, i32 %100, i32 %103)
  %105 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %106 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %93
  %110 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %111 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.radeon_encoder_primary_dac*
  store %struct.radeon_encoder_primary_dac* %113, %struct.radeon_encoder_primary_dac** %15, align 8
  %114 = load %struct.radeon_encoder_primary_dac*, %struct.radeon_encoder_primary_dac** %15, align 8
  %115 = getelementptr inbounds %struct.radeon_encoder_primary_dac, %struct.radeon_encoder_primary_dac* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %14, align 4
  br label %120

117:                                              ; preds = %93
  %118 = load i32, i32* @RADEON_DAC_MACRO_CNTL, align 4
  %119 = call i32 @RREG32(i32 %118)
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %117, %109
  %121 = load i32, i32* @RADEON_DAC_PDWN_R, align 4
  %122 = load i32, i32* @RADEON_DAC_PDWN_G, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @RADEON_DAC_PDWN_B, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %14, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* @RADEON_DAC_MACRO_CNTL, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @WREG32(i32 %128, i32 %129)
  %131 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %120
  %136 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %137 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %138 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @radeon_atombios_encoder_crtc_scratch_regs(%struct.drm_encoder* %136, i64 %139)
  br label %147

141:                                              ; preds = %120
  %142 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %143 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %144 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @radeon_combios_encoder_crtc_scratch_regs(%struct.drm_encoder* %142, i64 %145)
  br label %147

147:                                              ; preds = %141, %135
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i64 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @radeon_atombios_encoder_crtc_scratch_regs(%struct.drm_encoder*, i64) #1

declare dso_local i32 @radeon_combios_encoder_crtc_scratch_regs(%struct.drm_encoder*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

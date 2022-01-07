; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_ext_dac_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_ext_dac_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_connector = type { i32 }

@RADEON_GPIO_MONID = common dso_local global i32 0, align 4
@RADEON_FP2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_DISP_OUTPUT_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_DISP_LIN_TRANS_GRPH_A = common dso_local global i32 0, align 4
@RADEON_DISP_LIN_TRANS_GRPH_B = common dso_local global i32 0, align 4
@RADEON_DISP_LIN_TRANS_GRPH_C = common dso_local global i32 0, align 4
@RADEON_DISP_LIN_TRANS_GRPH_D = common dso_local global i32 0, align 4
@RADEON_DISP_LIN_TRANS_GRPH_E = common dso_local global i32 0, align 4
@RADEON_DISP_LIN_TRANS_GRPH_F = common dso_local global i32 0, align 4
@RADEON_CRTC2_H_TOTAL_DISP = common dso_local global i32 0, align 4
@RADEON_CRTC2_V_TOTAL_DISP = common dso_local global i32 0, align 4
@RADEON_CRTC2_H_SYNC_STRT_WID = common dso_local global i32 0, align 4
@RADEON_CRTC2_V_SYNC_STRT_WID = common dso_local global i32 0, align 4
@RADEON_GPIO_A_0 = common dso_local global i32 0, align 4
@RADEON_FP2_ON = common dso_local global i32 0, align 4
@RADEON_FP2_PANEL_FORMAT = common dso_local global i32 0, align 4
@R200_FP2_SOURCE_SEL_TRANS_UNIT = common dso_local global i32 0, align 4
@RADEON_FP2_DVO_EN = common dso_local global i32 0, align 4
@R200_FP2_DVO_RATE_SEL_SDR = common dso_local global i32 0, align 4
@RADEON_DISP_DAC_SOURCE_RMX = common dso_local global i32 0, align 4
@RADEON_DISP_TRANS_MATRIX_GRAPHICS = common dso_local global i32 0, align 4
@RADEON_CRTC2_EN = common dso_local global i32 0, align 4
@RADEON_CRTC2_DISP_REQ_EN_B = common dso_local global i32 0, align 4
@RADEON_GPIO_Y_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @radeon_legacy_ext_dac_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_legacy_ext_dac_detect(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %25 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %24, i32 0, i32 0
  %26 = load %struct.drm_device*, %struct.drm_device** %25, align 8
  store %struct.drm_device* %26, %struct.drm_device** %5, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load %struct.radeon_device*, %struct.radeon_device** %28, align 8
  store %struct.radeon_device* %29, %struct.radeon_device** %6, align 8
  store i32 0, i32* %22, align 4
  %30 = load i32, i32* @RADEON_GPIO_MONID, align 4
  %31 = call i32 @RREG32(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %33 = call i32 @RREG32(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @RADEON_DISP_OUTPUT_CNTL, align 4
  %35 = call i32 @RREG32(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %37 = call i32 @RREG32(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_A, align 4
  %39 = call i32 @RREG32(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_B, align 4
  %41 = call i32 @RREG32(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_C, align 4
  %43 = call i32 @RREG32(i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_D, align 4
  %45 = call i32 @RREG32(i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_E, align 4
  %47 = call i32 @RREG32(i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_F, align 4
  %49 = call i32 @RREG32(i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* @RADEON_CRTC2_H_TOTAL_DISP, align 4
  %51 = call i32 @RREG32(i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* @RADEON_CRTC2_V_TOTAL_DISP, align 4
  %53 = call i32 @RREG32(i32 %52)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* @RADEON_CRTC2_H_SYNC_STRT_WID, align 4
  %55 = call i32 @RREG32(i32 %54)
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* @RADEON_CRTC2_V_SYNC_STRT_WID, align 4
  %57 = call i32 @RREG32(i32 %56)
  store i32 %57, i32* %21, align 4
  %58 = load i32, i32* @RADEON_GPIO_MONID, align 4
  %59 = call i32 @RREG32(i32 %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* @RADEON_GPIO_A_0, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %17, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* @RADEON_GPIO_MONID, align 4
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @WREG32(i32 %64, i32 %65)
  %67 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %68 = load i32, i32* @RADEON_FP2_ON, align 4
  %69 = load i32, i32* @RADEON_FP2_PANEL_FORMAT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @R200_FP2_SOURCE_SEL_TRANS_UNIT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @RADEON_FP2_DVO_EN, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @R200_FP2_DVO_RATE_SEL_SDR, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @WREG32(i32 %67, i32 %76)
  %78 = load i32, i32* @RADEON_DISP_OUTPUT_CNTL, align 4
  %79 = load i32, i32* @RADEON_DISP_DAC_SOURCE_RMX, align 4
  %80 = load i32, i32* @RADEON_DISP_TRANS_MATRIX_GRAPHICS, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @WREG32(i32 %78, i32 %81)
  %83 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %84 = load i32, i32* @RADEON_CRTC2_EN, align 4
  %85 = load i32, i32* @RADEON_CRTC2_DISP_REQ_EN_B, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @WREG32(i32 %83, i32 %86)
  %88 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_A, align 4
  %89 = call i32 @WREG32(i32 %88, i32 0)
  %90 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_B, align 4
  %91 = call i32 @WREG32(i32 %90, i32 1008)
  %92 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_C, align 4
  %93 = call i32 @WREG32(i32 %92, i32 0)
  %94 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_D, align 4
  %95 = call i32 @WREG32(i32 %94, i32 1008)
  %96 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_E, align 4
  %97 = call i32 @WREG32(i32 %96, i32 0)
  %98 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_F, align 4
  %99 = call i32 @WREG32(i32 %98, i32 1008)
  %100 = load i32, i32* @RADEON_CRTC2_H_TOTAL_DISP, align 4
  %101 = call i32 @WREG32(i32 %100, i32 16777224)
  %102 = load i32, i32* @RADEON_CRTC2_H_SYNC_STRT_WID, align 4
  %103 = call i32 @WREG32(i32 %102, i32 2048)
  %104 = load i32, i32* @RADEON_CRTC2_V_TOTAL_DISP, align 4
  %105 = call i32 @WREG32(i32 %104, i32 524289)
  %106 = load i32, i32* @RADEON_CRTC2_V_SYNC_STRT_WID, align 4
  %107 = call i32 @WREG32(i32 %106, i32 128)
  store i32 0, i32* %23, align 4
  br label %108

108:                                              ; preds = %131, %2
  %109 = load i32, i32* %23, align 4
  %110 = icmp slt i32 %109, 200
  br i1 %110, label %111, label %134

111:                                              ; preds = %108
  %112 = load i32, i32* @RADEON_GPIO_MONID, align 4
  %113 = call i32 @RREG32(i32 %112)
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* @RADEON_GPIO_Y_0, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 1, i32* %22, align 4
  br label %119

119:                                              ; preds = %118, %111
  %120 = load i32, i32* %22, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %134

123:                                              ; preds = %119
  %124 = call i32 (...) @drm_can_sleep()
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = call i32 @mdelay(i32 1)
  br label %130

128:                                              ; preds = %123
  %129 = call i32 @msleep(i32 1)
  br label %130

130:                                              ; preds = %128, %126
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %23, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %23, align 4
  br label %108

134:                                              ; preds = %122, %108
  %135 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_A, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @WREG32(i32 %135, i32 %136)
  %138 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_B, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @WREG32(i32 %138, i32 %139)
  %141 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_C, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @WREG32(i32 %141, i32 %142)
  %144 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_D, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @WREG32(i32 %144, i32 %145)
  %147 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_E, align 4
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @WREG32(i32 %147, i32 %148)
  %150 = load i32, i32* @RADEON_DISP_LIN_TRANS_GRPH_F, align 4
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @WREG32(i32 %150, i32 %151)
  %153 = load i32, i32* @RADEON_CRTC2_H_TOTAL_DISP, align 4
  %154 = load i32, i32* %18, align 4
  %155 = call i32 @WREG32(i32 %153, i32 %154)
  %156 = load i32, i32* @RADEON_CRTC2_V_TOTAL_DISP, align 4
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @WREG32(i32 %156, i32 %157)
  %159 = load i32, i32* @RADEON_CRTC2_H_SYNC_STRT_WID, align 4
  %160 = load i32, i32* %20, align 4
  %161 = call i32 @WREG32(i32 %159, i32 %160)
  %162 = load i32, i32* @RADEON_CRTC2_V_SYNC_STRT_WID, align 4
  %163 = load i32, i32* %21, align 4
  %164 = call i32 @WREG32(i32 %162, i32 %163)
  %165 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @WREG32(i32 %165, i32 %166)
  %168 = load i32, i32* @RADEON_DISP_OUTPUT_CNTL, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @WREG32(i32 %168, i32 %169)
  %171 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @WREG32(i32 %171, i32 %172)
  %174 = load i32, i32* @RADEON_GPIO_MONID, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @WREG32(i32 %174, i32 %175)
  %177 = load i32, i32* %22, align 4
  ret i32 %177
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @drm_can_sleep(...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

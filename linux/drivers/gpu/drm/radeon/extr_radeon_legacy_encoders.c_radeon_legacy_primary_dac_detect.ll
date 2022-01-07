; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_primary_dac_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_primary_dac_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_connector = type { i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@RADEON_VCLK_ECP_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_EXT_CNTL = common dso_local global i32 0, align 4
@RADEON_DAC_EXT_CNTL = common dso_local global i32 0, align 4
@RADEON_DAC_CNTL = common dso_local global i32 0, align 4
@RADEON_DAC_MACRO_CNTL = common dso_local global i32 0, align 4
@RADEON_PIXCLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@RADEON_PIXCLK_DAC_ALWAYS_ONb = common dso_local global i32 0, align 4
@RADEON_CRTC_CRT_ON = common dso_local global i32 0, align 4
@RADEON_DAC_FORCE_BLANK_OFF_EN = common dso_local global i32 0, align 4
@RADEON_DAC_FORCE_DATA_EN = common dso_local global i32 0, align 4
@RADEON_DAC_FORCE_DATA_SEL_RGB = common dso_local global i32 0, align 4
@RADEON_DAC_FORCE_DATA_SEL_G = common dso_local global i32 0, align 4
@RADEON_DAC_FORCE_DATA_SHIFT = common dso_local global i32 0, align 4
@RADEON_DAC_RANGE_CNTL_MASK = common dso_local global i32 0, align 4
@RADEON_DAC_PDWN = common dso_local global i32 0, align 4
@RADEON_DAC_RANGE_CNTL_PS2 = common dso_local global i32 0, align 4
@RADEON_DAC_CMP_EN = common dso_local global i32 0, align 4
@RADEON_DAC_PDWN_R = common dso_local global i32 0, align 4
@RADEON_DAC_PDWN_G = common dso_local global i32 0, align 4
@RADEON_DAC_PDWN_B = common dso_local global i32 0, align 4
@RADEON_DAC_CMP_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @radeon_legacy_primary_dac_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_legacy_primary_dac_detect(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %6, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.radeon_device*, %struct.radeon_device** %20, align 8
  store %struct.radeon_device* %21, %struct.radeon_device** %7, align 8
  %22 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %22, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %23 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %24 = call i64 @ASIC_IS_RN50(%struct.radeon_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @connector_status_connected, align 4
  store i32 %27, i32* %3, align 4
  br label %146

28:                                               ; preds = %2
  %29 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %30 = call i32 @RREG32_PLL(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @RADEON_CRTC_EXT_CNTL, align 4
  %32 = call i32 @RREG32(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @RADEON_DAC_EXT_CNTL, align 4
  %34 = call i32 @RREG32(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @RADEON_DAC_CNTL, align 4
  %36 = call i32 @RREG32(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* @RADEON_DAC_MACRO_CNTL, align 4
  %38 = call i32 @RREG32(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @RADEON_PIXCLK_ALWAYS_ONb, align 4
  %41 = load i32, i32* @RADEON_PIXCLK_DAC_ALWAYS_ONb, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %39, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @WREG32_PLL(i32 %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @RADEON_CRTC_CRT_ON, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @RADEON_CRTC_EXT_CNTL, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @WREG32(i32 %51, i32 %52)
  %54 = load i32, i32* @RADEON_DAC_FORCE_BLANK_OFF_EN, align 4
  %55 = load i32, i32* @RADEON_DAC_FORCE_DATA_EN, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %28
  %60 = load i32, i32* @RADEON_DAC_FORCE_DATA_SEL_RGB, align 4
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %13, align 4
  br label %67

63:                                               ; preds = %28
  %64 = load i32, i32* @RADEON_DAC_FORCE_DATA_SEL_G, align 4
  %65 = load i32, i32* %13, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %69 = call i64 @ASIC_IS_R300(%struct.radeon_device* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* @RADEON_DAC_FORCE_DATA_SHIFT, align 4
  %73 = shl i32 438, %72
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %13, align 4
  br label %91

76:                                               ; preds = %67
  %77 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %78 = call i64 @ASIC_IS_RV100(%struct.radeon_device* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* @RADEON_DAC_FORCE_DATA_SHIFT, align 4
  %82 = shl i32 428, %81
  %83 = load i32, i32* %13, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %13, align 4
  br label %90

85:                                               ; preds = %76
  %86 = load i32, i32* @RADEON_DAC_FORCE_DATA_SHIFT, align 4
  %87 = shl i32 384, %86
  %88 = load i32, i32* %13, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %85, %80
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i32, i32* @RADEON_DAC_EXT_CNTL, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @WREG32(i32 %92, i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @RADEON_DAC_RANGE_CNTL_MASK, align 4
  %97 = load i32, i32* @RADEON_DAC_PDWN, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = and i32 %95, %99
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* @RADEON_DAC_RANGE_CNTL_PS2, align 4
  %102 = load i32, i32* @RADEON_DAC_CMP_EN, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %13, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* @RADEON_DAC_CNTL, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @WREG32(i32 %106, i32 %107)
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* @RADEON_DAC_PDWN_R, align 4
  %111 = load i32, i32* @RADEON_DAC_PDWN_G, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @RADEON_DAC_PDWN_B, align 4
  %114 = or i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %13, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* @RADEON_DAC_MACRO_CNTL, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @WREG32(i32 %118, i32 %119)
  %121 = call i32 @mdelay(i32 2)
  %122 = load i32, i32* @RADEON_DAC_CNTL, align 4
  %123 = call i32 @RREG32(i32 %122)
  %124 = load i32, i32* @RADEON_DAC_CMP_OUTPUT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %91
  %128 = load i32, i32* @connector_status_connected, align 4
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %127, %91
  %130 = load i32, i32* @RADEON_DAC_CNTL, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @WREG32(i32 %130, i32 %131)
  %133 = load i32, i32* @RADEON_DAC_MACRO_CNTL, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @WREG32(i32 %133, i32 %134)
  %136 = load i32, i32* @RADEON_DAC_EXT_CNTL, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @WREG32(i32 %136, i32 %137)
  %139 = load i32, i32* @RADEON_CRTC_EXT_CNTL, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @WREG32(i32 %139, i32 %140)
  %142 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @WREG32_PLL(i32 %142, i32 %143)
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %129, %26
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @ASIC_IS_RN50(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_PLL(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32_PLL(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_RV100(%struct.radeon_device*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_clocks.c_radeon_legacy_set_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_clocks.c_radeon_legacy_set_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RADEON_SINGLE_CRTC = common dso_local global i32 0, align 4
@RADEON_SCLK_CNTL = common dso_local global i32 0, align 4
@RADEON_CONFIG_CNTL = common dso_local global i32 0, align 4
@RADEON_CFG_ATI_REV_ID_MASK = common dso_local global i32 0, align 4
@RADEON_CFG_ATI_REV_A13 = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_CP = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_RB = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_HDP = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_DISP1 = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_TOP = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_SE = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_IDCT = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_RE = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_PB = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_TAM = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_TDM = common dso_local global i32 0, align 4
@CHIP_RS400 = common dso_local global i64 0, align 8
@CHIP_RS480 = common dso_local global i64 0, align 8
@RADEON_SCLK_FORCE_DISP2 = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_E2 = common dso_local global i32 0, align 4
@R300_SCLK_FORCE_VAP = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_VIP = common dso_local global i32 0, align 4
@R300_SCLK_FORCE_SR = common dso_local global i32 0, align 4
@R300_SCLK_FORCE_PX = common dso_local global i32 0, align 4
@R300_SCLK_FORCE_TX = common dso_local global i32 0, align 4
@R300_SCLK_FORCE_US = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_TV_SCLK = common dso_local global i32 0, align 4
@R300_SCLK_FORCE_SU = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCE_OV0 = common dso_local global i32 0, align 4
@RADEON_DYN_STOP_LAT_MASK = common dso_local global i32 0, align 4
@RADEON_SCLK_MORE_CNTL = common dso_local global i32 0, align 4
@RADEON_SCLK_MORE_FORCEON = common dso_local global i32 0, align 4
@RADEON_SCLK_MORE_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@RADEON_VCLK_ECP_CNTL = common dso_local global i32 0, align 4
@RADEON_PIXCLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@RADEON_PIXCLK_DAC_ALWAYS_ONb = common dso_local global i32 0, align 4
@RADEON_PIXCLKS_CNTL = common dso_local global i32 0, align 4
@RADEON_PIX2CLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@RADEON_PIX2CLK_DAC_ALWAYS_ONb = common dso_local global i32 0, align 4
@RADEON_DISP_TVOUT_PIXCLK_TV_ALWAYS_ONb = common dso_local global i32 0, align 4
@R300_DVOCLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@RADEON_PIXCLK_BLEND_ALWAYS_ONb = common dso_local global i32 0, align 4
@RADEON_PIXCLK_GV_ALWAYS_ONb = common dso_local global i32 0, align 4
@R300_PIXCLK_DVO_ALWAYS_ONb = common dso_local global i32 0, align 4
@RADEON_PIXCLK_LVDS_ALWAYS_ONb = common dso_local global i32 0, align 4
@RADEON_PIXCLK_TMDS_ALWAYS_ONb = common dso_local global i32 0, align 4
@R300_PIXCLK_TRANS_ALWAYS_ONb = common dso_local global i32 0, align 4
@R300_PIXCLK_TVO_ALWAYS_ONb = common dso_local global i32 0, align 4
@R300_P2G2CLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@R300_P2G2CLK_DAC_ALWAYS_ONb = common dso_local global i32 0, align 4
@CHIP_RV350 = common dso_local global i64 0, align 8
@R300_SCLK_CNTL2 = common dso_local global i32 0, align 4
@R300_SCLK_FORCE_TCL = common dso_local global i32 0, align 4
@R300_SCLK_FORCE_GA = common dso_local global i32 0, align 4
@R300_SCLK_FORCE_CBA = common dso_local global i32 0, align 4
@R300_SCLK_TCL_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@R300_SCLK_GA_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@R300_SCLK_CBA_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@RADEON_MCLK_MISC = common dso_local global i32 0, align 4
@RADEON_MC_MCLK_DYN_ENABLE = common dso_local global i32 0, align 4
@RADEON_IO_MCLK_DYN_ENABLE = common dso_local global i32 0, align 4
@RADEON_MCLK_CNTL = common dso_local global i32 0, align 4
@RADEON_FORCEON_MCLKA = common dso_local global i32 0, align 4
@RADEON_FORCEON_MCLKB = common dso_local global i32 0, align 4
@RADEON_FORCEON_YCLKA = common dso_local global i32 0, align 4
@RADEON_FORCEON_YCLKB = common dso_local global i32 0, align 4
@RADEON_FORCEON_MC = common dso_local global i32 0, align 4
@R300_DISABLE_MC_MCLKA = common dso_local global i32 0, align 4
@R300_DISABLE_MC_MCLKB = common dso_local global i32 0, align 4
@RADEON_MEM_CNTL = common dso_local global i32 0, align 4
@R300_MEM_USE_CD_CH_ONLY = common dso_local global i32 0, align 4
@RADEON_CLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@RADEON_ACTIVE_HILO_LAT_MASK = common dso_local global i32 0, align 4
@RADEON_DISP_DYN_STOP_LAT_MASK = common dso_local global i32 0, align 4
@RADEON_DYN_STOP_MODE_MASK = common dso_local global i32 0, align 4
@RADEON_ENGIN_DYNCLK_MODE = common dso_local global i32 0, align 4
@RADEON_ACTIVE_HILO_LAT_SHIFT = common dso_local global i32 0, align 4
@RADEON_CLK_PIN_CNTL = common dso_local global i32 0, align 4
@RADEON_SCLK_DYN_START_CNTL = common dso_local global i32 0, align 4
@RADEON_SCLK_FORCEON_MASK = common dso_local global i32 0, align 4
@CHIP_RV250 = common dso_local global i64 0, align 8
@CHIP_RV100 = common dso_local global i64 0, align 8
@CHIP_RV200 = common dso_local global i64 0, align 8
@CHIP_RV280 = common dso_local global i64 0, align 8
@RADEON_PLL_PWRMGT_CNTL = common dso_local global i32 0, align 4
@RADEON_TCL_BYPASS_DISABLE = common dso_local global i32 0, align 4
@RADEON_PIXCLK_DIG_TMDS_ALWAYS_ONb = common dso_local global i32 0, align 4
@R300_DISP_DAC_PIXCLK_DAC_BLANK_OFF = common dso_local global i32 0, align 4
@R300_DISP_DAC_PIXCLK_DAC2_BLANK_OFF = common dso_local global i32 0, align 4
@CHIP_R300 = common dso_local global i64 0, align 8
@CHIP_R350 = common dso_local global i64 0, align 8
@RADEON_IS_IGP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_legacy_set_clock_gating(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %583

8:                                                ; preds = %2
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %8
  %16 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %17 = call i32 @RREG32_PLL(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @RADEON_CONFIG_CNTL, align 4
  %19 = call i32 @RREG32(i32 %18)
  %20 = load i32, i32* @RADEON_CFG_ATI_REV_ID_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @RADEON_CFG_ATI_REV_A13, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load i32, i32* @RADEON_SCLK_FORCE_CP, align 4
  %26 = load i32, i32* @RADEON_SCLK_FORCE_RB, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %24, %15
  %32 = load i32, i32* @RADEON_SCLK_FORCE_HDP, align 4
  %33 = load i32, i32* @RADEON_SCLK_FORCE_DISP1, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RADEON_SCLK_FORCE_TOP, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RADEON_SCLK_FORCE_SE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RADEON_SCLK_FORCE_IDCT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RADEON_SCLK_FORCE_RE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @RADEON_SCLK_FORCE_PB, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @RADEON_SCLK_FORCE_TAM, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @RADEON_SCLK_FORCE_TDM, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @WREG32_PLL(i32 %52, i32 %53)
  br label %582

55:                                               ; preds = %8
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = call i64 @ASIC_IS_R300(%struct.radeon_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %396

59:                                               ; preds = %55
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CHIP_RS400, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CHIP_RS480, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %173

71:                                               ; preds = %65, %59
  %72 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %73 = call i32 @RREG32_PLL(i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @RADEON_SCLK_FORCE_DISP2, align 4
  %75 = load i32, i32* @RADEON_SCLK_FORCE_CP, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @RADEON_SCLK_FORCE_HDP, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @RADEON_SCLK_FORCE_DISP1, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @RADEON_SCLK_FORCE_TOP, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @RADEON_SCLK_FORCE_E2, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @R300_SCLK_FORCE_VAP, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @RADEON_SCLK_FORCE_IDCT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @RADEON_SCLK_FORCE_VIP, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @R300_SCLK_FORCE_SR, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @R300_SCLK_FORCE_PX, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @R300_SCLK_FORCE_TX, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @R300_SCLK_FORCE_US, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @RADEON_SCLK_FORCE_TV_SCLK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @R300_SCLK_FORCE_SU, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @RADEON_SCLK_FORCE_OV0, align 4
  %104 = or i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* @RADEON_DYN_STOP_LAT_MASK, align 4
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* @RADEON_SCLK_FORCE_TOP, align 4
  %112 = load i32, i32* @RADEON_SCLK_FORCE_VIP, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @WREG32_PLL(i32 %116, i32 %117)
  %119 = load i32, i32* @RADEON_SCLK_MORE_CNTL, align 4
  %120 = call i32 @RREG32_PLL(i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* @RADEON_SCLK_MORE_FORCEON, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %5, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* @RADEON_SCLK_MORE_MAX_DYN_STOP_LAT, align 4
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* @RADEON_SCLK_MORE_CNTL, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @WREG32_PLL(i32 %128, i32 %129)
  %131 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %132 = call i32 @RREG32_PLL(i32 %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* @RADEON_PIXCLK_ALWAYS_ONb, align 4
  %134 = load i32, i32* @RADEON_PIXCLK_DAC_ALWAYS_ONb, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @WREG32_PLL(i32 %138, i32 %139)
  %141 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %142 = call i32 @RREG32_PLL(i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* @RADEON_PIX2CLK_ALWAYS_ONb, align 4
  %144 = load i32, i32* @RADEON_PIX2CLK_DAC_ALWAYS_ONb, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @RADEON_DISP_TVOUT_PIXCLK_TV_ALWAYS_ONb, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @R300_DVOCLK_ALWAYS_ONb, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @RADEON_PIXCLK_BLEND_ALWAYS_ONb, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @RADEON_PIXCLK_GV_ALWAYS_ONb, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @R300_PIXCLK_DVO_ALWAYS_ONb, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @RADEON_PIXCLK_LVDS_ALWAYS_ONb, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @RADEON_PIXCLK_TMDS_ALWAYS_ONb, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @R300_PIXCLK_TRANS_ALWAYS_ONb, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @R300_PIXCLK_TVO_ALWAYS_ONb, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @R300_P2G2CLK_ALWAYS_ONb, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @R300_P2G2CLK_DAC_ALWAYS_ONb, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* %5, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @WREG32_PLL(i32 %170, i32 %171)
  br label %395

173:                                              ; preds = %65
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @CHIP_RV350, align 8
  %178 = icmp sge i64 %176, %177
  br i1 %178, label %179, label %367

179:                                              ; preds = %173
  %180 = load i32, i32* @R300_SCLK_CNTL2, align 4
  %181 = call i32 @RREG32_PLL(i32 %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* @R300_SCLK_FORCE_TCL, align 4
  %183 = load i32, i32* @R300_SCLK_FORCE_GA, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @R300_SCLK_FORCE_CBA, align 4
  %186 = or i32 %184, %185
  %187 = xor i32 %186, -1
  %188 = load i32, i32* %5, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* @R300_SCLK_TCL_MAX_DYN_STOP_LAT, align 4
  %191 = load i32, i32* @R300_SCLK_GA_MAX_DYN_STOP_LAT, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @R300_SCLK_CBA_MAX_DYN_STOP_LAT, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* %5, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* @R300_SCLK_CNTL2, align 4
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @WREG32_PLL(i32 %197, i32 %198)
  %200 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %201 = call i32 @RREG32_PLL(i32 %200)
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* @RADEON_SCLK_FORCE_DISP2, align 4
  %203 = load i32, i32* @RADEON_SCLK_FORCE_CP, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @RADEON_SCLK_FORCE_HDP, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @RADEON_SCLK_FORCE_DISP1, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @RADEON_SCLK_FORCE_TOP, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @RADEON_SCLK_FORCE_E2, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @R300_SCLK_FORCE_VAP, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @RADEON_SCLK_FORCE_IDCT, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @RADEON_SCLK_FORCE_VIP, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @R300_SCLK_FORCE_SR, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @R300_SCLK_FORCE_PX, align 4
  %222 = or i32 %220, %221
  %223 = load i32, i32* @R300_SCLK_FORCE_TX, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @R300_SCLK_FORCE_US, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @RADEON_SCLK_FORCE_TV_SCLK, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @R300_SCLK_FORCE_SU, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @RADEON_SCLK_FORCE_OV0, align 4
  %232 = or i32 %230, %231
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %5, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %5, align 4
  %236 = load i32, i32* @RADEON_DYN_STOP_LAT_MASK, align 4
  %237 = load i32, i32* %5, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %5, align 4
  %239 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %240 = load i32, i32* %5, align 4
  %241 = call i32 @WREG32_PLL(i32 %239, i32 %240)
  %242 = load i32, i32* @RADEON_SCLK_MORE_CNTL, align 4
  %243 = call i32 @RREG32_PLL(i32 %242)
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* @RADEON_SCLK_MORE_FORCEON, align 4
  %245 = xor i32 %244, -1
  %246 = load i32, i32* %5, align 4
  %247 = and i32 %246, %245
  store i32 %247, i32* %5, align 4
  %248 = load i32, i32* @RADEON_SCLK_MORE_MAX_DYN_STOP_LAT, align 4
  %249 = load i32, i32* %5, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %5, align 4
  %251 = load i32, i32* @RADEON_SCLK_MORE_CNTL, align 4
  %252 = load i32, i32* %5, align 4
  %253 = call i32 @WREG32_PLL(i32 %251, i32 %252)
  %254 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %255 = call i32 @RREG32_PLL(i32 %254)
  store i32 %255, i32* %5, align 4
  %256 = load i32, i32* @RADEON_PIXCLK_ALWAYS_ONb, align 4
  %257 = load i32, i32* @RADEON_PIXCLK_DAC_ALWAYS_ONb, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* %5, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %5, align 4
  %261 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %262 = load i32, i32* %5, align 4
  %263 = call i32 @WREG32_PLL(i32 %261, i32 %262)
  %264 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %265 = call i32 @RREG32_PLL(i32 %264)
  store i32 %265, i32* %5, align 4
  %266 = load i32, i32* @RADEON_PIX2CLK_ALWAYS_ONb, align 4
  %267 = load i32, i32* @RADEON_PIX2CLK_DAC_ALWAYS_ONb, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @RADEON_DISP_TVOUT_PIXCLK_TV_ALWAYS_ONb, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @R300_DVOCLK_ALWAYS_ONb, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @RADEON_PIXCLK_BLEND_ALWAYS_ONb, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @RADEON_PIXCLK_GV_ALWAYS_ONb, align 4
  %276 = or i32 %274, %275
  %277 = load i32, i32* @R300_PIXCLK_DVO_ALWAYS_ONb, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* @RADEON_PIXCLK_LVDS_ALWAYS_ONb, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* @RADEON_PIXCLK_TMDS_ALWAYS_ONb, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @R300_PIXCLK_TRANS_ALWAYS_ONb, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @R300_PIXCLK_TVO_ALWAYS_ONb, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* @R300_P2G2CLK_ALWAYS_ONb, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* @R300_P2G2CLK_DAC_ALWAYS_ONb, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* %5, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %5, align 4
  %293 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %294 = load i32, i32* %5, align 4
  %295 = call i32 @WREG32_PLL(i32 %293, i32 %294)
  %296 = load i32, i32* @RADEON_MCLK_MISC, align 4
  %297 = call i32 @RREG32_PLL(i32 %296)
  store i32 %297, i32* %5, align 4
  %298 = load i32, i32* @RADEON_MC_MCLK_DYN_ENABLE, align 4
  %299 = load i32, i32* @RADEON_IO_MCLK_DYN_ENABLE, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* %5, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %5, align 4
  %303 = load i32, i32* @RADEON_MCLK_MISC, align 4
  %304 = load i32, i32* %5, align 4
  %305 = call i32 @WREG32_PLL(i32 %303, i32 %304)
  %306 = load i32, i32* @RADEON_MCLK_CNTL, align 4
  %307 = call i32 @RREG32_PLL(i32 %306)
  store i32 %307, i32* %5, align 4
  %308 = load i32, i32* @RADEON_FORCEON_MCLKA, align 4
  %309 = load i32, i32* @RADEON_FORCEON_MCLKB, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* %5, align 4
  %312 = or i32 %311, %310
  store i32 %312, i32* %5, align 4
  %313 = load i32, i32* @RADEON_FORCEON_YCLKA, align 4
  %314 = load i32, i32* @RADEON_FORCEON_YCLKB, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* @RADEON_FORCEON_MC, align 4
  %317 = or i32 %315, %316
  %318 = xor i32 %317, -1
  %319 = load i32, i32* %5, align 4
  %320 = and i32 %319, %318
  store i32 %320, i32* %5, align 4
  %321 = load i32, i32* %5, align 4
  %322 = load i32, i32* @R300_DISABLE_MC_MCLKA, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %363

325:                                              ; preds = %179
  %326 = load i32, i32* %5, align 4
  %327 = load i32, i32* @R300_DISABLE_MC_MCLKB, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %363

330:                                              ; preds = %325
  %331 = load i32, i32* @RADEON_MCLK_CNTL, align 4
  %332 = call i32 @RREG32_PLL(i32 %331)
  store i32 %332, i32* %5, align 4
  %333 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %334 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp eq i32 %336, 64
  br i1 %337, label %338, label %355

338:                                              ; preds = %330
  %339 = load i32, i32* @RADEON_MEM_CNTL, align 4
  %340 = call i32 @RREG32(i32 %339)
  %341 = load i32, i32* @R300_MEM_USE_CD_CH_ONLY, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %338
  %345 = load i32, i32* @R300_DISABLE_MC_MCLKB, align 4
  %346 = xor i32 %345, -1
  %347 = load i32, i32* %5, align 4
  %348 = and i32 %347, %346
  store i32 %348, i32* %5, align 4
  br label %354

349:                                              ; preds = %338
  %350 = load i32, i32* @R300_DISABLE_MC_MCLKA, align 4
  %351 = xor i32 %350, -1
  %352 = load i32, i32* %5, align 4
  %353 = and i32 %352, %351
  store i32 %353, i32* %5, align 4
  br label %354

354:                                              ; preds = %349, %344
  br label %362

355:                                              ; preds = %330
  %356 = load i32, i32* @R300_DISABLE_MC_MCLKA, align 4
  %357 = load i32, i32* @R300_DISABLE_MC_MCLKB, align 4
  %358 = or i32 %356, %357
  %359 = xor i32 %358, -1
  %360 = load i32, i32* %5, align 4
  %361 = and i32 %360, %359
  store i32 %361, i32* %5, align 4
  br label %362

362:                                              ; preds = %355, %354
  br label %363

363:                                              ; preds = %362, %325, %179
  %364 = load i32, i32* @RADEON_MCLK_CNTL, align 4
  %365 = load i32, i32* %5, align 4
  %366 = call i32 @WREG32_PLL(i32 %364, i32 %365)
  br label %394

367:                                              ; preds = %173
  %368 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %369 = call i32 @RREG32_PLL(i32 %368)
  store i32 %369, i32* %5, align 4
  %370 = load i32, i32* @R300_SCLK_FORCE_VAP, align 4
  %371 = xor i32 %370, -1
  %372 = load i32, i32* %5, align 4
  %373 = and i32 %372, %371
  store i32 %373, i32* %5, align 4
  %374 = load i32, i32* @RADEON_SCLK_FORCE_CP, align 4
  %375 = load i32, i32* %5, align 4
  %376 = or i32 %375, %374
  store i32 %376, i32* %5, align 4
  %377 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %378 = load i32, i32* %5, align 4
  %379 = call i32 @WREG32_PLL(i32 %377, i32 %378)
  %380 = call i32 @mdelay(i32 15)
  %381 = load i32, i32* @R300_SCLK_CNTL2, align 4
  %382 = call i32 @RREG32_PLL(i32 %381)
  store i32 %382, i32* %5, align 4
  %383 = load i32, i32* @R300_SCLK_FORCE_TCL, align 4
  %384 = load i32, i32* @R300_SCLK_FORCE_GA, align 4
  %385 = or i32 %383, %384
  %386 = load i32, i32* @R300_SCLK_FORCE_CBA, align 4
  %387 = or i32 %385, %386
  %388 = xor i32 %387, -1
  %389 = load i32, i32* %5, align 4
  %390 = and i32 %389, %388
  store i32 %390, i32* %5, align 4
  %391 = load i32, i32* @R300_SCLK_CNTL2, align 4
  %392 = load i32, i32* %5, align 4
  %393 = call i32 @WREG32_PLL(i32 %391, i32 %392)
  br label %394

394:                                              ; preds = %367, %363
  br label %395

395:                                              ; preds = %394, %71
  br label %581

396:                                              ; preds = %55
  %397 = load i32, i32* @RADEON_CLK_PWRMGT_CNTL, align 4
  %398 = call i32 @RREG32_PLL(i32 %397)
  store i32 %398, i32* %5, align 4
  %399 = load i32, i32* @RADEON_ACTIVE_HILO_LAT_MASK, align 4
  %400 = load i32, i32* @RADEON_DISP_DYN_STOP_LAT_MASK, align 4
  %401 = or i32 %399, %400
  %402 = load i32, i32* @RADEON_DYN_STOP_MODE_MASK, align 4
  %403 = or i32 %401, %402
  %404 = xor i32 %403, -1
  %405 = load i32, i32* %5, align 4
  %406 = and i32 %405, %404
  store i32 %406, i32* %5, align 4
  %407 = load i32, i32* @RADEON_ENGIN_DYNCLK_MODE, align 4
  %408 = load i32, i32* @RADEON_ACTIVE_HILO_LAT_SHIFT, align 4
  %409 = shl i32 1, %408
  %410 = or i32 %407, %409
  %411 = load i32, i32* %5, align 4
  %412 = or i32 %411, %410
  store i32 %412, i32* %5, align 4
  %413 = load i32, i32* @RADEON_CLK_PWRMGT_CNTL, align 4
  %414 = load i32, i32* %5, align 4
  %415 = call i32 @WREG32_PLL(i32 %413, i32 %414)
  %416 = call i32 @mdelay(i32 15)
  %417 = load i32, i32* @RADEON_CLK_PIN_CNTL, align 4
  %418 = call i32 @RREG32_PLL(i32 %417)
  store i32 %418, i32* %5, align 4
  %419 = load i32, i32* @RADEON_SCLK_DYN_START_CNTL, align 4
  %420 = load i32, i32* %5, align 4
  %421 = or i32 %420, %419
  store i32 %421, i32* %5, align 4
  %422 = load i32, i32* @RADEON_CLK_PIN_CNTL, align 4
  %423 = load i32, i32* %5, align 4
  %424 = call i32 @WREG32_PLL(i32 %422, i32 %423)
  %425 = call i32 @mdelay(i32 15)
  %426 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %427 = call i32 @RREG32_PLL(i32 %426)
  store i32 %427, i32* %5, align 4
  %428 = load i32, i32* @RADEON_SCLK_FORCEON_MASK, align 4
  %429 = xor i32 %428, -1
  %430 = load i32, i32* %5, align 4
  %431 = and i32 %430, %429
  store i32 %431, i32* %5, align 4
  %432 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %433 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = load i64, i64* @CHIP_RV250, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %444

437:                                              ; preds = %396
  %438 = load i32, i32* @RADEON_CONFIG_CNTL, align 4
  %439 = call i32 @RREG32(i32 %438)
  %440 = load i32, i32* @RADEON_CFG_ATI_REV_ID_MASK, align 4
  %441 = and i32 %439, %440
  %442 = load i32, i32* @RADEON_CFG_ATI_REV_A13, align 4
  %443 = icmp slt i32 %441, %442
  br i1 %443, label %457, label %444

444:                                              ; preds = %437, %396
  %445 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %446 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = load i64, i64* @CHIP_RV100, align 8
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %450, label %464

450:                                              ; preds = %444
  %451 = load i32, i32* @RADEON_CONFIG_CNTL, align 4
  %452 = call i32 @RREG32(i32 %451)
  %453 = load i32, i32* @RADEON_CFG_ATI_REV_ID_MASK, align 4
  %454 = and i32 %452, %453
  %455 = load i32, i32* @RADEON_CFG_ATI_REV_A13, align 4
  %456 = icmp sle i32 %454, %455
  br i1 %456, label %457, label %464

457:                                              ; preds = %450, %437
  %458 = load i32, i32* @RADEON_SCLK_FORCE_CP, align 4
  %459 = load i32, i32* %5, align 4
  %460 = or i32 %459, %458
  store i32 %460, i32* %5, align 4
  %461 = load i32, i32* @RADEON_SCLK_FORCE_VIP, align 4
  %462 = load i32, i32* %5, align 4
  %463 = or i32 %462, %461
  store i32 %463, i32* %5, align 4
  br label %464

464:                                              ; preds = %457, %450, %444
  %465 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %466 = load i32, i32* %5, align 4
  %467 = call i32 @WREG32_PLL(i32 %465, i32 %466)
  %468 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %469 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %468, i32 0, i32 1
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* @CHIP_RV200, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %485, label %473

473:                                              ; preds = %464
  %474 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %475 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %474, i32 0, i32 1
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @CHIP_RV250, align 8
  %478 = icmp eq i64 %476, %477
  br i1 %478, label %485, label %479

479:                                              ; preds = %473
  %480 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %481 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @CHIP_RV280, align 8
  %484 = icmp eq i64 %482, %483
  br i1 %484, label %485, label %519

485:                                              ; preds = %479, %473, %464
  %486 = load i32, i32* @RADEON_SCLK_MORE_CNTL, align 4
  %487 = call i32 @RREG32_PLL(i32 %486)
  store i32 %487, i32* %5, align 4
  %488 = load i32, i32* @RADEON_SCLK_MORE_FORCEON, align 4
  %489 = xor i32 %488, -1
  %490 = load i32, i32* %5, align 4
  %491 = and i32 %490, %489
  store i32 %491, i32* %5, align 4
  %492 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %493 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %492, i32 0, i32 1
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* @CHIP_RV200, align 8
  %496 = icmp eq i64 %494, %495
  br i1 %496, label %503, label %497

497:                                              ; preds = %485
  %498 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %499 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %498, i32 0, i32 1
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* @CHIP_RV250, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %514

503:                                              ; preds = %497, %485
  %504 = load i32, i32* @RADEON_CONFIG_CNTL, align 4
  %505 = call i32 @RREG32(i32 %504)
  %506 = load i32, i32* @RADEON_CFG_ATI_REV_ID_MASK, align 4
  %507 = and i32 %505, %506
  %508 = load i32, i32* @RADEON_CFG_ATI_REV_A13, align 4
  %509 = icmp slt i32 %507, %508
  br i1 %509, label %510, label %514

510:                                              ; preds = %503
  %511 = load i32, i32* @RADEON_SCLK_MORE_FORCEON, align 4
  %512 = load i32, i32* %5, align 4
  %513 = or i32 %512, %511
  store i32 %513, i32* %5, align 4
  br label %514

514:                                              ; preds = %510, %503, %497
  %515 = load i32, i32* @RADEON_SCLK_MORE_CNTL, align 4
  %516 = load i32, i32* %5, align 4
  %517 = call i32 @WREG32_PLL(i32 %515, i32 %516)
  %518 = call i32 @mdelay(i32 15)
  br label %519

519:                                              ; preds = %514, %479
  %520 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %521 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %520, i32 0, i32 1
  %522 = load i64, i64* %521, align 8
  %523 = load i64, i64* @CHIP_RV200, align 8
  %524 = icmp eq i64 %522, %523
  br i1 %524, label %531, label %525

525:                                              ; preds = %519
  %526 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %527 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %526, i32 0, i32 1
  %528 = load i64, i64* %527, align 8
  %529 = load i64, i64* @CHIP_RV250, align 8
  %530 = icmp eq i64 %528, %529
  br i1 %530, label %531, label %547

531:                                              ; preds = %525, %519
  %532 = load i32, i32* @RADEON_CONFIG_CNTL, align 4
  %533 = call i32 @RREG32(i32 %532)
  %534 = load i32, i32* @RADEON_CFG_ATI_REV_ID_MASK, align 4
  %535 = and i32 %533, %534
  %536 = load i32, i32* @RADEON_CFG_ATI_REV_A13, align 4
  %537 = icmp slt i32 %535, %536
  br i1 %537, label %538, label %547

538:                                              ; preds = %531
  %539 = load i32, i32* @RADEON_PLL_PWRMGT_CNTL, align 4
  %540 = call i32 @RREG32_PLL(i32 %539)
  store i32 %540, i32* %5, align 4
  %541 = load i32, i32* @RADEON_TCL_BYPASS_DISABLE, align 4
  %542 = load i32, i32* %5, align 4
  %543 = or i32 %542, %541
  store i32 %543, i32* %5, align 4
  %544 = load i32, i32* @RADEON_PLL_PWRMGT_CNTL, align 4
  %545 = load i32, i32* %5, align 4
  %546 = call i32 @WREG32_PLL(i32 %544, i32 %545)
  br label %547

547:                                              ; preds = %538, %531, %525
  %548 = call i32 @mdelay(i32 15)
  %549 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %550 = call i32 @RREG32_PLL(i32 %549)
  store i32 %550, i32* %5, align 4
  %551 = load i32, i32* @RADEON_PIX2CLK_ALWAYS_ONb, align 4
  %552 = load i32, i32* @RADEON_PIX2CLK_DAC_ALWAYS_ONb, align 4
  %553 = or i32 %551, %552
  %554 = load i32, i32* @RADEON_PIXCLK_BLEND_ALWAYS_ONb, align 4
  %555 = or i32 %553, %554
  %556 = load i32, i32* @RADEON_PIXCLK_GV_ALWAYS_ONb, align 4
  %557 = or i32 %555, %556
  %558 = load i32, i32* @RADEON_PIXCLK_DIG_TMDS_ALWAYS_ONb, align 4
  %559 = or i32 %557, %558
  %560 = load i32, i32* @RADEON_PIXCLK_LVDS_ALWAYS_ONb, align 4
  %561 = or i32 %559, %560
  %562 = load i32, i32* @RADEON_PIXCLK_TMDS_ALWAYS_ONb, align 4
  %563 = or i32 %561, %562
  %564 = load i32, i32* %5, align 4
  %565 = or i32 %564, %563
  store i32 %565, i32* %5, align 4
  %566 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %567 = load i32, i32* %5, align 4
  %568 = call i32 @WREG32_PLL(i32 %566, i32 %567)
  %569 = call i32 @mdelay(i32 15)
  %570 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %571 = call i32 @RREG32_PLL(i32 %570)
  store i32 %571, i32* %5, align 4
  %572 = load i32, i32* @RADEON_PIXCLK_ALWAYS_ONb, align 4
  %573 = load i32, i32* @RADEON_PIXCLK_DAC_ALWAYS_ONb, align 4
  %574 = or i32 %572, %573
  %575 = load i32, i32* %5, align 4
  %576 = or i32 %575, %574
  store i32 %576, i32* %5, align 4
  %577 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %578 = load i32, i32* %5, align 4
  %579 = call i32 @WREG32_PLL(i32 %577, i32 %578)
  %580 = call i32 @mdelay(i32 15)
  br label %581

581:                                              ; preds = %547, %395
  br label %582

582:                                              ; preds = %581, %31
  br label %1042

583:                                              ; preds = %2
  %584 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %585 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 8
  %587 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %588 = and i32 %586, %587
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %623

590:                                              ; preds = %583
  %591 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %592 = call i32 @RREG32_PLL(i32 %591)
  store i32 %592, i32* %5, align 4
  %593 = load i32, i32* @RADEON_SCLK_FORCE_CP, align 4
  %594 = load i32, i32* @RADEON_SCLK_FORCE_HDP, align 4
  %595 = or i32 %593, %594
  %596 = load i32, i32* @RADEON_SCLK_FORCE_DISP1, align 4
  %597 = or i32 %595, %596
  %598 = load i32, i32* @RADEON_SCLK_FORCE_TOP, align 4
  %599 = or i32 %597, %598
  %600 = load i32, i32* @RADEON_SCLK_FORCE_E2, align 4
  %601 = or i32 %599, %600
  %602 = load i32, i32* @RADEON_SCLK_FORCE_SE, align 4
  %603 = or i32 %601, %602
  %604 = load i32, i32* @RADEON_SCLK_FORCE_IDCT, align 4
  %605 = or i32 %603, %604
  %606 = load i32, i32* @RADEON_SCLK_FORCE_VIP, align 4
  %607 = or i32 %605, %606
  %608 = load i32, i32* @RADEON_SCLK_FORCE_RE, align 4
  %609 = or i32 %607, %608
  %610 = load i32, i32* @RADEON_SCLK_FORCE_PB, align 4
  %611 = or i32 %609, %610
  %612 = load i32, i32* @RADEON_SCLK_FORCE_TAM, align 4
  %613 = or i32 %611, %612
  %614 = load i32, i32* @RADEON_SCLK_FORCE_TDM, align 4
  %615 = or i32 %613, %614
  %616 = load i32, i32* @RADEON_SCLK_FORCE_RB, align 4
  %617 = or i32 %615, %616
  %618 = load i32, i32* %5, align 4
  %619 = or i32 %618, %617
  store i32 %619, i32* %5, align 4
  %620 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %621 = load i32, i32* %5, align 4
  %622 = call i32 @WREG32_PLL(i32 %620, i32 %621)
  br label %1041

623:                                              ; preds = %583
  %624 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %625 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %624, i32 0, i32 1
  %626 = load i64, i64* %625, align 8
  %627 = load i64, i64* @CHIP_RS400, align 8
  %628 = icmp eq i64 %626, %627
  br i1 %628, label %635, label %629

629:                                              ; preds = %623
  %630 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %631 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %630, i32 0, i32 1
  %632 = load i64, i64* %631, align 8
  %633 = load i64, i64* @CHIP_RS480, align 8
  %634 = icmp eq i64 %632, %633
  br i1 %634, label %635, label %730

635:                                              ; preds = %629, %623
  %636 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %637 = call i32 @RREG32_PLL(i32 %636)
  store i32 %637, i32* %5, align 4
  %638 = load i32, i32* @RADEON_SCLK_FORCE_DISP2, align 4
  %639 = load i32, i32* @RADEON_SCLK_FORCE_CP, align 4
  %640 = or i32 %638, %639
  %641 = load i32, i32* @RADEON_SCLK_FORCE_HDP, align 4
  %642 = or i32 %640, %641
  %643 = load i32, i32* @RADEON_SCLK_FORCE_DISP1, align 4
  %644 = or i32 %642, %643
  %645 = load i32, i32* @RADEON_SCLK_FORCE_TOP, align 4
  %646 = or i32 %644, %645
  %647 = load i32, i32* @RADEON_SCLK_FORCE_E2, align 4
  %648 = or i32 %646, %647
  %649 = load i32, i32* @R300_SCLK_FORCE_VAP, align 4
  %650 = or i32 %648, %649
  %651 = load i32, i32* @RADEON_SCLK_FORCE_IDCT, align 4
  %652 = or i32 %650, %651
  %653 = load i32, i32* @RADEON_SCLK_FORCE_VIP, align 4
  %654 = or i32 %652, %653
  %655 = load i32, i32* @R300_SCLK_FORCE_SR, align 4
  %656 = or i32 %654, %655
  %657 = load i32, i32* @R300_SCLK_FORCE_PX, align 4
  %658 = or i32 %656, %657
  %659 = load i32, i32* @R300_SCLK_FORCE_TX, align 4
  %660 = or i32 %658, %659
  %661 = load i32, i32* @R300_SCLK_FORCE_US, align 4
  %662 = or i32 %660, %661
  %663 = load i32, i32* @RADEON_SCLK_FORCE_TV_SCLK, align 4
  %664 = or i32 %662, %663
  %665 = load i32, i32* @R300_SCLK_FORCE_SU, align 4
  %666 = or i32 %664, %665
  %667 = load i32, i32* @RADEON_SCLK_FORCE_OV0, align 4
  %668 = or i32 %666, %667
  %669 = load i32, i32* %5, align 4
  %670 = or i32 %669, %668
  store i32 %670, i32* %5, align 4
  %671 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %672 = load i32, i32* %5, align 4
  %673 = call i32 @WREG32_PLL(i32 %671, i32 %672)
  %674 = load i32, i32* @RADEON_SCLK_MORE_CNTL, align 4
  %675 = call i32 @RREG32_PLL(i32 %674)
  store i32 %675, i32* %5, align 4
  %676 = load i32, i32* @RADEON_SCLK_MORE_FORCEON, align 4
  %677 = load i32, i32* %5, align 4
  %678 = or i32 %677, %676
  store i32 %678, i32* %5, align 4
  %679 = load i32, i32* @RADEON_SCLK_MORE_CNTL, align 4
  %680 = load i32, i32* %5, align 4
  %681 = call i32 @WREG32_PLL(i32 %679, i32 %680)
  %682 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %683 = call i32 @RREG32_PLL(i32 %682)
  store i32 %683, i32* %5, align 4
  %684 = load i32, i32* @RADEON_PIXCLK_ALWAYS_ONb, align 4
  %685 = load i32, i32* @RADEON_PIXCLK_DAC_ALWAYS_ONb, align 4
  %686 = or i32 %684, %685
  %687 = load i32, i32* @R300_DISP_DAC_PIXCLK_DAC_BLANK_OFF, align 4
  %688 = or i32 %686, %687
  %689 = xor i32 %688, -1
  %690 = load i32, i32* %5, align 4
  %691 = and i32 %690, %689
  store i32 %691, i32* %5, align 4
  %692 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %693 = load i32, i32* %5, align 4
  %694 = call i32 @WREG32_PLL(i32 %692, i32 %693)
  %695 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %696 = call i32 @RREG32_PLL(i32 %695)
  store i32 %696, i32* %5, align 4
  %697 = load i32, i32* @RADEON_PIX2CLK_ALWAYS_ONb, align 4
  %698 = load i32, i32* @RADEON_PIX2CLK_DAC_ALWAYS_ONb, align 4
  %699 = or i32 %697, %698
  %700 = load i32, i32* @RADEON_DISP_TVOUT_PIXCLK_TV_ALWAYS_ONb, align 4
  %701 = or i32 %699, %700
  %702 = load i32, i32* @R300_DVOCLK_ALWAYS_ONb, align 4
  %703 = or i32 %701, %702
  %704 = load i32, i32* @RADEON_PIXCLK_BLEND_ALWAYS_ONb, align 4
  %705 = or i32 %703, %704
  %706 = load i32, i32* @RADEON_PIXCLK_GV_ALWAYS_ONb, align 4
  %707 = or i32 %705, %706
  %708 = load i32, i32* @R300_PIXCLK_DVO_ALWAYS_ONb, align 4
  %709 = or i32 %707, %708
  %710 = load i32, i32* @RADEON_PIXCLK_LVDS_ALWAYS_ONb, align 4
  %711 = or i32 %709, %710
  %712 = load i32, i32* @RADEON_PIXCLK_TMDS_ALWAYS_ONb, align 4
  %713 = or i32 %711, %712
  %714 = load i32, i32* @R300_PIXCLK_TRANS_ALWAYS_ONb, align 4
  %715 = or i32 %713, %714
  %716 = load i32, i32* @R300_PIXCLK_TVO_ALWAYS_ONb, align 4
  %717 = or i32 %715, %716
  %718 = load i32, i32* @R300_P2G2CLK_ALWAYS_ONb, align 4
  %719 = or i32 %717, %718
  %720 = load i32, i32* @R300_P2G2CLK_DAC_ALWAYS_ONb, align 4
  %721 = or i32 %719, %720
  %722 = load i32, i32* @R300_DISP_DAC_PIXCLK_DAC2_BLANK_OFF, align 4
  %723 = or i32 %721, %722
  %724 = xor i32 %723, -1
  %725 = load i32, i32* %5, align 4
  %726 = and i32 %725, %724
  store i32 %726, i32* %5, align 4
  %727 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %728 = load i32, i32* %5, align 4
  %729 = call i32 @WREG32_PLL(i32 %727, i32 %728)
  br label %1040

730:                                              ; preds = %629
  %731 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %732 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %731, i32 0, i32 1
  %733 = load i64, i64* %732, align 8
  %734 = load i64, i64* @CHIP_RV350, align 8
  %735 = icmp sge i64 %733, %734
  br i1 %735, label %736, label %859

736:                                              ; preds = %730
  %737 = load i32, i32* @R300_SCLK_CNTL2, align 4
  %738 = call i32 @RREG32_PLL(i32 %737)
  store i32 %738, i32* %5, align 4
  %739 = load i32, i32* @R300_SCLK_FORCE_TCL, align 4
  %740 = load i32, i32* @R300_SCLK_FORCE_GA, align 4
  %741 = or i32 %739, %740
  %742 = load i32, i32* @R300_SCLK_FORCE_CBA, align 4
  %743 = or i32 %741, %742
  %744 = load i32, i32* %5, align 4
  %745 = or i32 %744, %743
  store i32 %745, i32* %5, align 4
  %746 = load i32, i32* @R300_SCLK_CNTL2, align 4
  %747 = load i32, i32* %5, align 4
  %748 = call i32 @WREG32_PLL(i32 %746, i32 %747)
  %749 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %750 = call i32 @RREG32_PLL(i32 %749)
  store i32 %750, i32* %5, align 4
  %751 = load i32, i32* @RADEON_SCLK_FORCE_DISP2, align 4
  %752 = load i32, i32* @RADEON_SCLK_FORCE_CP, align 4
  %753 = or i32 %751, %752
  %754 = load i32, i32* @RADEON_SCLK_FORCE_HDP, align 4
  %755 = or i32 %753, %754
  %756 = load i32, i32* @RADEON_SCLK_FORCE_DISP1, align 4
  %757 = or i32 %755, %756
  %758 = load i32, i32* @RADEON_SCLK_FORCE_TOP, align 4
  %759 = or i32 %757, %758
  %760 = load i32, i32* @RADEON_SCLK_FORCE_E2, align 4
  %761 = or i32 %759, %760
  %762 = load i32, i32* @R300_SCLK_FORCE_VAP, align 4
  %763 = or i32 %761, %762
  %764 = load i32, i32* @RADEON_SCLK_FORCE_IDCT, align 4
  %765 = or i32 %763, %764
  %766 = load i32, i32* @RADEON_SCLK_FORCE_VIP, align 4
  %767 = or i32 %765, %766
  %768 = load i32, i32* @R300_SCLK_FORCE_SR, align 4
  %769 = or i32 %767, %768
  %770 = load i32, i32* @R300_SCLK_FORCE_PX, align 4
  %771 = or i32 %769, %770
  %772 = load i32, i32* @R300_SCLK_FORCE_TX, align 4
  %773 = or i32 %771, %772
  %774 = load i32, i32* @R300_SCLK_FORCE_US, align 4
  %775 = or i32 %773, %774
  %776 = load i32, i32* @RADEON_SCLK_FORCE_TV_SCLK, align 4
  %777 = or i32 %775, %776
  %778 = load i32, i32* @R300_SCLK_FORCE_SU, align 4
  %779 = or i32 %777, %778
  %780 = load i32, i32* @RADEON_SCLK_FORCE_OV0, align 4
  %781 = or i32 %779, %780
  %782 = load i32, i32* %5, align 4
  %783 = or i32 %782, %781
  store i32 %783, i32* %5, align 4
  %784 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %785 = load i32, i32* %5, align 4
  %786 = call i32 @WREG32_PLL(i32 %784, i32 %785)
  %787 = load i32, i32* @RADEON_SCLK_MORE_CNTL, align 4
  %788 = call i32 @RREG32_PLL(i32 %787)
  store i32 %788, i32* %5, align 4
  %789 = load i32, i32* @RADEON_SCLK_MORE_FORCEON, align 4
  %790 = load i32, i32* %5, align 4
  %791 = or i32 %790, %789
  store i32 %791, i32* %5, align 4
  %792 = load i32, i32* @RADEON_SCLK_MORE_CNTL, align 4
  %793 = load i32, i32* %5, align 4
  %794 = call i32 @WREG32_PLL(i32 %792, i32 %793)
  %795 = load i32, i32* @RADEON_MCLK_CNTL, align 4
  %796 = call i32 @RREG32_PLL(i32 %795)
  store i32 %796, i32* %5, align 4
  %797 = load i32, i32* @RADEON_FORCEON_MCLKA, align 4
  %798 = load i32, i32* @RADEON_FORCEON_MCLKB, align 4
  %799 = or i32 %797, %798
  %800 = load i32, i32* @RADEON_FORCEON_YCLKA, align 4
  %801 = or i32 %799, %800
  %802 = load i32, i32* @RADEON_FORCEON_YCLKB, align 4
  %803 = or i32 %801, %802
  %804 = load i32, i32* @RADEON_FORCEON_MC, align 4
  %805 = or i32 %803, %804
  %806 = load i32, i32* %5, align 4
  %807 = or i32 %806, %805
  store i32 %807, i32* %5, align 4
  %808 = load i32, i32* @RADEON_MCLK_CNTL, align 4
  %809 = load i32, i32* %5, align 4
  %810 = call i32 @WREG32_PLL(i32 %808, i32 %809)
  %811 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %812 = call i32 @RREG32_PLL(i32 %811)
  store i32 %812, i32* %5, align 4
  %813 = load i32, i32* @RADEON_PIXCLK_ALWAYS_ONb, align 4
  %814 = load i32, i32* @RADEON_PIXCLK_DAC_ALWAYS_ONb, align 4
  %815 = or i32 %813, %814
  %816 = load i32, i32* @R300_DISP_DAC_PIXCLK_DAC_BLANK_OFF, align 4
  %817 = or i32 %815, %816
  %818 = xor i32 %817, -1
  %819 = load i32, i32* %5, align 4
  %820 = and i32 %819, %818
  store i32 %820, i32* %5, align 4
  %821 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %822 = load i32, i32* %5, align 4
  %823 = call i32 @WREG32_PLL(i32 %821, i32 %822)
  %824 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %825 = call i32 @RREG32_PLL(i32 %824)
  store i32 %825, i32* %5, align 4
  %826 = load i32, i32* @RADEON_PIX2CLK_ALWAYS_ONb, align 4
  %827 = load i32, i32* @RADEON_PIX2CLK_DAC_ALWAYS_ONb, align 4
  %828 = or i32 %826, %827
  %829 = load i32, i32* @RADEON_DISP_TVOUT_PIXCLK_TV_ALWAYS_ONb, align 4
  %830 = or i32 %828, %829
  %831 = load i32, i32* @R300_DVOCLK_ALWAYS_ONb, align 4
  %832 = or i32 %830, %831
  %833 = load i32, i32* @RADEON_PIXCLK_BLEND_ALWAYS_ONb, align 4
  %834 = or i32 %832, %833
  %835 = load i32, i32* @RADEON_PIXCLK_GV_ALWAYS_ONb, align 4
  %836 = or i32 %834, %835
  %837 = load i32, i32* @R300_PIXCLK_DVO_ALWAYS_ONb, align 4
  %838 = or i32 %836, %837
  %839 = load i32, i32* @RADEON_PIXCLK_LVDS_ALWAYS_ONb, align 4
  %840 = or i32 %838, %839
  %841 = load i32, i32* @RADEON_PIXCLK_TMDS_ALWAYS_ONb, align 4
  %842 = or i32 %840, %841
  %843 = load i32, i32* @R300_PIXCLK_TRANS_ALWAYS_ONb, align 4
  %844 = or i32 %842, %843
  %845 = load i32, i32* @R300_PIXCLK_TVO_ALWAYS_ONb, align 4
  %846 = or i32 %844, %845
  %847 = load i32, i32* @R300_P2G2CLK_ALWAYS_ONb, align 4
  %848 = or i32 %846, %847
  %849 = load i32, i32* @R300_P2G2CLK_DAC_ALWAYS_ONb, align 4
  %850 = or i32 %848, %849
  %851 = load i32, i32* @R300_DISP_DAC_PIXCLK_DAC2_BLANK_OFF, align 4
  %852 = or i32 %850, %851
  %853 = xor i32 %852, -1
  %854 = load i32, i32* %5, align 4
  %855 = and i32 %854, %853
  store i32 %855, i32* %5, align 4
  %856 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %857 = load i32, i32* %5, align 4
  %858 = call i32 @WREG32_PLL(i32 %856, i32 %857)
  br label %1039

859:                                              ; preds = %730
  %860 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %861 = call i32 @RREG32_PLL(i32 %860)
  store i32 %861, i32* %5, align 4
  %862 = load i32, i32* @RADEON_SCLK_FORCE_CP, align 4
  %863 = load i32, i32* @RADEON_SCLK_FORCE_E2, align 4
  %864 = or i32 %862, %863
  %865 = load i32, i32* %5, align 4
  %866 = or i32 %865, %864
  store i32 %866, i32* %5, align 4
  %867 = load i32, i32* @RADEON_SCLK_FORCE_SE, align 4
  %868 = load i32, i32* %5, align 4
  %869 = or i32 %868, %867
  store i32 %869, i32* %5, align 4
  %870 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %871 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %870, i32 0, i32 0
  %872 = load i32, i32* %871, align 8
  %873 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %874 = and i32 %872, %873
  %875 = icmp ne i32 %874, 0
  br i1 %875, label %876, label %900

876:                                              ; preds = %859
  %877 = load i32, i32* @RADEON_SCLK_FORCE_RB, align 4
  %878 = load i32, i32* @RADEON_SCLK_FORCE_TDM, align 4
  %879 = or i32 %877, %878
  %880 = load i32, i32* @RADEON_SCLK_FORCE_TAM, align 4
  %881 = or i32 %879, %880
  %882 = load i32, i32* @RADEON_SCLK_FORCE_PB, align 4
  %883 = or i32 %881, %882
  %884 = load i32, i32* @RADEON_SCLK_FORCE_RE, align 4
  %885 = or i32 %883, %884
  %886 = load i32, i32* @RADEON_SCLK_FORCE_VIP, align 4
  %887 = or i32 %885, %886
  %888 = load i32, i32* @RADEON_SCLK_FORCE_IDCT, align 4
  %889 = or i32 %887, %888
  %890 = load i32, i32* @RADEON_SCLK_FORCE_TOP, align 4
  %891 = or i32 %889, %890
  %892 = load i32, i32* @RADEON_SCLK_FORCE_DISP1, align 4
  %893 = or i32 %891, %892
  %894 = load i32, i32* @RADEON_SCLK_FORCE_DISP2, align 4
  %895 = or i32 %893, %894
  %896 = load i32, i32* @RADEON_SCLK_FORCE_HDP, align 4
  %897 = or i32 %895, %896
  %898 = load i32, i32* %5, align 4
  %899 = or i32 %898, %897
  store i32 %899, i32* %5, align 4
  br label %927

900:                                              ; preds = %859
  %901 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %902 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %901, i32 0, i32 1
  %903 = load i64, i64* %902, align 8
  %904 = load i64, i64* @CHIP_R300, align 8
  %905 = icmp eq i64 %903, %904
  br i1 %905, label %912, label %906

906:                                              ; preds = %900
  %907 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %908 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %907, i32 0, i32 1
  %909 = load i64, i64* %908, align 8
  %910 = load i64, i64* @CHIP_R350, align 8
  %911 = icmp eq i64 %909, %910
  br i1 %911, label %912, label %926

912:                                              ; preds = %906, %900
  %913 = load i32, i32* @RADEON_SCLK_FORCE_HDP, align 4
  %914 = load i32, i32* @RADEON_SCLK_FORCE_DISP1, align 4
  %915 = or i32 %913, %914
  %916 = load i32, i32* @RADEON_SCLK_FORCE_DISP2, align 4
  %917 = or i32 %915, %916
  %918 = load i32, i32* @RADEON_SCLK_FORCE_TOP, align 4
  %919 = or i32 %917, %918
  %920 = load i32, i32* @RADEON_SCLK_FORCE_IDCT, align 4
  %921 = or i32 %919, %920
  %922 = load i32, i32* @RADEON_SCLK_FORCE_VIP, align 4
  %923 = or i32 %921, %922
  %924 = load i32, i32* %5, align 4
  %925 = or i32 %924, %923
  store i32 %925, i32* %5, align 4
  br label %926

926:                                              ; preds = %912, %906
  br label %927

927:                                              ; preds = %926, %876
  %928 = load i32, i32* @RADEON_SCLK_CNTL, align 4
  %929 = load i32, i32* %5, align 4
  %930 = call i32 @WREG32_PLL(i32 %928, i32 %929)
  %931 = call i32 @mdelay(i32 16)
  %932 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %933 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %932, i32 0, i32 1
  %934 = load i64, i64* %933, align 8
  %935 = load i64, i64* @CHIP_R300, align 8
  %936 = icmp eq i64 %934, %935
  br i1 %936, label %943, label %937

937:                                              ; preds = %927
  %938 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %939 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %938, i32 0, i32 1
  %940 = load i64, i64* %939, align 8
  %941 = load i64, i64* @CHIP_R350, align 8
  %942 = icmp eq i64 %940, %941
  br i1 %942, label %943, label %957

943:                                              ; preds = %937, %927
  %944 = load i32, i32* @R300_SCLK_CNTL2, align 4
  %945 = call i32 @RREG32_PLL(i32 %944)
  store i32 %945, i32* %5, align 4
  %946 = load i32, i32* @R300_SCLK_FORCE_TCL, align 4
  %947 = load i32, i32* @R300_SCLK_FORCE_GA, align 4
  %948 = or i32 %946, %947
  %949 = load i32, i32* @R300_SCLK_FORCE_CBA, align 4
  %950 = or i32 %948, %949
  %951 = load i32, i32* %5, align 4
  %952 = or i32 %951, %950
  store i32 %952, i32* %5, align 4
  %953 = load i32, i32* @R300_SCLK_CNTL2, align 4
  %954 = load i32, i32* %5, align 4
  %955 = call i32 @WREG32_PLL(i32 %953, i32 %954)
  %956 = call i32 @mdelay(i32 16)
  br label %957

957:                                              ; preds = %943, %937
  %958 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %959 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %958, i32 0, i32 0
  %960 = load i32, i32* %959, align 8
  %961 = load i32, i32* @RADEON_IS_IGP, align 4
  %962 = and i32 %960, %961
  %963 = icmp ne i32 %962, 0
  br i1 %963, label %964, label %977

964:                                              ; preds = %957
  %965 = load i32, i32* @RADEON_MCLK_CNTL, align 4
  %966 = call i32 @RREG32_PLL(i32 %965)
  store i32 %966, i32* %5, align 4
  %967 = load i32, i32* @RADEON_FORCEON_MCLKA, align 4
  %968 = load i32, i32* @RADEON_FORCEON_YCLKA, align 4
  %969 = or i32 %967, %968
  %970 = xor i32 %969, -1
  %971 = load i32, i32* %5, align 4
  %972 = and i32 %971, %970
  store i32 %972, i32* %5, align 4
  %973 = load i32, i32* @RADEON_MCLK_CNTL, align 4
  %974 = load i32, i32* %5, align 4
  %975 = call i32 @WREG32_PLL(i32 %973, i32 %974)
  %976 = call i32 @mdelay(i32 16)
  br label %977

977:                                              ; preds = %964, %957
  %978 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %979 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %978, i32 0, i32 1
  %980 = load i64, i64* %979, align 8
  %981 = load i64, i64* @CHIP_RV200, align 8
  %982 = icmp eq i64 %980, %981
  br i1 %982, label %995, label %983

983:                                              ; preds = %977
  %984 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %985 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %984, i32 0, i32 1
  %986 = load i64, i64* %985, align 8
  %987 = load i64, i64* @CHIP_RV250, align 8
  %988 = icmp eq i64 %986, %987
  br i1 %988, label %995, label %989

989:                                              ; preds = %983
  %990 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %991 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %990, i32 0, i32 1
  %992 = load i64, i64* %991, align 8
  %993 = load i64, i64* @CHIP_RV280, align 8
  %994 = icmp eq i64 %992, %993
  br i1 %994, label %995, label %1005

995:                                              ; preds = %989, %983, %977
  %996 = load i32, i32* @RADEON_SCLK_MORE_CNTL, align 4
  %997 = call i32 @RREG32_PLL(i32 %996)
  store i32 %997, i32* %5, align 4
  %998 = load i32, i32* @RADEON_SCLK_MORE_FORCEON, align 4
  %999 = load i32, i32* %5, align 4
  %1000 = or i32 %999, %998
  store i32 %1000, i32* %5, align 4
  %1001 = load i32, i32* @RADEON_SCLK_MORE_CNTL, align 4
  %1002 = load i32, i32* %5, align 4
  %1003 = call i32 @WREG32_PLL(i32 %1001, i32 %1002)
  %1004 = call i32 @mdelay(i32 16)
  br label %1005

1005:                                             ; preds = %995, %989
  %1006 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %1007 = call i32 @RREG32_PLL(i32 %1006)
  store i32 %1007, i32* %5, align 4
  %1008 = load i32, i32* @RADEON_PIX2CLK_ALWAYS_ONb, align 4
  %1009 = load i32, i32* @RADEON_PIX2CLK_DAC_ALWAYS_ONb, align 4
  %1010 = or i32 %1008, %1009
  %1011 = load i32, i32* @RADEON_PIXCLK_BLEND_ALWAYS_ONb, align 4
  %1012 = or i32 %1010, %1011
  %1013 = load i32, i32* @RADEON_PIXCLK_GV_ALWAYS_ONb, align 4
  %1014 = or i32 %1012, %1013
  %1015 = load i32, i32* @RADEON_PIXCLK_DIG_TMDS_ALWAYS_ONb, align 4
  %1016 = or i32 %1014, %1015
  %1017 = load i32, i32* @RADEON_PIXCLK_LVDS_ALWAYS_ONb, align 4
  %1018 = or i32 %1016, %1017
  %1019 = load i32, i32* @RADEON_PIXCLK_TMDS_ALWAYS_ONb, align 4
  %1020 = or i32 %1018, %1019
  %1021 = xor i32 %1020, -1
  %1022 = load i32, i32* %5, align 4
  %1023 = and i32 %1022, %1021
  store i32 %1023, i32* %5, align 4
  %1024 = load i32, i32* @RADEON_PIXCLKS_CNTL, align 4
  %1025 = load i32, i32* %5, align 4
  %1026 = call i32 @WREG32_PLL(i32 %1024, i32 %1025)
  %1027 = call i32 @mdelay(i32 16)
  %1028 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %1029 = call i32 @RREG32_PLL(i32 %1028)
  store i32 %1029, i32* %5, align 4
  %1030 = load i32, i32* @RADEON_PIXCLK_ALWAYS_ONb, align 4
  %1031 = load i32, i32* @RADEON_PIXCLK_DAC_ALWAYS_ONb, align 4
  %1032 = or i32 %1030, %1031
  %1033 = xor i32 %1032, -1
  %1034 = load i32, i32* %5, align 4
  %1035 = and i32 %1034, %1033
  store i32 %1035, i32* %5, align 4
  %1036 = load i32, i32* @RADEON_VCLK_ECP_CNTL, align 4
  %1037 = load i32, i32* %5, align 4
  %1038 = call i32 @WREG32_PLL(i32 %1036, i32 %1037)
  br label %1039

1039:                                             ; preds = %1005, %736
  br label %1040

1040:                                             ; preds = %1039, %635
  br label %1041

1041:                                             ; preds = %1040, %590
  br label %1042

1042:                                             ; preds = %1041, %582
  ret void
}

declare dso_local i32 @RREG32_PLL(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32_PLL(i32, i32) #1

declare dso_local i64 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

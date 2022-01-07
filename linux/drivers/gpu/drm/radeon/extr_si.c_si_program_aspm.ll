; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_program_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_program_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@radeon_aspm = common dso_local global i64 0, align 8
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@PCIE_LC_N_FTS_CNTL = common dso_local global i32 0, align 4
@LC_XMIT_N_FTS_MASK = common dso_local global i32 0, align 4
@LC_XMIT_N_FTS_OVERRIDE_EN = common dso_local global i32 0, align 4
@PCIE_LC_CNTL3 = common dso_local global i32 0, align 4
@LC_GO_TO_RECOVERY = common dso_local global i32 0, align 4
@PCIE_P_CNTL = common dso_local global i32 0, align 4
@P_IGNORE_EDB_ERR = common dso_local global i32 0, align 4
@PCIE_LC_CNTL = common dso_local global i32 0, align 4
@LC_L0S_INACTIVITY_MASK = common dso_local global i32 0, align 4
@LC_L1_INACTIVITY_MASK = common dso_local global i32 0, align 4
@LC_PMI_TO_L1_DIS = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_0 = common dso_local global i32 0, align 4
@PLL_POWER_STATE_IN_OFF_0_MASK = common dso_local global i32 0, align 4
@PLL_POWER_STATE_IN_TXS2_0_MASK = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_1 = common dso_local global i32 0, align 4
@PLL_POWER_STATE_IN_OFF_1_MASK = common dso_local global i32 0, align 4
@PLL_POWER_STATE_IN_TXS2_1_MASK = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_0 = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_1 = common dso_local global i32 0, align 4
@CHIP_OLAND = common dso_local global i64 0, align 8
@CHIP_HAINAN = common dso_local global i64 0, align 8
@PLL_RAMP_UP_TIME_0_MASK = common dso_local global i32 0, align 4
@PLL_RAMP_UP_TIME_1_MASK = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_2 = common dso_local global i32 0, align 4
@PLL_RAMP_UP_TIME_2_MASK = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_3 = common dso_local global i32 0, align 4
@PLL_RAMP_UP_TIME_3_MASK = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_2 = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_3 = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@LC_DYN_LANES_PWR_STATE_MASK = common dso_local global i32 0, align 4
@PB0_PIF_CNTL = common dso_local global i32 0, align 4
@LS2_EXIT_TIME_MASK = common dso_local global i32 0, align 4
@PB1_PIF_CNTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_CLKPM = common dso_local global i32 0, align 4
@PCIE_LC_CNTL2 = common dso_local global i32 0, align 4
@LC_ALLOW_PDWN_IN_L1 = common dso_local global i32 0, align 4
@LC_ALLOW_PDWN_IN_L23 = common dso_local global i32 0, align 4
@THM_CLK_CNTL = common dso_local global i32 0, align 4
@CMON_CLK_SEL_MASK = common dso_local global i32 0, align 4
@TMON_CLK_SEL_MASK = common dso_local global i32 0, align 4
@MISC_CLK_CNTL = common dso_local global i32 0, align 4
@DEEP_SLEEP_CLK_SEL_MASK = common dso_local global i32 0, align 4
@ZCLK_SEL_MASK = common dso_local global i32 0, align 4
@CG_CLKPIN_CNTL = common dso_local global i32 0, align 4
@BCLK_AS_XCLK = common dso_local global i32 0, align 4
@CG_CLKPIN_CNTL_2 = common dso_local global i32 0, align 4
@FORCE_BIF_REFCLK_EN = common dso_local global i32 0, align 4
@MPLL_BYPASSCLK_SEL = common dso_local global i32 0, align 4
@MPLL_CLKOUT_SEL_MASK = common dso_local global i32 0, align 4
@SPLL_CNTL_MODE = common dso_local global i32 0, align 4
@SPLL_REFCLK_SEL_MASK = common dso_local global i32 0, align 4
@PCIE_CNTL2 = common dso_local global i32 0, align 4
@SLV_MEM_LS_EN = common dso_local global i32 0, align 4
@MST_MEM_LS_EN = common dso_local global i32 0, align 4
@REPLAY_MEM_LS_EN = common dso_local global i32 0, align 4
@LC_N_FTS_MASK = common dso_local global i32 0, align 4
@PCIE_LC_STATUS1 = common dso_local global i32 0, align 4
@LC_REVERSE_XMIT = common dso_local global i32 0, align 4
@LC_REVERSE_RCVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_program_aspm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_program_aspm(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* @radeon_aspm, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %610

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RADEON_IS_PCIE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %610

23:                                               ; preds = %15
  %24 = load i32, i32* @PCIE_LC_N_FTS_CNTL, align 4
  %25 = call i32 @RREG32_PCIE_PORT(i32 %24)
  store i32 %25, i32* %3, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @LC_XMIT_N_FTS_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = call i32 @LC_XMIT_N_FTS(i32 36)
  %31 = load i32, i32* @LC_XMIT_N_FTS_OVERRIDE_EN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %23
  %39 = load i32, i32* @PCIE_LC_N_FTS_CNTL, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @WREG32_PCIE_PORT(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %23
  %43 = load i32, i32* @PCIE_LC_CNTL3, align 4
  %44 = call i32 @RREG32_PCIE_PORT(i32 %43)
  store i32 %44, i32* %3, align 4
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @LC_GO_TO_RECOVERY, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* @PCIE_LC_CNTL3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @WREG32_PCIE_PORT(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %42
  %56 = load i32, i32* @PCIE_P_CNTL, align 4
  %57 = call i32 @RREG32_PCIE(i32 %56)
  store i32 %57, i32* %3, align 4
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @P_IGNORE_EDB_ERR, align 4
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @PCIE_P_CNTL, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @WREG32_PCIE(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %55
  %69 = load i32, i32* @PCIE_LC_CNTL, align 4
  %70 = call i32 @RREG32_PCIE_PORT(i32 %69)
  store i32 %70, i32* %3, align 4
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @LC_L0S_INACTIVITY_MASK, align 4
  %72 = load i32, i32* @LC_L1_INACTIVITY_MASK, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* @LC_PMI_TO_L1_DIS, align 4
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %68
  %83 = call i32 @LC_L0S_INACTIVITY(i32 7)
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %68
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %544, label %89

89:                                               ; preds = %86
  %90 = call i32 @LC_L1_INACTIVITY(i32 7)
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* @LC_PMI_TO_L1_DIS, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %3, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = load i32, i32* @PCIE_LC_CNTL, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @WREG32_PCIE_PORT(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %89
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %543, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %109 = call i32 @RREG32_PIF_PHY0(i32 %108)
  store i32 %109, i32* %3, align 4
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* @PLL_POWER_STATE_IN_OFF_0_MASK, align 4
  %111 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_0_MASK, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %3, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %3, align 4
  %116 = call i32 @PLL_POWER_STATE_IN_OFF_0(i32 7)
  %117 = call i32 @PLL_POWER_STATE_IN_TXS2_0(i32 7)
  %118 = or i32 %116, %117
  %119 = load i32, i32* %3, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %3, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %107
  %125 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @WREG32_PIF_PHY0(i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %107
  %129 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %130 = call i32 @RREG32_PIF_PHY0(i32 %129)
  store i32 %130, i32* %3, align 4
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* @PLL_POWER_STATE_IN_OFF_1_MASK, align 4
  %132 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_1_MASK, align 4
  %133 = or i32 %131, %132
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %3, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %3, align 4
  %137 = call i32 @PLL_POWER_STATE_IN_OFF_1(i32 7)
  %138 = call i32 @PLL_POWER_STATE_IN_TXS2_1(i32 7)
  %139 = or i32 %137, %138
  %140 = load i32, i32* %3, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %3, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %128
  %146 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @WREG32_PIF_PHY0(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %128
  %150 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %151 = call i32 @RREG32_PIF_PHY1(i32 %150)
  store i32 %151, i32* %3, align 4
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* @PLL_POWER_STATE_IN_OFF_0_MASK, align 4
  %153 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_0_MASK, align 4
  %154 = or i32 %152, %153
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %3, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %3, align 4
  %158 = call i32 @PLL_POWER_STATE_IN_OFF_0(i32 7)
  %159 = call i32 @PLL_POWER_STATE_IN_TXS2_0(i32 7)
  %160 = or i32 %158, %159
  %161 = load i32, i32* %3, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %3, align 4
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* %3, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %149
  %167 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %168 = load i32, i32* %3, align 4
  %169 = call i32 @WREG32_PIF_PHY1(i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %149
  %171 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %172 = call i32 @RREG32_PIF_PHY1(i32 %171)
  store i32 %172, i32* %3, align 4
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* @PLL_POWER_STATE_IN_OFF_1_MASK, align 4
  %174 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_1_MASK, align 4
  %175 = or i32 %173, %174
  %176 = xor i32 %175, -1
  %177 = load i32, i32* %3, align 4
  %178 = and i32 %177, %176
  store i32 %178, i32* %3, align 4
  %179 = call i32 @PLL_POWER_STATE_IN_OFF_1(i32 7)
  %180 = call i32 @PLL_POWER_STATE_IN_TXS2_1(i32 7)
  %181 = or i32 %179, %180
  %182 = load i32, i32* %3, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %3, align 4
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* %3, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %170
  %188 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @WREG32_PIF_PHY1(i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %187, %170
  %192 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @CHIP_OLAND, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %316

197:                                              ; preds = %191
  %198 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %199 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @CHIP_HAINAN, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %316

203:                                              ; preds = %197
  %204 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %205 = call i32 @RREG32_PIF_PHY0(i32 %204)
  store i32 %205, i32* %3, align 4
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* @PLL_RAMP_UP_TIME_0_MASK, align 4
  %207 = xor i32 %206, -1
  %208 = load i32, i32* %3, align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* %3, align 4
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* %3, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %203
  %214 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %215 = load i32, i32* %3, align 4
  %216 = call i32 @WREG32_PIF_PHY0(i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %213, %203
  %218 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %219 = call i32 @RREG32_PIF_PHY0(i32 %218)
  store i32 %219, i32* %3, align 4
  store i32 %219, i32* %4, align 4
  %220 = load i32, i32* @PLL_RAMP_UP_TIME_1_MASK, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %3, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %3, align 4
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* %3, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %217
  %228 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %229 = load i32, i32* %3, align 4
  %230 = call i32 @WREG32_PIF_PHY0(i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %227, %217
  %232 = load i32, i32* @PB0_PIF_PWRDOWN_2, align 4
  %233 = call i32 @RREG32_PIF_PHY0(i32 %232)
  store i32 %233, i32* %3, align 4
  store i32 %233, i32* %4, align 4
  %234 = load i32, i32* @PLL_RAMP_UP_TIME_2_MASK, align 4
  %235 = xor i32 %234, -1
  %236 = load i32, i32* %3, align 4
  %237 = and i32 %236, %235
  store i32 %237, i32* %3, align 4
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* %3, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %231
  %242 = load i32, i32* @PB0_PIF_PWRDOWN_2, align 4
  %243 = load i32, i32* %3, align 4
  %244 = call i32 @WREG32_PIF_PHY0(i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %241, %231
  %246 = load i32, i32* @PB0_PIF_PWRDOWN_3, align 4
  %247 = call i32 @RREG32_PIF_PHY0(i32 %246)
  store i32 %247, i32* %3, align 4
  store i32 %247, i32* %4, align 4
  %248 = load i32, i32* @PLL_RAMP_UP_TIME_3_MASK, align 4
  %249 = xor i32 %248, -1
  %250 = load i32, i32* %3, align 4
  %251 = and i32 %250, %249
  store i32 %251, i32* %3, align 4
  %252 = load i32, i32* %4, align 4
  %253 = load i32, i32* %3, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %245
  %256 = load i32, i32* @PB0_PIF_PWRDOWN_3, align 4
  %257 = load i32, i32* %3, align 4
  %258 = call i32 @WREG32_PIF_PHY0(i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %255, %245
  %260 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %261 = call i32 @RREG32_PIF_PHY1(i32 %260)
  store i32 %261, i32* %3, align 4
  store i32 %261, i32* %4, align 4
  %262 = load i32, i32* @PLL_RAMP_UP_TIME_0_MASK, align 4
  %263 = xor i32 %262, -1
  %264 = load i32, i32* %3, align 4
  %265 = and i32 %264, %263
  store i32 %265, i32* %3, align 4
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* %3, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %259
  %270 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %271 = load i32, i32* %3, align 4
  %272 = call i32 @WREG32_PIF_PHY1(i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %269, %259
  %274 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %275 = call i32 @RREG32_PIF_PHY1(i32 %274)
  store i32 %275, i32* %3, align 4
  store i32 %275, i32* %4, align 4
  %276 = load i32, i32* @PLL_RAMP_UP_TIME_1_MASK, align 4
  %277 = xor i32 %276, -1
  %278 = load i32, i32* %3, align 4
  %279 = and i32 %278, %277
  store i32 %279, i32* %3, align 4
  %280 = load i32, i32* %4, align 4
  %281 = load i32, i32* %3, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %273
  %284 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %285 = load i32, i32* %3, align 4
  %286 = call i32 @WREG32_PIF_PHY1(i32 %284, i32 %285)
  br label %287

287:                                              ; preds = %283, %273
  %288 = load i32, i32* @PB1_PIF_PWRDOWN_2, align 4
  %289 = call i32 @RREG32_PIF_PHY1(i32 %288)
  store i32 %289, i32* %3, align 4
  store i32 %289, i32* %4, align 4
  %290 = load i32, i32* @PLL_RAMP_UP_TIME_2_MASK, align 4
  %291 = xor i32 %290, -1
  %292 = load i32, i32* %3, align 4
  %293 = and i32 %292, %291
  store i32 %293, i32* %3, align 4
  %294 = load i32, i32* %4, align 4
  %295 = load i32, i32* %3, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %287
  %298 = load i32, i32* @PB1_PIF_PWRDOWN_2, align 4
  %299 = load i32, i32* %3, align 4
  %300 = call i32 @WREG32_PIF_PHY1(i32 %298, i32 %299)
  br label %301

301:                                              ; preds = %297, %287
  %302 = load i32, i32* @PB1_PIF_PWRDOWN_3, align 4
  %303 = call i32 @RREG32_PIF_PHY1(i32 %302)
  store i32 %303, i32* %3, align 4
  store i32 %303, i32* %4, align 4
  %304 = load i32, i32* @PLL_RAMP_UP_TIME_3_MASK, align 4
  %305 = xor i32 %304, -1
  %306 = load i32, i32* %3, align 4
  %307 = and i32 %306, %305
  store i32 %307, i32* %3, align 4
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* %3, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %301
  %312 = load i32, i32* @PB1_PIF_PWRDOWN_3, align 4
  %313 = load i32, i32* %3, align 4
  %314 = call i32 @WREG32_PIF_PHY1(i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %311, %301
  br label %316

316:                                              ; preds = %315, %197, %191
  %317 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %318 = call i32 @RREG32_PCIE_PORT(i32 %317)
  store i32 %318, i32* %3, align 4
  store i32 %318, i32* %4, align 4
  %319 = load i32, i32* @LC_DYN_LANES_PWR_STATE_MASK, align 4
  %320 = xor i32 %319, -1
  %321 = load i32, i32* %3, align 4
  %322 = and i32 %321, %320
  store i32 %322, i32* %3, align 4
  %323 = call i32 @LC_DYN_LANES_PWR_STATE(i32 3)
  %324 = load i32, i32* %3, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %3, align 4
  %326 = load i32, i32* %4, align 4
  %327 = load i32, i32* %3, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %333

329:                                              ; preds = %316
  %330 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %331 = load i32, i32* %3, align 4
  %332 = call i32 @WREG32_PCIE_PORT(i32 %330, i32 %331)
  br label %333

333:                                              ; preds = %329, %316
  %334 = load i32, i32* @PB0_PIF_CNTL, align 4
  %335 = call i32 @RREG32_PIF_PHY0(i32 %334)
  store i32 %335, i32* %3, align 4
  store i32 %335, i32* %4, align 4
  %336 = load i32, i32* @LS2_EXIT_TIME_MASK, align 4
  %337 = xor i32 %336, -1
  %338 = load i32, i32* %3, align 4
  %339 = and i32 %338, %337
  store i32 %339, i32* %3, align 4
  %340 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %341 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @CHIP_OLAND, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %351, label %345

345:                                              ; preds = %333
  %346 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %347 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @CHIP_HAINAN, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %345, %333
  %352 = call i32 @LS2_EXIT_TIME(i32 5)
  %353 = load i32, i32* %3, align 4
  %354 = or i32 %353, %352
  store i32 %354, i32* %3, align 4
  br label %355

355:                                              ; preds = %351, %345
  %356 = load i32, i32* %4, align 4
  %357 = load i32, i32* %3, align 4
  %358 = icmp ne i32 %356, %357
  br i1 %358, label %359, label %363

359:                                              ; preds = %355
  %360 = load i32, i32* @PB0_PIF_CNTL, align 4
  %361 = load i32, i32* %3, align 4
  %362 = call i32 @WREG32_PIF_PHY0(i32 %360, i32 %361)
  br label %363

363:                                              ; preds = %359, %355
  %364 = load i32, i32* @PB1_PIF_CNTL, align 4
  %365 = call i32 @RREG32_PIF_PHY1(i32 %364)
  store i32 %365, i32* %3, align 4
  store i32 %365, i32* %4, align 4
  %366 = load i32, i32* @LS2_EXIT_TIME_MASK, align 4
  %367 = xor i32 %366, -1
  %368 = load i32, i32* %3, align 4
  %369 = and i32 %368, %367
  store i32 %369, i32* %3, align 4
  %370 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %371 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @CHIP_OLAND, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %381, label %375

375:                                              ; preds = %363
  %376 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %377 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @CHIP_HAINAN, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %385

381:                                              ; preds = %375, %363
  %382 = call i32 @LS2_EXIT_TIME(i32 5)
  %383 = load i32, i32* %3, align 4
  %384 = or i32 %383, %382
  store i32 %384, i32* %3, align 4
  br label %385

385:                                              ; preds = %381, %375
  %386 = load i32, i32* %4, align 4
  %387 = load i32, i32* %3, align 4
  %388 = icmp ne i32 %386, %387
  br i1 %388, label %389, label %393

389:                                              ; preds = %385
  %390 = load i32, i32* @PB1_PIF_CNTL, align 4
  %391 = load i32, i32* %3, align 4
  %392 = call i32 @WREG32_PIF_PHY1(i32 %390, i32 %391)
  br label %393

393:                                              ; preds = %389, %385
  %394 = load i32, i32* %8, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %421, label %396

396:                                              ; preds = %393
  %397 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %398 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %397, i32 0, i32 2
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 0
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %400, align 8
  %402 = call i32 @pci_is_root_bus(%struct.TYPE_4__* %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %421, label %404

404:                                              ; preds = %396
  %405 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %406 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %405, i32 0, i32 2
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 0
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 0
  %411 = load %struct.pci_dev*, %struct.pci_dev** %410, align 8
  store %struct.pci_dev* %411, %struct.pci_dev** %10, align 8
  store i32 0, i32* %9, align 4
  %412 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %413 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %414 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %412, i32 %413, i32* %11)
  %415 = load i32, i32* %11, align 4
  %416 = load i32, i32* @PCI_EXP_LNKCAP_CLKPM, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %404
  store i32 1, i32* %9, align 4
  br label %420

420:                                              ; preds = %419, %404
  br label %422

421:                                              ; preds = %396, %393
  store i32 0, i32* %9, align 4
  br label %422

422:                                              ; preds = %421, %420
  %423 = load i32, i32* %9, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %542

425:                                              ; preds = %422
  %426 = load i32, i32* @PCIE_LC_CNTL2, align 4
  %427 = call i32 @RREG32_PCIE_PORT(i32 %426)
  store i32 %427, i32* %3, align 4
  store i32 %427, i32* %4, align 4
  %428 = load i32, i32* @LC_ALLOW_PDWN_IN_L1, align 4
  %429 = load i32, i32* @LC_ALLOW_PDWN_IN_L23, align 4
  %430 = or i32 %428, %429
  %431 = load i32, i32* %3, align 4
  %432 = or i32 %431, %430
  store i32 %432, i32* %3, align 4
  %433 = load i32, i32* %4, align 4
  %434 = load i32, i32* %3, align 4
  %435 = icmp ne i32 %433, %434
  br i1 %435, label %436, label %440

436:                                              ; preds = %425
  %437 = load i32, i32* @PCIE_LC_CNTL2, align 4
  %438 = load i32, i32* %3, align 4
  %439 = call i32 @WREG32_PCIE_PORT(i32 %437, i32 %438)
  br label %440

440:                                              ; preds = %436, %425
  %441 = load i32, i32* @THM_CLK_CNTL, align 4
  %442 = call i32 @RREG32(i32 %441)
  store i32 %442, i32* %3, align 4
  store i32 %442, i32* %4, align 4
  %443 = load i32, i32* @CMON_CLK_SEL_MASK, align 4
  %444 = load i32, i32* @TMON_CLK_SEL_MASK, align 4
  %445 = or i32 %443, %444
  %446 = xor i32 %445, -1
  %447 = load i32, i32* %3, align 4
  %448 = and i32 %447, %446
  store i32 %448, i32* %3, align 4
  %449 = call i32 @CMON_CLK_SEL(i32 1)
  %450 = call i32 @TMON_CLK_SEL(i32 1)
  %451 = or i32 %449, %450
  %452 = load i32, i32* %3, align 4
  %453 = or i32 %452, %451
  store i32 %453, i32* %3, align 4
  %454 = load i32, i32* %4, align 4
  %455 = load i32, i32* %3, align 4
  %456 = icmp ne i32 %454, %455
  br i1 %456, label %457, label %461

457:                                              ; preds = %440
  %458 = load i32, i32* @THM_CLK_CNTL, align 4
  %459 = load i32, i32* %3, align 4
  %460 = call i32 @WREG32(i32 %458, i32 %459)
  br label %461

461:                                              ; preds = %457, %440
  %462 = load i32, i32* @MISC_CLK_CNTL, align 4
  %463 = call i32 @RREG32(i32 %462)
  store i32 %463, i32* %3, align 4
  store i32 %463, i32* %4, align 4
  %464 = load i32, i32* @DEEP_SLEEP_CLK_SEL_MASK, align 4
  %465 = load i32, i32* @ZCLK_SEL_MASK, align 4
  %466 = or i32 %464, %465
  %467 = xor i32 %466, -1
  %468 = load i32, i32* %3, align 4
  %469 = and i32 %468, %467
  store i32 %469, i32* %3, align 4
  %470 = call i32 @DEEP_SLEEP_CLK_SEL(i32 1)
  %471 = call i32 @ZCLK_SEL(i32 1)
  %472 = or i32 %470, %471
  %473 = load i32, i32* %3, align 4
  %474 = or i32 %473, %472
  store i32 %474, i32* %3, align 4
  %475 = load i32, i32* %4, align 4
  %476 = load i32, i32* %3, align 4
  %477 = icmp ne i32 %475, %476
  br i1 %477, label %478, label %482

478:                                              ; preds = %461
  %479 = load i32, i32* @MISC_CLK_CNTL, align 4
  %480 = load i32, i32* %3, align 4
  %481 = call i32 @WREG32(i32 %479, i32 %480)
  br label %482

482:                                              ; preds = %478, %461
  %483 = load i32, i32* @CG_CLKPIN_CNTL, align 4
  %484 = call i32 @RREG32(i32 %483)
  store i32 %484, i32* %3, align 4
  store i32 %484, i32* %4, align 4
  %485 = load i32, i32* @BCLK_AS_XCLK, align 4
  %486 = xor i32 %485, -1
  %487 = load i32, i32* %3, align 4
  %488 = and i32 %487, %486
  store i32 %488, i32* %3, align 4
  %489 = load i32, i32* %4, align 4
  %490 = load i32, i32* %3, align 4
  %491 = icmp ne i32 %489, %490
  br i1 %491, label %492, label %496

492:                                              ; preds = %482
  %493 = load i32, i32* @CG_CLKPIN_CNTL, align 4
  %494 = load i32, i32* %3, align 4
  %495 = call i32 @WREG32(i32 %493, i32 %494)
  br label %496

496:                                              ; preds = %492, %482
  %497 = load i32, i32* @CG_CLKPIN_CNTL_2, align 4
  %498 = call i32 @RREG32(i32 %497)
  store i32 %498, i32* %3, align 4
  store i32 %498, i32* %4, align 4
  %499 = load i32, i32* @FORCE_BIF_REFCLK_EN, align 4
  %500 = xor i32 %499, -1
  %501 = load i32, i32* %3, align 4
  %502 = and i32 %501, %500
  store i32 %502, i32* %3, align 4
  %503 = load i32, i32* %4, align 4
  %504 = load i32, i32* %3, align 4
  %505 = icmp ne i32 %503, %504
  br i1 %505, label %506, label %510

506:                                              ; preds = %496
  %507 = load i32, i32* @CG_CLKPIN_CNTL_2, align 4
  %508 = load i32, i32* %3, align 4
  %509 = call i32 @WREG32(i32 %507, i32 %508)
  br label %510

510:                                              ; preds = %506, %496
  %511 = load i32, i32* @MPLL_BYPASSCLK_SEL, align 4
  %512 = call i32 @RREG32(i32 %511)
  store i32 %512, i32* %3, align 4
  store i32 %512, i32* %4, align 4
  %513 = load i32, i32* @MPLL_CLKOUT_SEL_MASK, align 4
  %514 = xor i32 %513, -1
  %515 = load i32, i32* %3, align 4
  %516 = and i32 %515, %514
  store i32 %516, i32* %3, align 4
  %517 = call i32 @MPLL_CLKOUT_SEL(i32 4)
  %518 = load i32, i32* %3, align 4
  %519 = or i32 %518, %517
  store i32 %519, i32* %3, align 4
  %520 = load i32, i32* %4, align 4
  %521 = load i32, i32* %3, align 4
  %522 = icmp ne i32 %520, %521
  br i1 %522, label %523, label %527

523:                                              ; preds = %510
  %524 = load i32, i32* @MPLL_BYPASSCLK_SEL, align 4
  %525 = load i32, i32* %3, align 4
  %526 = call i32 @WREG32(i32 %524, i32 %525)
  br label %527

527:                                              ; preds = %523, %510
  %528 = load i32, i32* @SPLL_CNTL_MODE, align 4
  %529 = call i32 @RREG32(i32 %528)
  store i32 %529, i32* %3, align 4
  store i32 %529, i32* %4, align 4
  %530 = load i32, i32* @SPLL_REFCLK_SEL_MASK, align 4
  %531 = xor i32 %530, -1
  %532 = load i32, i32* %3, align 4
  %533 = and i32 %532, %531
  store i32 %533, i32* %3, align 4
  %534 = load i32, i32* %4, align 4
  %535 = load i32, i32* %3, align 4
  %536 = icmp ne i32 %534, %535
  br i1 %536, label %537, label %541

537:                                              ; preds = %527
  %538 = load i32, i32* @SPLL_CNTL_MODE, align 4
  %539 = load i32, i32* %3, align 4
  %540 = call i32 @WREG32(i32 %538, i32 %539)
  br label %541

541:                                              ; preds = %537, %527
  br label %542

542:                                              ; preds = %541, %422
  br label %543

543:                                              ; preds = %542, %104
  br label %553

544:                                              ; preds = %86
  %545 = load i32, i32* %4, align 4
  %546 = load i32, i32* %3, align 4
  %547 = icmp ne i32 %545, %546
  br i1 %547, label %548, label %552

548:                                              ; preds = %544
  %549 = load i32, i32* @PCIE_LC_CNTL, align 4
  %550 = load i32, i32* %3, align 4
  %551 = call i32 @WREG32_PCIE_PORT(i32 %549, i32 %550)
  br label %552

552:                                              ; preds = %548, %544
  br label %553

553:                                              ; preds = %552, %543
  %554 = load i32, i32* @PCIE_CNTL2, align 4
  %555 = call i32 @RREG32_PCIE(i32 %554)
  store i32 %555, i32* %3, align 4
  store i32 %555, i32* %4, align 4
  %556 = load i32, i32* @SLV_MEM_LS_EN, align 4
  %557 = load i32, i32* @MST_MEM_LS_EN, align 4
  %558 = or i32 %556, %557
  %559 = load i32, i32* @REPLAY_MEM_LS_EN, align 4
  %560 = or i32 %558, %559
  %561 = load i32, i32* %3, align 4
  %562 = or i32 %561, %560
  store i32 %562, i32* %3, align 4
  %563 = load i32, i32* %4, align 4
  %564 = load i32, i32* %3, align 4
  %565 = icmp ne i32 %563, %564
  br i1 %565, label %566, label %570

566:                                              ; preds = %553
  %567 = load i32, i32* @PCIE_CNTL2, align 4
  %568 = load i32, i32* %3, align 4
  %569 = call i32 @WREG32_PCIE(i32 %567, i32 %568)
  br label %570

570:                                              ; preds = %566, %553
  %571 = load i32, i32* %5, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %610, label %573

573:                                              ; preds = %570
  %574 = load i32, i32* @PCIE_LC_N_FTS_CNTL, align 4
  %575 = call i32 @RREG32_PCIE_PORT(i32 %574)
  store i32 %575, i32* %3, align 4
  %576 = load i32, i32* %3, align 4
  %577 = load i32, i32* @LC_N_FTS_MASK, align 4
  %578 = and i32 %576, %577
  %579 = load i32, i32* @LC_N_FTS_MASK, align 4
  %580 = icmp eq i32 %578, %579
  br i1 %580, label %581, label %609

581:                                              ; preds = %573
  %582 = load i32, i32* @PCIE_LC_STATUS1, align 4
  %583 = call i32 @RREG32_PCIE(i32 %582)
  store i32 %583, i32* %3, align 4
  %584 = load i32, i32* %3, align 4
  %585 = load i32, i32* @LC_REVERSE_XMIT, align 4
  %586 = and i32 %584, %585
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %608

588:                                              ; preds = %581
  %589 = load i32, i32* %3, align 4
  %590 = load i32, i32* @LC_REVERSE_RCVR, align 4
  %591 = and i32 %589, %590
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %608

593:                                              ; preds = %588
  %594 = load i32, i32* @PCIE_LC_CNTL, align 4
  %595 = call i32 @RREG32_PCIE_PORT(i32 %594)
  store i32 %595, i32* %3, align 4
  store i32 %595, i32* %4, align 4
  %596 = load i32, i32* @LC_L0S_INACTIVITY_MASK, align 4
  %597 = xor i32 %596, -1
  %598 = load i32, i32* %3, align 4
  %599 = and i32 %598, %597
  store i32 %599, i32* %3, align 4
  %600 = load i32, i32* %4, align 4
  %601 = load i32, i32* %3, align 4
  %602 = icmp ne i32 %600, %601
  br i1 %602, label %603, label %607

603:                                              ; preds = %593
  %604 = load i32, i32* @PCIE_LC_CNTL, align 4
  %605 = load i32, i32* %3, align 4
  %606 = call i32 @WREG32_PCIE_PORT(i32 %604, i32 %605)
  br label %607

607:                                              ; preds = %603, %593
  br label %608

608:                                              ; preds = %607, %588, %581
  br label %609

609:                                              ; preds = %608, %573
  br label %610

610:                                              ; preds = %14, %22, %609, %570
  ret void
}

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

declare dso_local i32 @LC_XMIT_N_FTS(i32) #1

declare dso_local i32 @WREG32_PCIE_PORT(i32, i32) #1

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @WREG32_PCIE(i32, i32) #1

declare dso_local i32 @LC_L0S_INACTIVITY(i32) #1

declare dso_local i32 @LC_L1_INACTIVITY(i32) #1

declare dso_local i32 @RREG32_PIF_PHY0(i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_OFF_0(i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_TXS2_0(i32) #1

declare dso_local i32 @WREG32_PIF_PHY0(i32, i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_OFF_1(i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_TXS2_1(i32) #1

declare dso_local i32 @RREG32_PIF_PHY1(i32) #1

declare dso_local i32 @WREG32_PIF_PHY1(i32, i32) #1

declare dso_local i32 @LC_DYN_LANES_PWR_STATE(i32) #1

declare dso_local i32 @LS2_EXIT_TIME(i32) #1

declare dso_local i32 @pci_is_root_bus(%struct.TYPE_4__*) #1

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @CMON_CLK_SEL(i32) #1

declare dso_local i32 @TMON_CLK_SEL(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @DEEP_SLEEP_CLK_SEL(i32) #1

declare dso_local i32 @ZCLK_SEL(i32) #1

declare dso_local i32 @MPLL_CLKOUT_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si.c_si_program_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si.c_si_program_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@amdgpu_aspm = common dso_local global i64 0, align 8
@AMD_IS_APU = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @si_program_aspm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_program_aspm(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* @amdgpu_aspm, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %638

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AMD_IS_APU, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %638

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
  br i1 %88, label %572, label %89

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
  br i1 %106, label %571, label %107

107:                                              ; preds = %104
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %109 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %110 = call i32 @si_pif_phy0_rreg(%struct.amdgpu_device* %108, i32 %109)
  store i32 %110, i32* %3, align 4
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* @PLL_POWER_STATE_IN_OFF_0_MASK, align 4
  %112 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_0_MASK, align 4
  %113 = or i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %3, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %3, align 4
  %117 = call i32 @PLL_POWER_STATE_IN_OFF_0(i32 7)
  %118 = call i32 @PLL_POWER_STATE_IN_TXS2_0(i32 7)
  %119 = or i32 %117, %118
  %120 = load i32, i32* %3, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %3, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %107
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %127 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @si_pif_phy0_wreg(%struct.amdgpu_device* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %125, %107
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %132 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %133 = call i32 @si_pif_phy0_rreg(%struct.amdgpu_device* %131, i32 %132)
  store i32 %133, i32* %3, align 4
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* @PLL_POWER_STATE_IN_OFF_1_MASK, align 4
  %135 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_1_MASK, align 4
  %136 = or i32 %134, %135
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %3, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %3, align 4
  %140 = call i32 @PLL_POWER_STATE_IN_OFF_1(i32 7)
  %141 = call i32 @PLL_POWER_STATE_IN_TXS2_1(i32 7)
  %142 = or i32 %140, %141
  %143 = load i32, i32* %3, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %3, align 4
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %3, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %130
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %150 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @si_pif_phy0_wreg(%struct.amdgpu_device* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %148, %130
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %155 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %156 = call i32 @si_pif_phy1_rreg(%struct.amdgpu_device* %154, i32 %155)
  store i32 %156, i32* %3, align 4
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* @PLL_POWER_STATE_IN_OFF_0_MASK, align 4
  %158 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_0_MASK, align 4
  %159 = or i32 %157, %158
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %3, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %3, align 4
  %163 = call i32 @PLL_POWER_STATE_IN_OFF_0(i32 7)
  %164 = call i32 @PLL_POWER_STATE_IN_TXS2_0(i32 7)
  %165 = or i32 %163, %164
  %166 = load i32, i32* %3, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %3, align 4
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* %3, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %153
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %173 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %174 = load i32, i32* %3, align 4
  %175 = call i32 @si_pif_phy1_wreg(%struct.amdgpu_device* %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %171, %153
  %177 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %178 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %179 = call i32 @si_pif_phy1_rreg(%struct.amdgpu_device* %177, i32 %178)
  store i32 %179, i32* %3, align 4
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* @PLL_POWER_STATE_IN_OFF_1_MASK, align 4
  %181 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_1_MASK, align 4
  %182 = or i32 %180, %181
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %3, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %3, align 4
  %186 = call i32 @PLL_POWER_STATE_IN_OFF_1(i32 7)
  %187 = call i32 @PLL_POWER_STATE_IN_TXS2_1(i32 7)
  %188 = or i32 %186, %187
  %189 = load i32, i32* %3, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %3, align 4
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* %3, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %176
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %196 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %197 = load i32, i32* %3, align 4
  %198 = call i32 @si_pif_phy1_wreg(%struct.amdgpu_device* %195, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %194, %176
  %200 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %201 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @CHIP_OLAND, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %340

205:                                              ; preds = %199
  %206 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %207 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @CHIP_HAINAN, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %340

211:                                              ; preds = %205
  %212 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %213 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %214 = call i32 @si_pif_phy0_rreg(%struct.amdgpu_device* %212, i32 %213)
  store i32 %214, i32* %3, align 4
  store i32 %214, i32* %4, align 4
  %215 = load i32, i32* @PLL_RAMP_UP_TIME_0_MASK, align 4
  %216 = xor i32 %215, -1
  %217 = load i32, i32* %3, align 4
  %218 = and i32 %217, %216
  store i32 %218, i32* %3, align 4
  %219 = load i32, i32* %4, align 4
  %220 = load i32, i32* %3, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %211
  %223 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %224 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %225 = load i32, i32* %3, align 4
  %226 = call i32 @si_pif_phy0_wreg(%struct.amdgpu_device* %223, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %222, %211
  %228 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %229 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %230 = call i32 @si_pif_phy0_rreg(%struct.amdgpu_device* %228, i32 %229)
  store i32 %230, i32* %3, align 4
  store i32 %230, i32* %4, align 4
  %231 = load i32, i32* @PLL_RAMP_UP_TIME_1_MASK, align 4
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %3, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %3, align 4
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* %3, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %227
  %239 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %240 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %241 = load i32, i32* %3, align 4
  %242 = call i32 @si_pif_phy0_wreg(%struct.amdgpu_device* %239, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %238, %227
  %244 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %245 = load i32, i32* @PB0_PIF_PWRDOWN_2, align 4
  %246 = call i32 @si_pif_phy0_rreg(%struct.amdgpu_device* %244, i32 %245)
  store i32 %246, i32* %3, align 4
  store i32 %246, i32* %4, align 4
  %247 = load i32, i32* @PLL_RAMP_UP_TIME_2_MASK, align 4
  %248 = xor i32 %247, -1
  %249 = load i32, i32* %3, align 4
  %250 = and i32 %249, %248
  store i32 %250, i32* %3, align 4
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* %3, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %243
  %255 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %256 = load i32, i32* @PB0_PIF_PWRDOWN_2, align 4
  %257 = load i32, i32* %3, align 4
  %258 = call i32 @si_pif_phy0_wreg(%struct.amdgpu_device* %255, i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %254, %243
  %260 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %261 = load i32, i32* @PB0_PIF_PWRDOWN_3, align 4
  %262 = call i32 @si_pif_phy0_rreg(%struct.amdgpu_device* %260, i32 %261)
  store i32 %262, i32* %3, align 4
  store i32 %262, i32* %4, align 4
  %263 = load i32, i32* @PLL_RAMP_UP_TIME_3_MASK, align 4
  %264 = xor i32 %263, -1
  %265 = load i32, i32* %3, align 4
  %266 = and i32 %265, %264
  store i32 %266, i32* %3, align 4
  %267 = load i32, i32* %4, align 4
  %268 = load i32, i32* %3, align 4
  %269 = icmp ne i32 %267, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %259
  %271 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %272 = load i32, i32* @PB0_PIF_PWRDOWN_3, align 4
  %273 = load i32, i32* %3, align 4
  %274 = call i32 @si_pif_phy0_wreg(%struct.amdgpu_device* %271, i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %270, %259
  %276 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %277 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %278 = call i32 @si_pif_phy1_rreg(%struct.amdgpu_device* %276, i32 %277)
  store i32 %278, i32* %3, align 4
  store i32 %278, i32* %4, align 4
  %279 = load i32, i32* @PLL_RAMP_UP_TIME_0_MASK, align 4
  %280 = xor i32 %279, -1
  %281 = load i32, i32* %3, align 4
  %282 = and i32 %281, %280
  store i32 %282, i32* %3, align 4
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* %3, align 4
  %285 = icmp ne i32 %283, %284
  br i1 %285, label %286, label %291

286:                                              ; preds = %275
  %287 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %288 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %289 = load i32, i32* %3, align 4
  %290 = call i32 @si_pif_phy1_wreg(%struct.amdgpu_device* %287, i32 %288, i32 %289)
  br label %291

291:                                              ; preds = %286, %275
  %292 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %293 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %294 = call i32 @si_pif_phy1_rreg(%struct.amdgpu_device* %292, i32 %293)
  store i32 %294, i32* %3, align 4
  store i32 %294, i32* %4, align 4
  %295 = load i32, i32* @PLL_RAMP_UP_TIME_1_MASK, align 4
  %296 = xor i32 %295, -1
  %297 = load i32, i32* %3, align 4
  %298 = and i32 %297, %296
  store i32 %298, i32* %3, align 4
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* %3, align 4
  %301 = icmp ne i32 %299, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %291
  %303 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %304 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %305 = load i32, i32* %3, align 4
  %306 = call i32 @si_pif_phy1_wreg(%struct.amdgpu_device* %303, i32 %304, i32 %305)
  br label %307

307:                                              ; preds = %302, %291
  %308 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %309 = load i32, i32* @PB1_PIF_PWRDOWN_2, align 4
  %310 = call i32 @si_pif_phy1_rreg(%struct.amdgpu_device* %308, i32 %309)
  store i32 %310, i32* %3, align 4
  store i32 %310, i32* %4, align 4
  %311 = load i32, i32* @PLL_RAMP_UP_TIME_2_MASK, align 4
  %312 = xor i32 %311, -1
  %313 = load i32, i32* %3, align 4
  %314 = and i32 %313, %312
  store i32 %314, i32* %3, align 4
  %315 = load i32, i32* %4, align 4
  %316 = load i32, i32* %3, align 4
  %317 = icmp ne i32 %315, %316
  br i1 %317, label %318, label %323

318:                                              ; preds = %307
  %319 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %320 = load i32, i32* @PB1_PIF_PWRDOWN_2, align 4
  %321 = load i32, i32* %3, align 4
  %322 = call i32 @si_pif_phy1_wreg(%struct.amdgpu_device* %319, i32 %320, i32 %321)
  br label %323

323:                                              ; preds = %318, %307
  %324 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %325 = load i32, i32* @PB1_PIF_PWRDOWN_3, align 4
  %326 = call i32 @si_pif_phy1_rreg(%struct.amdgpu_device* %324, i32 %325)
  store i32 %326, i32* %3, align 4
  store i32 %326, i32* %4, align 4
  %327 = load i32, i32* @PLL_RAMP_UP_TIME_3_MASK, align 4
  %328 = xor i32 %327, -1
  %329 = load i32, i32* %3, align 4
  %330 = and i32 %329, %328
  store i32 %330, i32* %3, align 4
  %331 = load i32, i32* %4, align 4
  %332 = load i32, i32* %3, align 4
  %333 = icmp ne i32 %331, %332
  br i1 %333, label %334, label %339

334:                                              ; preds = %323
  %335 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %336 = load i32, i32* @PB1_PIF_PWRDOWN_3, align 4
  %337 = load i32, i32* %3, align 4
  %338 = call i32 @si_pif_phy1_wreg(%struct.amdgpu_device* %335, i32 %336, i32 %337)
  br label %339

339:                                              ; preds = %334, %323
  br label %340

340:                                              ; preds = %339, %205, %199
  %341 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %342 = call i32 @RREG32_PCIE_PORT(i32 %341)
  store i32 %342, i32* %3, align 4
  store i32 %342, i32* %4, align 4
  %343 = load i32, i32* @LC_DYN_LANES_PWR_STATE_MASK, align 4
  %344 = xor i32 %343, -1
  %345 = load i32, i32* %3, align 4
  %346 = and i32 %345, %344
  store i32 %346, i32* %3, align 4
  %347 = call i32 @LC_DYN_LANES_PWR_STATE(i32 3)
  %348 = load i32, i32* %3, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %3, align 4
  %350 = load i32, i32* %4, align 4
  %351 = load i32, i32* %3, align 4
  %352 = icmp ne i32 %350, %351
  br i1 %352, label %353, label %357

353:                                              ; preds = %340
  %354 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %355 = load i32, i32* %3, align 4
  %356 = call i32 @WREG32_PCIE_PORT(i32 %354, i32 %355)
  br label %357

357:                                              ; preds = %353, %340
  %358 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %359 = load i32, i32* @PB0_PIF_CNTL, align 4
  %360 = call i32 @si_pif_phy0_rreg(%struct.amdgpu_device* %358, i32 %359)
  store i32 %360, i32* %3, align 4
  store i32 %360, i32* %4, align 4
  %361 = load i32, i32* @LS2_EXIT_TIME_MASK, align 4
  %362 = xor i32 %361, -1
  %363 = load i32, i32* %3, align 4
  %364 = and i32 %363, %362
  store i32 %364, i32* %3, align 4
  %365 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %366 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @CHIP_OLAND, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %376, label %370

370:                                              ; preds = %357
  %371 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %372 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @CHIP_HAINAN, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %380

376:                                              ; preds = %370, %357
  %377 = call i32 @LS2_EXIT_TIME(i32 5)
  %378 = load i32, i32* %3, align 4
  %379 = or i32 %378, %377
  store i32 %379, i32* %3, align 4
  br label %380

380:                                              ; preds = %376, %370
  %381 = load i32, i32* %4, align 4
  %382 = load i32, i32* %3, align 4
  %383 = icmp ne i32 %381, %382
  br i1 %383, label %384, label %389

384:                                              ; preds = %380
  %385 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %386 = load i32, i32* @PB0_PIF_CNTL, align 4
  %387 = load i32, i32* %3, align 4
  %388 = call i32 @si_pif_phy0_wreg(%struct.amdgpu_device* %385, i32 %386, i32 %387)
  br label %389

389:                                              ; preds = %384, %380
  %390 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %391 = load i32, i32* @PB1_PIF_CNTL, align 4
  %392 = call i32 @si_pif_phy1_rreg(%struct.amdgpu_device* %390, i32 %391)
  store i32 %392, i32* %3, align 4
  store i32 %392, i32* %4, align 4
  %393 = load i32, i32* @LS2_EXIT_TIME_MASK, align 4
  %394 = xor i32 %393, -1
  %395 = load i32, i32* %3, align 4
  %396 = and i32 %395, %394
  store i32 %396, i32* %3, align 4
  %397 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %398 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = load i64, i64* @CHIP_OLAND, align 8
  %401 = icmp eq i64 %399, %400
  br i1 %401, label %408, label %402

402:                                              ; preds = %389
  %403 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %404 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @CHIP_HAINAN, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %412

408:                                              ; preds = %402, %389
  %409 = call i32 @LS2_EXIT_TIME(i32 5)
  %410 = load i32, i32* %3, align 4
  %411 = or i32 %410, %409
  store i32 %411, i32* %3, align 4
  br label %412

412:                                              ; preds = %408, %402
  %413 = load i32, i32* %4, align 4
  %414 = load i32, i32* %3, align 4
  %415 = icmp ne i32 %413, %414
  br i1 %415, label %416, label %421

416:                                              ; preds = %412
  %417 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %418 = load i32, i32* @PB1_PIF_CNTL, align 4
  %419 = load i32, i32* %3, align 4
  %420 = call i32 @si_pif_phy1_wreg(%struct.amdgpu_device* %417, i32 %418, i32 %419)
  br label %421

421:                                              ; preds = %416, %412
  %422 = load i32, i32* %8, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %449, label %424

424:                                              ; preds = %421
  %425 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %426 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %425, i32 0, i32 2
  %427 = load %struct.TYPE_3__*, %struct.TYPE_3__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i32 0, i32 0
  %429 = load %struct.TYPE_4__*, %struct.TYPE_4__** %428, align 8
  %430 = call i32 @pci_is_root_bus(%struct.TYPE_4__* %429)
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %449, label %432

432:                                              ; preds = %424
  %433 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %434 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %433, i32 0, i32 2
  %435 = load %struct.TYPE_3__*, %struct.TYPE_3__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %435, i32 0, i32 0
  %437 = load %struct.TYPE_4__*, %struct.TYPE_4__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 0
  %439 = load %struct.pci_dev*, %struct.pci_dev** %438, align 8
  store %struct.pci_dev* %439, %struct.pci_dev** %10, align 8
  store i32 0, i32* %9, align 4
  %440 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %441 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %442 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %440, i32 %441, i32* %11)
  %443 = load i32, i32* %11, align 4
  %444 = load i32, i32* @PCI_EXP_LNKCAP_CLKPM, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %432
  store i32 1, i32* %9, align 4
  br label %448

448:                                              ; preds = %447, %432
  br label %450

449:                                              ; preds = %424, %421
  store i32 0, i32* %9, align 4
  br label %450

450:                                              ; preds = %449, %448
  %451 = load i32, i32* %9, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %570

453:                                              ; preds = %450
  %454 = load i32, i32* @PCIE_LC_CNTL2, align 4
  %455 = call i32 @RREG32_PCIE_PORT(i32 %454)
  store i32 %455, i32* %3, align 4
  store i32 %455, i32* %4, align 4
  %456 = load i32, i32* @LC_ALLOW_PDWN_IN_L1, align 4
  %457 = load i32, i32* @LC_ALLOW_PDWN_IN_L23, align 4
  %458 = or i32 %456, %457
  %459 = load i32, i32* %3, align 4
  %460 = or i32 %459, %458
  store i32 %460, i32* %3, align 4
  %461 = load i32, i32* %4, align 4
  %462 = load i32, i32* %3, align 4
  %463 = icmp ne i32 %461, %462
  br i1 %463, label %464, label %468

464:                                              ; preds = %453
  %465 = load i32, i32* @PCIE_LC_CNTL2, align 4
  %466 = load i32, i32* %3, align 4
  %467 = call i32 @WREG32_PCIE_PORT(i32 %465, i32 %466)
  br label %468

468:                                              ; preds = %464, %453
  %469 = load i32, i32* @THM_CLK_CNTL, align 4
  %470 = call i32 @RREG32(i32 %469)
  store i32 %470, i32* %3, align 4
  store i32 %470, i32* %4, align 4
  %471 = load i32, i32* @CMON_CLK_SEL_MASK, align 4
  %472 = load i32, i32* @TMON_CLK_SEL_MASK, align 4
  %473 = or i32 %471, %472
  %474 = xor i32 %473, -1
  %475 = load i32, i32* %3, align 4
  %476 = and i32 %475, %474
  store i32 %476, i32* %3, align 4
  %477 = call i32 @CMON_CLK_SEL(i32 1)
  %478 = call i32 @TMON_CLK_SEL(i32 1)
  %479 = or i32 %477, %478
  %480 = load i32, i32* %3, align 4
  %481 = or i32 %480, %479
  store i32 %481, i32* %3, align 4
  %482 = load i32, i32* %4, align 4
  %483 = load i32, i32* %3, align 4
  %484 = icmp ne i32 %482, %483
  br i1 %484, label %485, label %489

485:                                              ; preds = %468
  %486 = load i32, i32* @THM_CLK_CNTL, align 4
  %487 = load i32, i32* %3, align 4
  %488 = call i32 @WREG32(i32 %486, i32 %487)
  br label %489

489:                                              ; preds = %485, %468
  %490 = load i32, i32* @MISC_CLK_CNTL, align 4
  %491 = call i32 @RREG32(i32 %490)
  store i32 %491, i32* %3, align 4
  store i32 %491, i32* %4, align 4
  %492 = load i32, i32* @DEEP_SLEEP_CLK_SEL_MASK, align 4
  %493 = load i32, i32* @ZCLK_SEL_MASK, align 4
  %494 = or i32 %492, %493
  %495 = xor i32 %494, -1
  %496 = load i32, i32* %3, align 4
  %497 = and i32 %496, %495
  store i32 %497, i32* %3, align 4
  %498 = call i32 @DEEP_SLEEP_CLK_SEL(i32 1)
  %499 = call i32 @ZCLK_SEL(i32 1)
  %500 = or i32 %498, %499
  %501 = load i32, i32* %3, align 4
  %502 = or i32 %501, %500
  store i32 %502, i32* %3, align 4
  %503 = load i32, i32* %4, align 4
  %504 = load i32, i32* %3, align 4
  %505 = icmp ne i32 %503, %504
  br i1 %505, label %506, label %510

506:                                              ; preds = %489
  %507 = load i32, i32* @MISC_CLK_CNTL, align 4
  %508 = load i32, i32* %3, align 4
  %509 = call i32 @WREG32(i32 %507, i32 %508)
  br label %510

510:                                              ; preds = %506, %489
  %511 = load i32, i32* @CG_CLKPIN_CNTL, align 4
  %512 = call i32 @RREG32(i32 %511)
  store i32 %512, i32* %3, align 4
  store i32 %512, i32* %4, align 4
  %513 = load i32, i32* @BCLK_AS_XCLK, align 4
  %514 = xor i32 %513, -1
  %515 = load i32, i32* %3, align 4
  %516 = and i32 %515, %514
  store i32 %516, i32* %3, align 4
  %517 = load i32, i32* %4, align 4
  %518 = load i32, i32* %3, align 4
  %519 = icmp ne i32 %517, %518
  br i1 %519, label %520, label %524

520:                                              ; preds = %510
  %521 = load i32, i32* @CG_CLKPIN_CNTL, align 4
  %522 = load i32, i32* %3, align 4
  %523 = call i32 @WREG32(i32 %521, i32 %522)
  br label %524

524:                                              ; preds = %520, %510
  %525 = load i32, i32* @CG_CLKPIN_CNTL_2, align 4
  %526 = call i32 @RREG32(i32 %525)
  store i32 %526, i32* %3, align 4
  store i32 %526, i32* %4, align 4
  %527 = load i32, i32* @FORCE_BIF_REFCLK_EN, align 4
  %528 = xor i32 %527, -1
  %529 = load i32, i32* %3, align 4
  %530 = and i32 %529, %528
  store i32 %530, i32* %3, align 4
  %531 = load i32, i32* %4, align 4
  %532 = load i32, i32* %3, align 4
  %533 = icmp ne i32 %531, %532
  br i1 %533, label %534, label %538

534:                                              ; preds = %524
  %535 = load i32, i32* @CG_CLKPIN_CNTL_2, align 4
  %536 = load i32, i32* %3, align 4
  %537 = call i32 @WREG32(i32 %535, i32 %536)
  br label %538

538:                                              ; preds = %534, %524
  %539 = load i32, i32* @MPLL_BYPASSCLK_SEL, align 4
  %540 = call i32 @RREG32(i32 %539)
  store i32 %540, i32* %3, align 4
  store i32 %540, i32* %4, align 4
  %541 = load i32, i32* @MPLL_CLKOUT_SEL_MASK, align 4
  %542 = xor i32 %541, -1
  %543 = load i32, i32* %3, align 4
  %544 = and i32 %543, %542
  store i32 %544, i32* %3, align 4
  %545 = call i32 @MPLL_CLKOUT_SEL(i32 4)
  %546 = load i32, i32* %3, align 4
  %547 = or i32 %546, %545
  store i32 %547, i32* %3, align 4
  %548 = load i32, i32* %4, align 4
  %549 = load i32, i32* %3, align 4
  %550 = icmp ne i32 %548, %549
  br i1 %550, label %551, label %555

551:                                              ; preds = %538
  %552 = load i32, i32* @MPLL_BYPASSCLK_SEL, align 4
  %553 = load i32, i32* %3, align 4
  %554 = call i32 @WREG32(i32 %552, i32 %553)
  br label %555

555:                                              ; preds = %551, %538
  %556 = load i32, i32* @SPLL_CNTL_MODE, align 4
  %557 = call i32 @RREG32(i32 %556)
  store i32 %557, i32* %3, align 4
  store i32 %557, i32* %4, align 4
  %558 = load i32, i32* @SPLL_REFCLK_SEL_MASK, align 4
  %559 = xor i32 %558, -1
  %560 = load i32, i32* %3, align 4
  %561 = and i32 %560, %559
  store i32 %561, i32* %3, align 4
  %562 = load i32, i32* %4, align 4
  %563 = load i32, i32* %3, align 4
  %564 = icmp ne i32 %562, %563
  br i1 %564, label %565, label %569

565:                                              ; preds = %555
  %566 = load i32, i32* @SPLL_CNTL_MODE, align 4
  %567 = load i32, i32* %3, align 4
  %568 = call i32 @WREG32(i32 %566, i32 %567)
  br label %569

569:                                              ; preds = %565, %555
  br label %570

570:                                              ; preds = %569, %450
  br label %571

571:                                              ; preds = %570, %104
  br label %581

572:                                              ; preds = %86
  %573 = load i32, i32* %4, align 4
  %574 = load i32, i32* %3, align 4
  %575 = icmp ne i32 %573, %574
  br i1 %575, label %576, label %580

576:                                              ; preds = %572
  %577 = load i32, i32* @PCIE_LC_CNTL, align 4
  %578 = load i32, i32* %3, align 4
  %579 = call i32 @WREG32_PCIE_PORT(i32 %577, i32 %578)
  br label %580

580:                                              ; preds = %576, %572
  br label %581

581:                                              ; preds = %580, %571
  %582 = load i32, i32* @PCIE_CNTL2, align 4
  %583 = call i32 @RREG32_PCIE(i32 %582)
  store i32 %583, i32* %3, align 4
  store i32 %583, i32* %4, align 4
  %584 = load i32, i32* @SLV_MEM_LS_EN, align 4
  %585 = load i32, i32* @MST_MEM_LS_EN, align 4
  %586 = or i32 %584, %585
  %587 = load i32, i32* @REPLAY_MEM_LS_EN, align 4
  %588 = or i32 %586, %587
  %589 = load i32, i32* %3, align 4
  %590 = or i32 %589, %588
  store i32 %590, i32* %3, align 4
  %591 = load i32, i32* %4, align 4
  %592 = load i32, i32* %3, align 4
  %593 = icmp ne i32 %591, %592
  br i1 %593, label %594, label %598

594:                                              ; preds = %581
  %595 = load i32, i32* @PCIE_CNTL2, align 4
  %596 = load i32, i32* %3, align 4
  %597 = call i32 @WREG32_PCIE(i32 %595, i32 %596)
  br label %598

598:                                              ; preds = %594, %581
  %599 = load i32, i32* %5, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %638, label %601

601:                                              ; preds = %598
  %602 = load i32, i32* @PCIE_LC_N_FTS_CNTL, align 4
  %603 = call i32 @RREG32_PCIE_PORT(i32 %602)
  store i32 %603, i32* %3, align 4
  %604 = load i32, i32* %3, align 4
  %605 = load i32, i32* @LC_N_FTS_MASK, align 4
  %606 = and i32 %604, %605
  %607 = load i32, i32* @LC_N_FTS_MASK, align 4
  %608 = icmp eq i32 %606, %607
  br i1 %608, label %609, label %637

609:                                              ; preds = %601
  %610 = load i32, i32* @PCIE_LC_STATUS1, align 4
  %611 = call i32 @RREG32_PCIE(i32 %610)
  store i32 %611, i32* %3, align 4
  %612 = load i32, i32* %3, align 4
  %613 = load i32, i32* @LC_REVERSE_XMIT, align 4
  %614 = and i32 %612, %613
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %636

616:                                              ; preds = %609
  %617 = load i32, i32* %3, align 4
  %618 = load i32, i32* @LC_REVERSE_RCVR, align 4
  %619 = and i32 %617, %618
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %636

621:                                              ; preds = %616
  %622 = load i32, i32* @PCIE_LC_CNTL, align 4
  %623 = call i32 @RREG32_PCIE_PORT(i32 %622)
  store i32 %623, i32* %3, align 4
  store i32 %623, i32* %4, align 4
  %624 = load i32, i32* @LC_L0S_INACTIVITY_MASK, align 4
  %625 = xor i32 %624, -1
  %626 = load i32, i32* %3, align 4
  %627 = and i32 %626, %625
  store i32 %627, i32* %3, align 4
  %628 = load i32, i32* %4, align 4
  %629 = load i32, i32* %3, align 4
  %630 = icmp ne i32 %628, %629
  br i1 %630, label %631, label %635

631:                                              ; preds = %621
  %632 = load i32, i32* @PCIE_LC_CNTL, align 4
  %633 = load i32, i32* %3, align 4
  %634 = call i32 @WREG32_PCIE_PORT(i32 %632, i32 %633)
  br label %635

635:                                              ; preds = %631, %621
  br label %636

636:                                              ; preds = %635, %616, %609
  br label %637

637:                                              ; preds = %636, %601
  br label %638

638:                                              ; preds = %14, %22, %637, %598
  ret void
}

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

declare dso_local i32 @LC_XMIT_N_FTS(i32) #1

declare dso_local i32 @WREG32_PCIE_PORT(i32, i32) #1

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @WREG32_PCIE(i32, i32) #1

declare dso_local i32 @LC_L0S_INACTIVITY(i32) #1

declare dso_local i32 @LC_L1_INACTIVITY(i32) #1

declare dso_local i32 @si_pif_phy0_rreg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_OFF_0(i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_TXS2_0(i32) #1

declare dso_local i32 @si_pif_phy0_wreg(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_OFF_1(i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_TXS2_1(i32) #1

declare dso_local i32 @si_pif_phy1_rreg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @si_pif_phy1_wreg(%struct.amdgpu_device*, i32, i32) #1

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

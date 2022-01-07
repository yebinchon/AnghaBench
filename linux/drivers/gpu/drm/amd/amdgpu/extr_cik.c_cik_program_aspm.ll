; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_program_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_program_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@amdgpu_aspm = common dso_local global i64 0, align 8
@AMD_IS_APU = common dso_local global i32 0, align 4
@ixPCIE_LC_N_FTS_CNTL = common dso_local global i32 0, align 4
@PCIE_LC_N_FTS_CNTL__LC_XMIT_N_FTS_MASK = common dso_local global i32 0, align 4
@PCIE_LC_N_FTS_CNTL__LC_XMIT_N_FTS__SHIFT = common dso_local global i32 0, align 4
@PCIE_LC_N_FTS_CNTL__LC_XMIT_N_FTS_OVERRIDE_EN_MASK = common dso_local global i32 0, align 4
@ixPCIE_LC_CNTL3 = common dso_local global i32 0, align 4
@PCIE_LC_CNTL3__LC_GO_TO_RECOVERY_MASK = common dso_local global i32 0, align 4
@ixPCIE_P_CNTL = common dso_local global i32 0, align 4
@PCIE_P_CNTL__P_IGNORE_EDB_ERR_MASK = common dso_local global i32 0, align 4
@ixPCIE_LC_CNTL = common dso_local global i32 0, align 4
@PCIE_LC_CNTL__LC_L0S_INACTIVITY_MASK = common dso_local global i32 0, align 4
@PCIE_LC_CNTL__LC_L1_INACTIVITY_MASK = common dso_local global i32 0, align 4
@PCIE_LC_CNTL__LC_PMI_TO_L1_DIS_MASK = common dso_local global i32 0, align 4
@PCIE_LC_CNTL__LC_L0S_INACTIVITY__SHIFT = common dso_local global i32 0, align 4
@PCIE_LC_CNTL__LC_L1_INACTIVITY__SHIFT = common dso_local global i32 0, align 4
@ixPB0_PIF_PWRDOWN_0 = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_OFF_0_MASK = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_TXS2_0_MASK = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_OFF_0__SHIFT = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_TXS2_0__SHIFT = common dso_local global i32 0, align 4
@ixPB0_PIF_PWRDOWN_1 = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_OFF_1_MASK = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_TXS2_1_MASK = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_OFF_1__SHIFT = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_TXS2_1__SHIFT = common dso_local global i32 0, align 4
@ixPB1_PIF_PWRDOWN_0 = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_OFF_0_MASK = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_TXS2_0_MASK = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_OFF_0__SHIFT = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_TXS2_0__SHIFT = common dso_local global i32 0, align 4
@ixPB1_PIF_PWRDOWN_1 = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_OFF_1_MASK = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_TXS2_1_MASK = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_OFF_1__SHIFT = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_TXS2_1__SHIFT = common dso_local global i32 0, align 4
@ixPCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL__LC_DYN_LANES_PWR_STATE_MASK = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL__LC_DYN_LANES_PWR_STATE__SHIFT = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_CLKPM = common dso_local global i32 0, align 4
@ixPCIE_LC_CNTL2 = common dso_local global i32 0, align 4
@PCIE_LC_CNTL2__LC_ALLOW_PDWN_IN_L1_MASK = common dso_local global i32 0, align 4
@PCIE_LC_CNTL2__LC_ALLOW_PDWN_IN_L23_MASK = common dso_local global i32 0, align 4
@ixTHM_CLK_CNTL = common dso_local global i32 0, align 4
@THM_CLK_CNTL__CMON_CLK_SEL_MASK = common dso_local global i32 0, align 4
@THM_CLK_CNTL__TMON_CLK_SEL_MASK = common dso_local global i32 0, align 4
@THM_CLK_CNTL__CMON_CLK_SEL__SHIFT = common dso_local global i32 0, align 4
@THM_CLK_CNTL__TMON_CLK_SEL__SHIFT = common dso_local global i32 0, align 4
@ixMISC_CLK_CTRL = common dso_local global i32 0, align 4
@MISC_CLK_CTRL__DEEP_SLEEP_CLK_SEL_MASK = common dso_local global i32 0, align 4
@MISC_CLK_CTRL__ZCLK_SEL_MASK = common dso_local global i32 0, align 4
@MISC_CLK_CTRL__DEEP_SLEEP_CLK_SEL__SHIFT = common dso_local global i32 0, align 4
@MISC_CLK_CTRL__ZCLK_SEL__SHIFT = common dso_local global i32 0, align 4
@ixCG_CLKPIN_CNTL = common dso_local global i32 0, align 4
@CG_CLKPIN_CNTL__BCLK_AS_XCLK_MASK = common dso_local global i32 0, align 4
@ixCG_CLKPIN_CNTL_2 = common dso_local global i32 0, align 4
@CG_CLKPIN_CNTL_2__FORCE_BIF_REFCLK_EN_MASK = common dso_local global i32 0, align 4
@ixMPLL_BYPASSCLK_SEL = common dso_local global i32 0, align 4
@MPLL_BYPASSCLK_SEL__MPLL_CLKOUT_SEL_MASK = common dso_local global i32 0, align 4
@MPLL_BYPASSCLK_SEL__MPLL_CLKOUT_SEL__SHIFT = common dso_local global i32 0, align 4
@ixPCIE_CNTL2 = common dso_local global i32 0, align 4
@PCIE_CNTL2__SLV_MEM_LS_EN_MASK = common dso_local global i32 0, align 4
@PCIE_CNTL2__MST_MEM_LS_EN_MASK = common dso_local global i32 0, align 4
@PCIE_CNTL2__REPLAY_MEM_LS_EN_MASK = common dso_local global i32 0, align 4
@PCIE_LC_N_FTS_CNTL__LC_N_FTS_MASK = common dso_local global i32 0, align 4
@ixPCIE_LC_STATUS1 = common dso_local global i32 0, align 4
@PCIE_LC_STATUS1__LC_REVERSE_XMIT_MASK = common dso_local global i32 0, align 4
@PCIE_LC_STATUS1__LC_REVERSE_RCVR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @cik_program_aspm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_program_aspm(%struct.amdgpu_device* %0) #0 {
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
  br label %430

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i64 @pci_is_root_bus(%struct.TYPE_4__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %430

24:                                               ; preds = %15
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AMD_IS_APU, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %430

32:                                               ; preds = %24
  %33 = load i32, i32* @ixPCIE_LC_N_FTS_CNTL, align 4
  %34 = call i32 @RREG32_PCIE(i32 %33)
  store i32 %34, i32* %3, align 4
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @PCIE_LC_N_FTS_CNTL__LC_XMIT_N_FTS_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @PCIE_LC_N_FTS_CNTL__LC_XMIT_N_FTS__SHIFT, align 4
  %40 = shl i32 36, %39
  %41 = load i32, i32* @PCIE_LC_N_FTS_CNTL__LC_XMIT_N_FTS_OVERRIDE_EN_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load i32, i32* @ixPCIE_LC_N_FTS_CNTL, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @WREG32_PCIE(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %32
  %53 = load i32, i32* @ixPCIE_LC_CNTL3, align 4
  %54 = call i32 @RREG32_PCIE(i32 %53)
  store i32 %54, i32* %3, align 4
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @PCIE_LC_CNTL3__LC_GO_TO_RECOVERY_MASK, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i32, i32* @ixPCIE_LC_CNTL3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @WREG32_PCIE(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %52
  %66 = load i32, i32* @ixPCIE_P_CNTL, align 4
  %67 = call i32 @RREG32_PCIE(i32 %66)
  store i32 %67, i32* %3, align 4
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @PCIE_P_CNTL__P_IGNORE_EDB_ERR_MASK, align 4
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32, i32* @ixPCIE_P_CNTL, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @WREG32_PCIE(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %65
  %79 = load i32, i32* @ixPCIE_LC_CNTL, align 4
  %80 = call i32 @RREG32_PCIE(i32 %79)
  store i32 %80, i32* %3, align 4
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @PCIE_LC_CNTL__LC_L0S_INACTIVITY_MASK, align 4
  %82 = load i32, i32* @PCIE_LC_CNTL__LC_L1_INACTIVITY_MASK, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %3, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* @PCIE_LC_CNTL__LC_PMI_TO_L1_DIS_MASK, align 4
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %78
  %93 = load i32, i32* @PCIE_LC_CNTL__LC_L0S_INACTIVITY__SHIFT, align 4
  %94 = shl i32 7, %93
  %95 = load i32, i32* %3, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %78
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %364, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @PCIE_LC_CNTL__LC_L1_INACTIVITY__SHIFT, align 4
  %102 = shl i32 7, %101
  %103 = load i32, i32* %3, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* @PCIE_LC_CNTL__LC_PMI_TO_L1_DIS_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %3, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %3, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %100
  %113 = load i32, i32* @ixPCIE_LC_CNTL, align 4
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @WREG32_PCIE(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %100
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %363, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @ixPB0_PIF_PWRDOWN_0, align 4
  %121 = call i32 @RREG32_PCIE(i32 %120)
  store i32 %121, i32* %3, align 4
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* @PB0_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_OFF_0_MASK, align 4
  %123 = load i32, i32* @PB0_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_TXS2_0_MASK, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %3, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* @PB0_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_OFF_0__SHIFT, align 4
  %129 = shl i32 7, %128
  %130 = load i32, i32* @PB0_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_TXS2_0__SHIFT, align 4
  %131 = shl i32 7, %130
  %132 = or i32 %129, %131
  %133 = load i32, i32* %3, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %3, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %119
  %139 = load i32, i32* @ixPB0_PIF_PWRDOWN_0, align 4
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @WREG32_PCIE(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %119
  %143 = load i32, i32* @ixPB0_PIF_PWRDOWN_1, align 4
  %144 = call i32 @RREG32_PCIE(i32 %143)
  store i32 %144, i32* %3, align 4
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* @PB0_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_OFF_1_MASK, align 4
  %146 = load i32, i32* @PB0_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_TXS2_1_MASK, align 4
  %147 = or i32 %145, %146
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %3, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %3, align 4
  %151 = load i32, i32* @PB0_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_OFF_1__SHIFT, align 4
  %152 = shl i32 7, %151
  %153 = load i32, i32* @PB0_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_TXS2_1__SHIFT, align 4
  %154 = shl i32 7, %153
  %155 = or i32 %152, %154
  %156 = load i32, i32* %3, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %3, align 4
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* %3, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %142
  %162 = load i32, i32* @ixPB0_PIF_PWRDOWN_1, align 4
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @WREG32_PCIE(i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %142
  %166 = load i32, i32* @ixPB1_PIF_PWRDOWN_0, align 4
  %167 = call i32 @RREG32_PCIE(i32 %166)
  store i32 %167, i32* %3, align 4
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* @PB1_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_OFF_0_MASK, align 4
  %169 = load i32, i32* @PB1_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_TXS2_0_MASK, align 4
  %170 = or i32 %168, %169
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %3, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %3, align 4
  %174 = load i32, i32* @PB1_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_OFF_0__SHIFT, align 4
  %175 = shl i32 7, %174
  %176 = load i32, i32* @PB1_PIF_PWRDOWN_0__PLL_POWER_STATE_IN_TXS2_0__SHIFT, align 4
  %177 = shl i32 7, %176
  %178 = or i32 %175, %177
  %179 = load i32, i32* %3, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %3, align 4
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* %3, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %165
  %185 = load i32, i32* @ixPB1_PIF_PWRDOWN_0, align 4
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @WREG32_PCIE(i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %165
  %189 = load i32, i32* @ixPB1_PIF_PWRDOWN_1, align 4
  %190 = call i32 @RREG32_PCIE(i32 %189)
  store i32 %190, i32* %3, align 4
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* @PB1_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_OFF_1_MASK, align 4
  %192 = load i32, i32* @PB1_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_TXS2_1_MASK, align 4
  %193 = or i32 %191, %192
  %194 = xor i32 %193, -1
  %195 = load i32, i32* %3, align 4
  %196 = and i32 %195, %194
  store i32 %196, i32* %3, align 4
  %197 = load i32, i32* @PB1_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_OFF_1__SHIFT, align 4
  %198 = shl i32 7, %197
  %199 = load i32, i32* @PB1_PIF_PWRDOWN_1__PLL_POWER_STATE_IN_TXS2_1__SHIFT, align 4
  %200 = shl i32 7, %199
  %201 = or i32 %198, %200
  %202 = load i32, i32* %3, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %3, align 4
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* %3, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %188
  %208 = load i32, i32* @ixPB1_PIF_PWRDOWN_1, align 4
  %209 = load i32, i32* %3, align 4
  %210 = call i32 @WREG32_PCIE(i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %188
  %212 = load i32, i32* @ixPCIE_LC_LINK_WIDTH_CNTL, align 4
  %213 = call i32 @RREG32_PCIE(i32 %212)
  store i32 %213, i32* %3, align 4
  store i32 %213, i32* %4, align 4
  %214 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL__LC_DYN_LANES_PWR_STATE_MASK, align 4
  %215 = xor i32 %214, -1
  %216 = load i32, i32* %3, align 4
  %217 = and i32 %216, %215
  store i32 %217, i32* %3, align 4
  %218 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL__LC_DYN_LANES_PWR_STATE__SHIFT, align 4
  %219 = shl i32 3, %218
  %220 = xor i32 %219, -1
  %221 = load i32, i32* %3, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %3, align 4
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* %3, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %211
  %227 = load i32, i32* @ixPCIE_LC_LINK_WIDTH_CNTL, align 4
  %228 = load i32, i32* %3, align 4
  %229 = call i32 @WREG32_PCIE(i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %226, %211
  %231 = load i32, i32* %8, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %250, label %233

233:                                              ; preds = %230
  %234 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %235 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %234, i32 0, i32 1
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load %struct.pci_dev*, %struct.pci_dev** %239, align 8
  store %struct.pci_dev* %240, %struct.pci_dev** %10, align 8
  store i32 0, i32* %9, align 4
  %241 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %242 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %243 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %241, i32 %242, i32* %11)
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* @PCI_EXP_LNKCAP_CLKPM, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %233
  store i32 1, i32* %9, align 4
  br label %249

249:                                              ; preds = %248, %233
  br label %251

250:                                              ; preds = %230
  store i32 0, i32* %9, align 4
  br label %251

251:                                              ; preds = %250, %249
  %252 = load i32, i32* %9, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %362

254:                                              ; preds = %251
  %255 = load i32, i32* @ixPCIE_LC_CNTL2, align 4
  %256 = call i32 @RREG32_PCIE(i32 %255)
  store i32 %256, i32* %3, align 4
  store i32 %256, i32* %4, align 4
  %257 = load i32, i32* @PCIE_LC_CNTL2__LC_ALLOW_PDWN_IN_L1_MASK, align 4
  %258 = load i32, i32* @PCIE_LC_CNTL2__LC_ALLOW_PDWN_IN_L23_MASK, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* %3, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %3, align 4
  %262 = load i32, i32* %4, align 4
  %263 = load i32, i32* %3, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %269

265:                                              ; preds = %254
  %266 = load i32, i32* @ixPCIE_LC_CNTL2, align 4
  %267 = load i32, i32* %3, align 4
  %268 = call i32 @WREG32_PCIE(i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %265, %254
  %270 = load i32, i32* @ixTHM_CLK_CNTL, align 4
  %271 = call i32 @RREG32_SMC(i32 %270)
  store i32 %271, i32* %3, align 4
  store i32 %271, i32* %4, align 4
  %272 = load i32, i32* @THM_CLK_CNTL__CMON_CLK_SEL_MASK, align 4
  %273 = load i32, i32* @THM_CLK_CNTL__TMON_CLK_SEL_MASK, align 4
  %274 = or i32 %272, %273
  %275 = xor i32 %274, -1
  %276 = load i32, i32* %3, align 4
  %277 = and i32 %276, %275
  store i32 %277, i32* %3, align 4
  %278 = load i32, i32* @THM_CLK_CNTL__CMON_CLK_SEL__SHIFT, align 4
  %279 = shl i32 1, %278
  %280 = load i32, i32* @THM_CLK_CNTL__TMON_CLK_SEL__SHIFT, align 4
  %281 = shl i32 1, %280
  %282 = or i32 %279, %281
  %283 = load i32, i32* %3, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %3, align 4
  %285 = load i32, i32* %4, align 4
  %286 = load i32, i32* %3, align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %269
  %289 = load i32, i32* @ixTHM_CLK_CNTL, align 4
  %290 = load i32, i32* %3, align 4
  %291 = call i32 @WREG32_SMC(i32 %289, i32 %290)
  br label %292

292:                                              ; preds = %288, %269
  %293 = load i32, i32* @ixMISC_CLK_CTRL, align 4
  %294 = call i32 @RREG32_SMC(i32 %293)
  store i32 %294, i32* %3, align 4
  store i32 %294, i32* %4, align 4
  %295 = load i32, i32* @MISC_CLK_CTRL__DEEP_SLEEP_CLK_SEL_MASK, align 4
  %296 = load i32, i32* @MISC_CLK_CTRL__ZCLK_SEL_MASK, align 4
  %297 = or i32 %295, %296
  %298 = xor i32 %297, -1
  %299 = load i32, i32* %3, align 4
  %300 = and i32 %299, %298
  store i32 %300, i32* %3, align 4
  %301 = load i32, i32* @MISC_CLK_CTRL__DEEP_SLEEP_CLK_SEL__SHIFT, align 4
  %302 = shl i32 1, %301
  %303 = load i32, i32* @MISC_CLK_CTRL__ZCLK_SEL__SHIFT, align 4
  %304 = shl i32 1, %303
  %305 = or i32 %302, %304
  %306 = load i32, i32* %3, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %3, align 4
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* %3, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %292
  %312 = load i32, i32* @ixMISC_CLK_CTRL, align 4
  %313 = load i32, i32* %3, align 4
  %314 = call i32 @WREG32_SMC(i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %311, %292
  %316 = load i32, i32* @ixCG_CLKPIN_CNTL, align 4
  %317 = call i32 @RREG32_SMC(i32 %316)
  store i32 %317, i32* %3, align 4
  store i32 %317, i32* %4, align 4
  %318 = load i32, i32* @CG_CLKPIN_CNTL__BCLK_AS_XCLK_MASK, align 4
  %319 = xor i32 %318, -1
  %320 = load i32, i32* %3, align 4
  %321 = and i32 %320, %319
  store i32 %321, i32* %3, align 4
  %322 = load i32, i32* %4, align 4
  %323 = load i32, i32* %3, align 4
  %324 = icmp ne i32 %322, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %315
  %326 = load i32, i32* @ixCG_CLKPIN_CNTL, align 4
  %327 = load i32, i32* %3, align 4
  %328 = call i32 @WREG32_SMC(i32 %326, i32 %327)
  br label %329

329:                                              ; preds = %325, %315
  %330 = load i32, i32* @ixCG_CLKPIN_CNTL_2, align 4
  %331 = call i32 @RREG32_SMC(i32 %330)
  store i32 %331, i32* %3, align 4
  store i32 %331, i32* %4, align 4
  %332 = load i32, i32* @CG_CLKPIN_CNTL_2__FORCE_BIF_REFCLK_EN_MASK, align 4
  %333 = xor i32 %332, -1
  %334 = load i32, i32* %3, align 4
  %335 = and i32 %334, %333
  store i32 %335, i32* %3, align 4
  %336 = load i32, i32* %4, align 4
  %337 = load i32, i32* %3, align 4
  %338 = icmp ne i32 %336, %337
  br i1 %338, label %339, label %343

339:                                              ; preds = %329
  %340 = load i32, i32* @ixCG_CLKPIN_CNTL_2, align 4
  %341 = load i32, i32* %3, align 4
  %342 = call i32 @WREG32_SMC(i32 %340, i32 %341)
  br label %343

343:                                              ; preds = %339, %329
  %344 = load i32, i32* @ixMPLL_BYPASSCLK_SEL, align 4
  %345 = call i32 @RREG32_SMC(i32 %344)
  store i32 %345, i32* %3, align 4
  store i32 %345, i32* %4, align 4
  %346 = load i32, i32* @MPLL_BYPASSCLK_SEL__MPLL_CLKOUT_SEL_MASK, align 4
  %347 = xor i32 %346, -1
  %348 = load i32, i32* %3, align 4
  %349 = and i32 %348, %347
  store i32 %349, i32* %3, align 4
  %350 = load i32, i32* @MPLL_BYPASSCLK_SEL__MPLL_CLKOUT_SEL__SHIFT, align 4
  %351 = shl i32 4, %350
  %352 = load i32, i32* %3, align 4
  %353 = or i32 %352, %351
  store i32 %353, i32* %3, align 4
  %354 = load i32, i32* %4, align 4
  %355 = load i32, i32* %3, align 4
  %356 = icmp ne i32 %354, %355
  br i1 %356, label %357, label %361

357:                                              ; preds = %343
  %358 = load i32, i32* @ixMPLL_BYPASSCLK_SEL, align 4
  %359 = load i32, i32* %3, align 4
  %360 = call i32 @WREG32_SMC(i32 %358, i32 %359)
  br label %361

361:                                              ; preds = %357, %343
  br label %362

362:                                              ; preds = %361, %251
  br label %363

363:                                              ; preds = %362, %116
  br label %373

364:                                              ; preds = %97
  %365 = load i32, i32* %4, align 4
  %366 = load i32, i32* %3, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %372

368:                                              ; preds = %364
  %369 = load i32, i32* @ixPCIE_LC_CNTL, align 4
  %370 = load i32, i32* %3, align 4
  %371 = call i32 @WREG32_PCIE(i32 %369, i32 %370)
  br label %372

372:                                              ; preds = %368, %364
  br label %373

373:                                              ; preds = %372, %363
  %374 = load i32, i32* @ixPCIE_CNTL2, align 4
  %375 = call i32 @RREG32_PCIE(i32 %374)
  store i32 %375, i32* %3, align 4
  store i32 %375, i32* %4, align 4
  %376 = load i32, i32* @PCIE_CNTL2__SLV_MEM_LS_EN_MASK, align 4
  %377 = load i32, i32* @PCIE_CNTL2__MST_MEM_LS_EN_MASK, align 4
  %378 = or i32 %376, %377
  %379 = load i32, i32* @PCIE_CNTL2__REPLAY_MEM_LS_EN_MASK, align 4
  %380 = or i32 %378, %379
  %381 = load i32, i32* %3, align 4
  %382 = or i32 %381, %380
  store i32 %382, i32* %3, align 4
  %383 = load i32, i32* %4, align 4
  %384 = load i32, i32* %3, align 4
  %385 = icmp ne i32 %383, %384
  br i1 %385, label %386, label %390

386:                                              ; preds = %373
  %387 = load i32, i32* @ixPCIE_CNTL2, align 4
  %388 = load i32, i32* %3, align 4
  %389 = call i32 @WREG32_PCIE(i32 %387, i32 %388)
  br label %390

390:                                              ; preds = %386, %373
  %391 = load i32, i32* %5, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %430, label %393

393:                                              ; preds = %390
  %394 = load i32, i32* @ixPCIE_LC_N_FTS_CNTL, align 4
  %395 = call i32 @RREG32_PCIE(i32 %394)
  store i32 %395, i32* %3, align 4
  %396 = load i32, i32* %3, align 4
  %397 = load i32, i32* @PCIE_LC_N_FTS_CNTL__LC_N_FTS_MASK, align 4
  %398 = and i32 %396, %397
  %399 = load i32, i32* @PCIE_LC_N_FTS_CNTL__LC_N_FTS_MASK, align 4
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %401, label %429

401:                                              ; preds = %393
  %402 = load i32, i32* @ixPCIE_LC_STATUS1, align 4
  %403 = call i32 @RREG32_PCIE(i32 %402)
  store i32 %403, i32* %3, align 4
  %404 = load i32, i32* %3, align 4
  %405 = load i32, i32* @PCIE_LC_STATUS1__LC_REVERSE_XMIT_MASK, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %428

408:                                              ; preds = %401
  %409 = load i32, i32* %3, align 4
  %410 = load i32, i32* @PCIE_LC_STATUS1__LC_REVERSE_RCVR_MASK, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %428

413:                                              ; preds = %408
  %414 = load i32, i32* @ixPCIE_LC_CNTL, align 4
  %415 = call i32 @RREG32_PCIE(i32 %414)
  store i32 %415, i32* %3, align 4
  store i32 %415, i32* %4, align 4
  %416 = load i32, i32* @PCIE_LC_CNTL__LC_L0S_INACTIVITY_MASK, align 4
  %417 = xor i32 %416, -1
  %418 = load i32, i32* %3, align 4
  %419 = and i32 %418, %417
  store i32 %419, i32* %3, align 4
  %420 = load i32, i32* %4, align 4
  %421 = load i32, i32* %3, align 4
  %422 = icmp ne i32 %420, %421
  br i1 %422, label %423, label %427

423:                                              ; preds = %413
  %424 = load i32, i32* @ixPCIE_LC_CNTL, align 4
  %425 = load i32, i32* %3, align 4
  %426 = call i32 @WREG32_PCIE(i32 %424, i32 %425)
  br label %427

427:                                              ; preds = %423, %413
  br label %428

428:                                              ; preds = %427, %408, %401
  br label %429

429:                                              ; preds = %428, %393
  br label %430

430:                                              ; preds = %14, %23, %31, %429, %390
  ret void
}

declare dso_local i64 @pci_is_root_bus(%struct.TYPE_4__*) #1

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @WREG32_PCIE(i32, i32) #1

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

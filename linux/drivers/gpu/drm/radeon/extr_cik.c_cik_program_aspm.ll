; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_program_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_program_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@radeon_aspm = common dso_local global i64 0, align 8
@RADEON_IS_IGP = common dso_local global i32 0, align 4
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
@PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@LC_DYN_LANES_PWR_STATE_MASK = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_CLKPM = common dso_local global i32 0, align 4
@PCIE_LC_CNTL2 = common dso_local global i32 0, align 4
@LC_ALLOW_PDWN_IN_L1 = common dso_local global i32 0, align 4
@LC_ALLOW_PDWN_IN_L23 = common dso_local global i32 0, align 4
@THM_CLK_CNTL = common dso_local global i32 0, align 4
@CMON_CLK_SEL_MASK = common dso_local global i32 0, align 4
@TMON_CLK_SEL_MASK = common dso_local global i32 0, align 4
@MISC_CLK_CTRL = common dso_local global i32 0, align 4
@DEEP_SLEEP_CLK_SEL_MASK = common dso_local global i32 0, align 4
@ZCLK_SEL_MASK = common dso_local global i32 0, align 4
@CG_CLKPIN_CNTL = common dso_local global i32 0, align 4
@BCLK_AS_XCLK = common dso_local global i32 0, align 4
@CG_CLKPIN_CNTL_2 = common dso_local global i32 0, align 4
@FORCE_BIF_REFCLK_EN = common dso_local global i32 0, align 4
@MPLL_BYPASSCLK_SEL = common dso_local global i32 0, align 4
@MPLL_CLKOUT_SEL_MASK = common dso_local global i32 0, align 4
@PCIE_CNTL2 = common dso_local global i32 0, align 4
@SLV_MEM_LS_EN = common dso_local global i32 0, align 4
@MST_MEM_LS_EN = common dso_local global i32 0, align 4
@REPLAY_MEM_LS_EN = common dso_local global i32 0, align 4
@LC_N_FTS_MASK = common dso_local global i32 0, align 4
@PCIE_LC_STATUS1 = common dso_local global i32 0, align 4
@LC_REVERSE_XMIT = common dso_local global i32 0, align 4
@LC_REVERSE_RCVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @cik_program_aspm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_program_aspm(%struct.radeon_device* %0) #0 {
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
  br label %419

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RADEON_IS_IGP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %419

23:                                               ; preds = %15
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RADEON_IS_PCIE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %419

31:                                               ; preds = %23
  %32 = load i32, i32* @PCIE_LC_N_FTS_CNTL, align 4
  %33 = call i32 @RREG32_PCIE_PORT(i32 %32)
  store i32 %33, i32* %3, align 4
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @LC_XMIT_N_FTS_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = call i32 @LC_XMIT_N_FTS(i32 36)
  %39 = load i32, i32* @LC_XMIT_N_FTS_OVERRIDE_EN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load i32, i32* @PCIE_LC_N_FTS_CNTL, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @WREG32_PCIE_PORT(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %31
  %51 = load i32, i32* @PCIE_LC_CNTL3, align 4
  %52 = call i32 @RREG32_PCIE_PORT(i32 %51)
  store i32 %52, i32* %3, align 4
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @LC_GO_TO_RECOVERY, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i32, i32* @PCIE_LC_CNTL3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @WREG32_PCIE_PORT(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %50
  %64 = load i32, i32* @PCIE_P_CNTL, align 4
  %65 = call i32 @RREG32_PCIE_PORT(i32 %64)
  store i32 %65, i32* %3, align 4
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* @P_IGNORE_EDB_ERR, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i32, i32* @PCIE_P_CNTL, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @WREG32_PCIE_PORT(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %63
  %77 = load i32, i32* @PCIE_LC_CNTL, align 4
  %78 = call i32 @RREG32_PCIE_PORT(i32 %77)
  store i32 %78, i32* %3, align 4
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* @LC_L0S_INACTIVITY_MASK, align 4
  %80 = load i32, i32* @LC_L1_INACTIVITY_MASK, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %3, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* @LC_PMI_TO_L1_DIS, align 4
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %76
  %91 = call i32 @LC_L0S_INACTIVITY(i32 7)
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %76
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %353, label %97

97:                                               ; preds = %94
  %98 = call i32 @LC_L1_INACTIVITY(i32 7)
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* @LC_PMI_TO_L1_DIS, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %3, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %3, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load i32, i32* @PCIE_LC_CNTL, align 4
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @WREG32_PCIE_PORT(i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %97
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %352, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %117 = call i32 @RREG32_PCIE_PORT(i32 %116)
  store i32 %117, i32* %3, align 4
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* @PLL_POWER_STATE_IN_OFF_0_MASK, align 4
  %119 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_0_MASK, align 4
  %120 = or i32 %118, %119
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %3, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %3, align 4
  %124 = call i32 @PLL_POWER_STATE_IN_OFF_0(i32 7)
  %125 = call i32 @PLL_POWER_STATE_IN_TXS2_0(i32 7)
  %126 = or i32 %124, %125
  %127 = load i32, i32* %3, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %3, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %115
  %133 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @WREG32_PCIE_PORT(i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %115
  %137 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %138 = call i32 @RREG32_PCIE_PORT(i32 %137)
  store i32 %138, i32* %3, align 4
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* @PLL_POWER_STATE_IN_OFF_1_MASK, align 4
  %140 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_1_MASK, align 4
  %141 = or i32 %139, %140
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %3, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %3, align 4
  %145 = call i32 @PLL_POWER_STATE_IN_OFF_1(i32 7)
  %146 = call i32 @PLL_POWER_STATE_IN_TXS2_1(i32 7)
  %147 = or i32 %145, %146
  %148 = load i32, i32* %3, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %3, align 4
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* %3, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %136
  %154 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @WREG32_PCIE_PORT(i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %136
  %158 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %159 = call i32 @RREG32_PCIE_PORT(i32 %158)
  store i32 %159, i32* %3, align 4
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* @PLL_POWER_STATE_IN_OFF_0_MASK, align 4
  %161 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_0_MASK, align 4
  %162 = or i32 %160, %161
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %3, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %3, align 4
  %166 = call i32 @PLL_POWER_STATE_IN_OFF_0(i32 7)
  %167 = call i32 @PLL_POWER_STATE_IN_TXS2_0(i32 7)
  %168 = or i32 %166, %167
  %169 = load i32, i32* %3, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %3, align 4
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* %3, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %157
  %175 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @WREG32_PCIE_PORT(i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %157
  %179 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %180 = call i32 @RREG32_PCIE_PORT(i32 %179)
  store i32 %180, i32* %3, align 4
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* @PLL_POWER_STATE_IN_OFF_1_MASK, align 4
  %182 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_1_MASK, align 4
  %183 = or i32 %181, %182
  %184 = xor i32 %183, -1
  %185 = load i32, i32* %3, align 4
  %186 = and i32 %185, %184
  store i32 %186, i32* %3, align 4
  %187 = call i32 @PLL_POWER_STATE_IN_OFF_1(i32 7)
  %188 = call i32 @PLL_POWER_STATE_IN_TXS2_1(i32 7)
  %189 = or i32 %187, %188
  %190 = load i32, i32* %3, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %3, align 4
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* %3, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %178
  %196 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %197 = load i32, i32* %3, align 4
  %198 = call i32 @WREG32_PCIE_PORT(i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %178
  %200 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %201 = call i32 @RREG32_PCIE_PORT(i32 %200)
  store i32 %201, i32* %3, align 4
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* @LC_DYN_LANES_PWR_STATE_MASK, align 4
  %203 = xor i32 %202, -1
  %204 = load i32, i32* %3, align 4
  %205 = and i32 %204, %203
  store i32 %205, i32* %3, align 4
  %206 = call i32 @LC_DYN_LANES_PWR_STATE(i32 3)
  %207 = load i32, i32* %3, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %3, align 4
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* %3, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %199
  %213 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %214 = load i32, i32* %3, align 4
  %215 = call i32 @WREG32_PCIE_PORT(i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %212, %199
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %244, label %219

219:                                              ; preds = %216
  %220 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %221 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %220, i32 0, i32 1
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = call i32 @pci_is_root_bus(%struct.TYPE_4__* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %244, label %227

227:                                              ; preds = %219
  %228 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %229 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %228, i32 0, i32 1
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load %struct.pci_dev*, %struct.pci_dev** %233, align 8
  store %struct.pci_dev* %234, %struct.pci_dev** %10, align 8
  store i32 0, i32* %9, align 4
  %235 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %236 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %237 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %235, i32 %236, i32* %11)
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* @PCI_EXP_LNKCAP_CLKPM, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %227
  store i32 1, i32* %9, align 4
  br label %243

243:                                              ; preds = %242, %227
  br label %245

244:                                              ; preds = %219, %216
  store i32 0, i32* %9, align 4
  br label %245

245:                                              ; preds = %244, %243
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %351

248:                                              ; preds = %245
  %249 = load i32, i32* @PCIE_LC_CNTL2, align 4
  %250 = call i32 @RREG32_PCIE_PORT(i32 %249)
  store i32 %250, i32* %3, align 4
  store i32 %250, i32* %4, align 4
  %251 = load i32, i32* @LC_ALLOW_PDWN_IN_L1, align 4
  %252 = load i32, i32* @LC_ALLOW_PDWN_IN_L23, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* %3, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %3, align 4
  %256 = load i32, i32* %4, align 4
  %257 = load i32, i32* %3, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %248
  %260 = load i32, i32* @PCIE_LC_CNTL2, align 4
  %261 = load i32, i32* %3, align 4
  %262 = call i32 @WREG32_PCIE_PORT(i32 %260, i32 %261)
  br label %263

263:                                              ; preds = %259, %248
  %264 = load i32, i32* @THM_CLK_CNTL, align 4
  %265 = call i32 @RREG32_SMC(i32 %264)
  store i32 %265, i32* %3, align 4
  store i32 %265, i32* %4, align 4
  %266 = load i32, i32* @CMON_CLK_SEL_MASK, align 4
  %267 = load i32, i32* @TMON_CLK_SEL_MASK, align 4
  %268 = or i32 %266, %267
  %269 = xor i32 %268, -1
  %270 = load i32, i32* %3, align 4
  %271 = and i32 %270, %269
  store i32 %271, i32* %3, align 4
  %272 = call i32 @CMON_CLK_SEL(i32 1)
  %273 = call i32 @TMON_CLK_SEL(i32 1)
  %274 = or i32 %272, %273
  %275 = load i32, i32* %3, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %3, align 4
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* %3, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %263
  %281 = load i32, i32* @THM_CLK_CNTL, align 4
  %282 = load i32, i32* %3, align 4
  %283 = call i32 @WREG32_SMC(i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %280, %263
  %285 = load i32, i32* @MISC_CLK_CTRL, align 4
  %286 = call i32 @RREG32_SMC(i32 %285)
  store i32 %286, i32* %3, align 4
  store i32 %286, i32* %4, align 4
  %287 = load i32, i32* @DEEP_SLEEP_CLK_SEL_MASK, align 4
  %288 = load i32, i32* @ZCLK_SEL_MASK, align 4
  %289 = or i32 %287, %288
  %290 = xor i32 %289, -1
  %291 = load i32, i32* %3, align 4
  %292 = and i32 %291, %290
  store i32 %292, i32* %3, align 4
  %293 = call i32 @DEEP_SLEEP_CLK_SEL(i32 1)
  %294 = call i32 @ZCLK_SEL(i32 1)
  %295 = or i32 %293, %294
  %296 = load i32, i32* %3, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %3, align 4
  %298 = load i32, i32* %4, align 4
  %299 = load i32, i32* %3, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %284
  %302 = load i32, i32* @MISC_CLK_CTRL, align 4
  %303 = load i32, i32* %3, align 4
  %304 = call i32 @WREG32_SMC(i32 %302, i32 %303)
  br label %305

305:                                              ; preds = %301, %284
  %306 = load i32, i32* @CG_CLKPIN_CNTL, align 4
  %307 = call i32 @RREG32_SMC(i32 %306)
  store i32 %307, i32* %3, align 4
  store i32 %307, i32* %4, align 4
  %308 = load i32, i32* @BCLK_AS_XCLK, align 4
  %309 = xor i32 %308, -1
  %310 = load i32, i32* %3, align 4
  %311 = and i32 %310, %309
  store i32 %311, i32* %3, align 4
  %312 = load i32, i32* %4, align 4
  %313 = load i32, i32* %3, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %305
  %316 = load i32, i32* @CG_CLKPIN_CNTL, align 4
  %317 = load i32, i32* %3, align 4
  %318 = call i32 @WREG32_SMC(i32 %316, i32 %317)
  br label %319

319:                                              ; preds = %315, %305
  %320 = load i32, i32* @CG_CLKPIN_CNTL_2, align 4
  %321 = call i32 @RREG32_SMC(i32 %320)
  store i32 %321, i32* %3, align 4
  store i32 %321, i32* %4, align 4
  %322 = load i32, i32* @FORCE_BIF_REFCLK_EN, align 4
  %323 = xor i32 %322, -1
  %324 = load i32, i32* %3, align 4
  %325 = and i32 %324, %323
  store i32 %325, i32* %3, align 4
  %326 = load i32, i32* %4, align 4
  %327 = load i32, i32* %3, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %333

329:                                              ; preds = %319
  %330 = load i32, i32* @CG_CLKPIN_CNTL_2, align 4
  %331 = load i32, i32* %3, align 4
  %332 = call i32 @WREG32_SMC(i32 %330, i32 %331)
  br label %333

333:                                              ; preds = %329, %319
  %334 = load i32, i32* @MPLL_BYPASSCLK_SEL, align 4
  %335 = call i32 @RREG32_SMC(i32 %334)
  store i32 %335, i32* %3, align 4
  store i32 %335, i32* %4, align 4
  %336 = load i32, i32* @MPLL_CLKOUT_SEL_MASK, align 4
  %337 = xor i32 %336, -1
  %338 = load i32, i32* %3, align 4
  %339 = and i32 %338, %337
  store i32 %339, i32* %3, align 4
  %340 = call i32 @MPLL_CLKOUT_SEL(i32 4)
  %341 = load i32, i32* %3, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %3, align 4
  %343 = load i32, i32* %4, align 4
  %344 = load i32, i32* %3, align 4
  %345 = icmp ne i32 %343, %344
  br i1 %345, label %346, label %350

346:                                              ; preds = %333
  %347 = load i32, i32* @MPLL_BYPASSCLK_SEL, align 4
  %348 = load i32, i32* %3, align 4
  %349 = call i32 @WREG32_SMC(i32 %347, i32 %348)
  br label %350

350:                                              ; preds = %346, %333
  br label %351

351:                                              ; preds = %350, %245
  br label %352

352:                                              ; preds = %351, %112
  br label %362

353:                                              ; preds = %94
  %354 = load i32, i32* %4, align 4
  %355 = load i32, i32* %3, align 4
  %356 = icmp ne i32 %354, %355
  br i1 %356, label %357, label %361

357:                                              ; preds = %353
  %358 = load i32, i32* @PCIE_LC_CNTL, align 4
  %359 = load i32, i32* %3, align 4
  %360 = call i32 @WREG32_PCIE_PORT(i32 %358, i32 %359)
  br label %361

361:                                              ; preds = %357, %353
  br label %362

362:                                              ; preds = %361, %352
  %363 = load i32, i32* @PCIE_CNTL2, align 4
  %364 = call i32 @RREG32_PCIE_PORT(i32 %363)
  store i32 %364, i32* %3, align 4
  store i32 %364, i32* %4, align 4
  %365 = load i32, i32* @SLV_MEM_LS_EN, align 4
  %366 = load i32, i32* @MST_MEM_LS_EN, align 4
  %367 = or i32 %365, %366
  %368 = load i32, i32* @REPLAY_MEM_LS_EN, align 4
  %369 = or i32 %367, %368
  %370 = load i32, i32* %3, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* %3, align 4
  %372 = load i32, i32* %4, align 4
  %373 = load i32, i32* %3, align 4
  %374 = icmp ne i32 %372, %373
  br i1 %374, label %375, label %379

375:                                              ; preds = %362
  %376 = load i32, i32* @PCIE_CNTL2, align 4
  %377 = load i32, i32* %3, align 4
  %378 = call i32 @WREG32_PCIE_PORT(i32 %376, i32 %377)
  br label %379

379:                                              ; preds = %375, %362
  %380 = load i32, i32* %5, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %419, label %382

382:                                              ; preds = %379
  %383 = load i32, i32* @PCIE_LC_N_FTS_CNTL, align 4
  %384 = call i32 @RREG32_PCIE_PORT(i32 %383)
  store i32 %384, i32* %3, align 4
  %385 = load i32, i32* %3, align 4
  %386 = load i32, i32* @LC_N_FTS_MASK, align 4
  %387 = and i32 %385, %386
  %388 = load i32, i32* @LC_N_FTS_MASK, align 4
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %390, label %418

390:                                              ; preds = %382
  %391 = load i32, i32* @PCIE_LC_STATUS1, align 4
  %392 = call i32 @RREG32_PCIE_PORT(i32 %391)
  store i32 %392, i32* %3, align 4
  %393 = load i32, i32* %3, align 4
  %394 = load i32, i32* @LC_REVERSE_XMIT, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %417

397:                                              ; preds = %390
  %398 = load i32, i32* %3, align 4
  %399 = load i32, i32* @LC_REVERSE_RCVR, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %417

402:                                              ; preds = %397
  %403 = load i32, i32* @PCIE_LC_CNTL, align 4
  %404 = call i32 @RREG32_PCIE_PORT(i32 %403)
  store i32 %404, i32* %3, align 4
  store i32 %404, i32* %4, align 4
  %405 = load i32, i32* @LC_L0S_INACTIVITY_MASK, align 4
  %406 = xor i32 %405, -1
  %407 = load i32, i32* %3, align 4
  %408 = and i32 %407, %406
  store i32 %408, i32* %3, align 4
  %409 = load i32, i32* %4, align 4
  %410 = load i32, i32* %3, align 4
  %411 = icmp ne i32 %409, %410
  br i1 %411, label %412, label %416

412:                                              ; preds = %402
  %413 = load i32, i32* @PCIE_LC_CNTL, align 4
  %414 = load i32, i32* %3, align 4
  %415 = call i32 @WREG32_PCIE_PORT(i32 %413, i32 %414)
  br label %416

416:                                              ; preds = %412, %402
  br label %417

417:                                              ; preds = %416, %397, %390
  br label %418

418:                                              ; preds = %417, %382
  br label %419

419:                                              ; preds = %14, %22, %30, %418, %379
  ret void
}

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

declare dso_local i32 @LC_XMIT_N_FTS(i32) #1

declare dso_local i32 @WREG32_PCIE_PORT(i32, i32) #1

declare dso_local i32 @LC_L0S_INACTIVITY(i32) #1

declare dso_local i32 @LC_L1_INACTIVITY(i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_OFF_0(i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_TXS2_0(i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_OFF_1(i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_TXS2_1(i32) #1

declare dso_local i32 @LC_DYN_LANES_PWR_STATE(i32) #1

declare dso_local i32 @pci_is_root_bus(%struct.TYPE_4__*) #1

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @CMON_CLK_SEL(i32) #1

declare dso_local i32 @TMON_CLK_SEL(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @DEEP_SLEEP_CLK_SEL(i32) #1

declare dso_local i32 @ZCLK_SEL(i32) #1

declare dso_local i32 @MPLL_CLKOUT_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

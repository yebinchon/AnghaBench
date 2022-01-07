; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_init_bxt_mmio_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_init_bxt_mmio_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@D_BXT = common dso_local global i32 0, align 4
@GEN7_SAMPLER_INSTDONE = common dso_local global i32 0, align 4
@GEN7_ROW_INSTDONE = common dso_local global i32 0, align 4
@GEN8_FAULT_TLB_DATA0 = common dso_local global i32 0, align 4
@GEN8_FAULT_TLB_DATA1 = common dso_local global i32 0, align 4
@ERROR_GEN6 = common dso_local global i32 0, align 4
@DONE_REG = common dso_local global i32 0, align 4
@EIR = common dso_local global i32 0, align 4
@PGTBL_ER = common dso_local global i32 0, align 4
@RING_PSMI_CTL = common dso_local global i32 0, align 4
@RING_DMA_FADD = common dso_local global i32 0, align 4
@RING_DMA_FADD_UDW = common dso_local global i32 0, align 4
@RING_IPEHR = common dso_local global i32 0, align 4
@RING_INSTPS = common dso_local global i32 0, align 4
@RING_BBADDR_UDW = common dso_local global i32 0, align 4
@RING_BBSTATE = common dso_local global i32 0, align 4
@RING_IPEIR = common dso_local global i32 0, align 4
@BXT_P_CR_GT_DISP_PWRON = common dso_local global i32 0, align 4
@bxt_gt_disp_pwron_write = common dso_local global i32* null, align 8
@BXT_RP_STATE_CAP = common dso_local global i32 0, align 4
@DPIO_PHY0 = common dso_local global i32 0, align 4
@bxt_phy_ctl_family_write = common dso_local global i32* null, align 8
@DPIO_PHY1 = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@PORT_B = common dso_local global i32 0, align 4
@PORT_C = common dso_local global i32 0, align 4
@bxt_port_pll_enable_write = common dso_local global i32* null, align 8
@DPIO_CH0 = common dso_local global i32 0, align 4
@bxt_pcs_dw12_grp_write = common dso_local global i32* null, align 8
@bxt_port_tx_dw3_read = common dso_local global i32* null, align 8
@DPIO_CH1 = common dso_local global i32 0, align 4
@BXT_DE_PLL_CTL = common dso_local global i32 0, align 4
@BXT_DE_PLL_ENABLE = common dso_local global i32 0, align 4
@bxt_de_pll_enable_write = common dso_local global i32* null, align 8
@BXT_DSI_PLL_CTL = common dso_local global i32 0, align 4
@BXT_DSI_PLL_ENABLE = common dso_local global i32 0, align 4
@GEN9_CLKGATE_DIS_0 = common dso_local global i32 0, align 4
@GEN9_CLKGATE_DIS_4 = common dso_local global i32 0, align 4
@TRANSCODER_A = common dso_local global i32 0, align 4
@TRANSCODER_B = common dso_local global i32 0, align 4
@TRANSCODER_C = common dso_local global i32 0, align 4
@RC6_CTX_BASE = common dso_local global i32 0, align 4
@GEN8_PUSHBUS_CONTROL = common dso_local global i32 0, align 4
@GEN8_PUSHBUS_ENABLE = common dso_local global i32 0, align 4
@GEN8_PUSHBUS_SHIFT = common dso_local global i32 0, align 4
@GEN6_GFXPAUSE = common dso_local global i32 0, align 4
@GEN8_L3SQCREG1 = common dso_local global i32 0, align 4
@F_CMD_ACCESS = common dso_local global i32 0, align 4
@GEN9_CTX_PREEMPT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_gvt*)* @init_bxt_mmio_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_bxt_mmio_info(%struct.intel_gvt* %0) #0 {
  %2 = alloca %struct.intel_gvt*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_gvt* %0, %struct.intel_gvt** %2, align 8
  %5 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %6 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = call i32 @_MMIO(i32 524288)
  %9 = load i32, i32* @D_BXT, align 4
  %10 = call i32 @MMIO_F(i32 %8, i32 12288, i32 0, i32 0, i32 0, i32 %9, i32* null, i32* null)
  %11 = load i32, i32* @GEN7_SAMPLER_INSTDONE, align 4
  %12 = load i32, i32* @D_BXT, align 4
  %13 = call i32 @MMIO_D(i32 %11, i32 %12)
  %14 = load i32, i32* @GEN7_ROW_INSTDONE, align 4
  %15 = load i32, i32* @D_BXT, align 4
  %16 = call i32 @MMIO_D(i32 %14, i32 %15)
  %17 = load i32, i32* @GEN8_FAULT_TLB_DATA0, align 4
  %18 = load i32, i32* @D_BXT, align 4
  %19 = call i32 @MMIO_D(i32 %17, i32 %18)
  %20 = load i32, i32* @GEN8_FAULT_TLB_DATA1, align 4
  %21 = load i32, i32* @D_BXT, align 4
  %22 = call i32 @MMIO_D(i32 %20, i32 %21)
  %23 = load i32, i32* @ERROR_GEN6, align 4
  %24 = load i32, i32* @D_BXT, align 4
  %25 = call i32 @MMIO_D(i32 %23, i32 %24)
  %26 = load i32, i32* @DONE_REG, align 4
  %27 = load i32, i32* @D_BXT, align 4
  %28 = call i32 @MMIO_D(i32 %26, i32 %27)
  %29 = load i32, i32* @EIR, align 4
  %30 = load i32, i32* @D_BXT, align 4
  %31 = call i32 @MMIO_D(i32 %29, i32 %30)
  %32 = load i32, i32* @PGTBL_ER, align 4
  %33 = load i32, i32* @D_BXT, align 4
  %34 = call i32 @MMIO_D(i32 %32, i32 %33)
  %35 = call i32 @_MMIO(i32 16788)
  %36 = load i32, i32* @D_BXT, align 4
  %37 = call i32 @MMIO_D(i32 %35, i32 %36)
  %38 = call i32 @_MMIO(i32 17044)
  %39 = load i32, i32* @D_BXT, align 4
  %40 = call i32 @MMIO_D(i32 %38, i32 %39)
  %41 = call i32 @_MMIO(i32 17556)
  %42 = load i32, i32* @D_BXT, align 4
  %43 = call i32 @MMIO_D(i32 %41, i32 %42)
  %44 = load i32, i32* @RING_PSMI_CTL, align 4
  %45 = load i32, i32* @D_BXT, align 4
  %46 = call i32 @MMIO_RING_D(i32 %44, i32 %45)
  %47 = load i32, i32* @RING_DMA_FADD, align 4
  %48 = load i32, i32* @D_BXT, align 4
  %49 = call i32 @MMIO_RING_D(i32 %47, i32 %48)
  %50 = load i32, i32* @RING_DMA_FADD_UDW, align 4
  %51 = load i32, i32* @D_BXT, align 4
  %52 = call i32 @MMIO_RING_D(i32 %50, i32 %51)
  %53 = load i32, i32* @RING_IPEHR, align 4
  %54 = load i32, i32* @D_BXT, align 4
  %55 = call i32 @MMIO_RING_D(i32 %53, i32 %54)
  %56 = load i32, i32* @RING_INSTPS, align 4
  %57 = load i32, i32* @D_BXT, align 4
  %58 = call i32 @MMIO_RING_D(i32 %56, i32 %57)
  %59 = load i32, i32* @RING_BBADDR_UDW, align 4
  %60 = load i32, i32* @D_BXT, align 4
  %61 = call i32 @MMIO_RING_D(i32 %59, i32 %60)
  %62 = load i32, i32* @RING_BBSTATE, align 4
  %63 = load i32, i32* @D_BXT, align 4
  %64 = call i32 @MMIO_RING_D(i32 %62, i32 %63)
  %65 = load i32, i32* @RING_IPEIR, align 4
  %66 = load i32, i32* @D_BXT, align 4
  %67 = call i32 @MMIO_RING_D(i32 %65, i32 %66)
  %68 = call i32 @SOFT_SCRATCH(i32 0)
  %69 = load i32, i32* @D_BXT, align 4
  %70 = call i32 @MMIO_F(i32 %68, i32 64, i32 0, i32 0, i32 0, i32 %69, i32* null, i32* null)
  %71 = load i32, i32* @BXT_P_CR_GT_DISP_PWRON, align 4
  %72 = load i32, i32* @D_BXT, align 4
  %73 = load i32*, i32** @bxt_gt_disp_pwron_write, align 8
  %74 = call i32 @MMIO_DH(i32 %71, i32 %72, i32* null, i32* %73)
  %75 = load i32, i32* @BXT_RP_STATE_CAP, align 4
  %76 = load i32, i32* @D_BXT, align 4
  %77 = call i32 @MMIO_D(i32 %75, i32 %76)
  %78 = load i32, i32* @DPIO_PHY0, align 4
  %79 = call i32 @BXT_PHY_CTL_FAMILY(i32 %78)
  %80 = load i32, i32* @D_BXT, align 4
  %81 = load i32*, i32** @bxt_phy_ctl_family_write, align 8
  %82 = call i32 @MMIO_DH(i32 %79, i32 %80, i32* null, i32* %81)
  %83 = load i32, i32* @DPIO_PHY1, align 4
  %84 = call i32 @BXT_PHY_CTL_FAMILY(i32 %83)
  %85 = load i32, i32* @D_BXT, align 4
  %86 = load i32*, i32** @bxt_phy_ctl_family_write, align 8
  %87 = call i32 @MMIO_DH(i32 %84, i32 %85, i32* null, i32* %86)
  %88 = load i32, i32* @PORT_A, align 4
  %89 = call i32 @BXT_PHY_CTL(i32 %88)
  %90 = load i32, i32* @D_BXT, align 4
  %91 = call i32 @MMIO_D(i32 %89, i32 %90)
  %92 = load i32, i32* @PORT_B, align 4
  %93 = call i32 @BXT_PHY_CTL(i32 %92)
  %94 = load i32, i32* @D_BXT, align 4
  %95 = call i32 @MMIO_D(i32 %93, i32 %94)
  %96 = load i32, i32* @PORT_C, align 4
  %97 = call i32 @BXT_PHY_CTL(i32 %96)
  %98 = load i32, i32* @D_BXT, align 4
  %99 = call i32 @MMIO_D(i32 %97, i32 %98)
  %100 = load i32, i32* @PORT_A, align 4
  %101 = call i32 @BXT_PORT_PLL_ENABLE(i32 %100)
  %102 = load i32, i32* @D_BXT, align 4
  %103 = load i32*, i32** @bxt_port_pll_enable_write, align 8
  %104 = call i32 @MMIO_DH(i32 %101, i32 %102, i32* null, i32* %103)
  %105 = load i32, i32* @PORT_B, align 4
  %106 = call i32 @BXT_PORT_PLL_ENABLE(i32 %105)
  %107 = load i32, i32* @D_BXT, align 4
  %108 = load i32*, i32** @bxt_port_pll_enable_write, align 8
  %109 = call i32 @MMIO_DH(i32 %106, i32 %107, i32* null, i32* %108)
  %110 = load i32, i32* @PORT_C, align 4
  %111 = call i32 @BXT_PORT_PLL_ENABLE(i32 %110)
  %112 = load i32, i32* @D_BXT, align 4
  %113 = load i32*, i32** @bxt_port_pll_enable_write, align 8
  %114 = call i32 @MMIO_DH(i32 %111, i32 %112, i32* null, i32* %113)
  %115 = load i32, i32* @DPIO_PHY0, align 4
  %116 = call i32 @BXT_PORT_CL1CM_DW0(i32 %115)
  %117 = load i32, i32* @D_BXT, align 4
  %118 = call i32 @MMIO_D(i32 %116, i32 %117)
  %119 = load i32, i32* @DPIO_PHY0, align 4
  %120 = call i32 @BXT_PORT_CL1CM_DW9(i32 %119)
  %121 = load i32, i32* @D_BXT, align 4
  %122 = call i32 @MMIO_D(i32 %120, i32 %121)
  %123 = load i32, i32* @DPIO_PHY0, align 4
  %124 = call i32 @BXT_PORT_CL1CM_DW10(i32 %123)
  %125 = load i32, i32* @D_BXT, align 4
  %126 = call i32 @MMIO_D(i32 %124, i32 %125)
  %127 = load i32, i32* @DPIO_PHY0, align 4
  %128 = call i32 @BXT_PORT_CL1CM_DW28(i32 %127)
  %129 = load i32, i32* @D_BXT, align 4
  %130 = call i32 @MMIO_D(i32 %128, i32 %129)
  %131 = load i32, i32* @DPIO_PHY0, align 4
  %132 = call i32 @BXT_PORT_CL1CM_DW30(i32 %131)
  %133 = load i32, i32* @D_BXT, align 4
  %134 = call i32 @MMIO_D(i32 %132, i32 %133)
  %135 = load i32, i32* @DPIO_PHY0, align 4
  %136 = call i32 @BXT_PORT_CL2CM_DW6(i32 %135)
  %137 = load i32, i32* @D_BXT, align 4
  %138 = call i32 @MMIO_D(i32 %136, i32 %137)
  %139 = load i32, i32* @DPIO_PHY0, align 4
  %140 = call i32 @BXT_PORT_REF_DW3(i32 %139)
  %141 = load i32, i32* @D_BXT, align 4
  %142 = call i32 @MMIO_D(i32 %140, i32 %141)
  %143 = load i32, i32* @DPIO_PHY0, align 4
  %144 = call i32 @BXT_PORT_REF_DW6(i32 %143)
  %145 = load i32, i32* @D_BXT, align 4
  %146 = call i32 @MMIO_D(i32 %144, i32 %145)
  %147 = load i32, i32* @DPIO_PHY0, align 4
  %148 = call i32 @BXT_PORT_REF_DW8(i32 %147)
  %149 = load i32, i32* @D_BXT, align 4
  %150 = call i32 @MMIO_D(i32 %148, i32 %149)
  %151 = load i32, i32* @DPIO_PHY1, align 4
  %152 = call i32 @BXT_PORT_CL1CM_DW0(i32 %151)
  %153 = load i32, i32* @D_BXT, align 4
  %154 = call i32 @MMIO_D(i32 %152, i32 %153)
  %155 = load i32, i32* @DPIO_PHY1, align 4
  %156 = call i32 @BXT_PORT_CL1CM_DW9(i32 %155)
  %157 = load i32, i32* @D_BXT, align 4
  %158 = call i32 @MMIO_D(i32 %156, i32 %157)
  %159 = load i32, i32* @DPIO_PHY1, align 4
  %160 = call i32 @BXT_PORT_CL1CM_DW10(i32 %159)
  %161 = load i32, i32* @D_BXT, align 4
  %162 = call i32 @MMIO_D(i32 %160, i32 %161)
  %163 = load i32, i32* @DPIO_PHY1, align 4
  %164 = call i32 @BXT_PORT_CL1CM_DW28(i32 %163)
  %165 = load i32, i32* @D_BXT, align 4
  %166 = call i32 @MMIO_D(i32 %164, i32 %165)
  %167 = load i32, i32* @DPIO_PHY1, align 4
  %168 = call i32 @BXT_PORT_CL1CM_DW30(i32 %167)
  %169 = load i32, i32* @D_BXT, align 4
  %170 = call i32 @MMIO_D(i32 %168, i32 %169)
  %171 = load i32, i32* @DPIO_PHY1, align 4
  %172 = call i32 @BXT_PORT_CL2CM_DW6(i32 %171)
  %173 = load i32, i32* @D_BXT, align 4
  %174 = call i32 @MMIO_D(i32 %172, i32 %173)
  %175 = load i32, i32* @DPIO_PHY1, align 4
  %176 = call i32 @BXT_PORT_REF_DW3(i32 %175)
  %177 = load i32, i32* @D_BXT, align 4
  %178 = call i32 @MMIO_D(i32 %176, i32 %177)
  %179 = load i32, i32* @DPIO_PHY1, align 4
  %180 = call i32 @BXT_PORT_REF_DW6(i32 %179)
  %181 = load i32, i32* @D_BXT, align 4
  %182 = call i32 @MMIO_D(i32 %180, i32 %181)
  %183 = load i32, i32* @DPIO_PHY1, align 4
  %184 = call i32 @BXT_PORT_REF_DW8(i32 %183)
  %185 = load i32, i32* @D_BXT, align 4
  %186 = call i32 @MMIO_D(i32 %184, i32 %185)
  %187 = load i32, i32* @DPIO_PHY0, align 4
  %188 = load i32, i32* @DPIO_CH0, align 4
  %189 = call i32 @BXT_PORT_PLL_EBB_0(i32 %187, i32 %188)
  %190 = load i32, i32* @D_BXT, align 4
  %191 = call i32 @MMIO_D(i32 %189, i32 %190)
  %192 = load i32, i32* @DPIO_PHY0, align 4
  %193 = load i32, i32* @DPIO_CH0, align 4
  %194 = call i32 @BXT_PORT_PLL_EBB_4(i32 %192, i32 %193)
  %195 = load i32, i32* @D_BXT, align 4
  %196 = call i32 @MMIO_D(i32 %194, i32 %195)
  %197 = load i32, i32* @DPIO_PHY0, align 4
  %198 = load i32, i32* @DPIO_CH0, align 4
  %199 = call i32 @BXT_PORT_PCS_DW10_LN01(i32 %197, i32 %198)
  %200 = load i32, i32* @D_BXT, align 4
  %201 = call i32 @MMIO_D(i32 %199, i32 %200)
  %202 = load i32, i32* @DPIO_PHY0, align 4
  %203 = load i32, i32* @DPIO_CH0, align 4
  %204 = call i32 @BXT_PORT_PCS_DW10_GRP(i32 %202, i32 %203)
  %205 = load i32, i32* @D_BXT, align 4
  %206 = call i32 @MMIO_D(i32 %204, i32 %205)
  %207 = load i32, i32* @DPIO_PHY0, align 4
  %208 = load i32, i32* @DPIO_CH0, align 4
  %209 = call i32 @BXT_PORT_PCS_DW12_LN01(i32 %207, i32 %208)
  %210 = load i32, i32* @D_BXT, align 4
  %211 = call i32 @MMIO_D(i32 %209, i32 %210)
  %212 = load i32, i32* @DPIO_PHY0, align 4
  %213 = load i32, i32* @DPIO_CH0, align 4
  %214 = call i32 @BXT_PORT_PCS_DW12_LN23(i32 %212, i32 %213)
  %215 = load i32, i32* @D_BXT, align 4
  %216 = call i32 @MMIO_D(i32 %214, i32 %215)
  %217 = load i32, i32* @DPIO_PHY0, align 4
  %218 = load i32, i32* @DPIO_CH0, align 4
  %219 = call i32 @BXT_PORT_PCS_DW12_GRP(i32 %217, i32 %218)
  %220 = load i32, i32* @D_BXT, align 4
  %221 = load i32*, i32** @bxt_pcs_dw12_grp_write, align 8
  %222 = call i32 @MMIO_DH(i32 %219, i32 %220, i32* null, i32* %221)
  %223 = load i32, i32* @DPIO_PHY0, align 4
  %224 = load i32, i32* @DPIO_CH0, align 4
  %225 = call i32 @BXT_PORT_TX_DW2_LN0(i32 %223, i32 %224)
  %226 = load i32, i32* @D_BXT, align 4
  %227 = call i32 @MMIO_D(i32 %225, i32 %226)
  %228 = load i32, i32* @DPIO_PHY0, align 4
  %229 = load i32, i32* @DPIO_CH0, align 4
  %230 = call i32 @BXT_PORT_TX_DW2_GRP(i32 %228, i32 %229)
  %231 = load i32, i32* @D_BXT, align 4
  %232 = call i32 @MMIO_D(i32 %230, i32 %231)
  %233 = load i32, i32* @DPIO_PHY0, align 4
  %234 = load i32, i32* @DPIO_CH0, align 4
  %235 = call i32 @BXT_PORT_TX_DW3_LN0(i32 %233, i32 %234)
  %236 = load i32, i32* @D_BXT, align 4
  %237 = load i32*, i32** @bxt_port_tx_dw3_read, align 8
  %238 = call i32 @MMIO_DH(i32 %235, i32 %236, i32* %237, i32* null)
  %239 = load i32, i32* @DPIO_PHY0, align 4
  %240 = load i32, i32* @DPIO_CH0, align 4
  %241 = call i32 @BXT_PORT_TX_DW3_GRP(i32 %239, i32 %240)
  %242 = load i32, i32* @D_BXT, align 4
  %243 = call i32 @MMIO_D(i32 %241, i32 %242)
  %244 = load i32, i32* @DPIO_PHY0, align 4
  %245 = load i32, i32* @DPIO_CH0, align 4
  %246 = call i32 @BXT_PORT_TX_DW4_LN0(i32 %244, i32 %245)
  %247 = load i32, i32* @D_BXT, align 4
  %248 = call i32 @MMIO_D(i32 %246, i32 %247)
  %249 = load i32, i32* @DPIO_PHY0, align 4
  %250 = load i32, i32* @DPIO_CH0, align 4
  %251 = call i32 @BXT_PORT_TX_DW4_GRP(i32 %249, i32 %250)
  %252 = load i32, i32* @D_BXT, align 4
  %253 = call i32 @MMIO_D(i32 %251, i32 %252)
  %254 = load i32, i32* @DPIO_PHY0, align 4
  %255 = load i32, i32* @DPIO_CH0, align 4
  %256 = call i32 @BXT_PORT_TX_DW14_LN(i32 %254, i32 %255, i32 0)
  %257 = load i32, i32* @D_BXT, align 4
  %258 = call i32 @MMIO_D(i32 %256, i32 %257)
  %259 = load i32, i32* @DPIO_PHY0, align 4
  %260 = load i32, i32* @DPIO_CH0, align 4
  %261 = call i32 @BXT_PORT_TX_DW14_LN(i32 %259, i32 %260, i32 1)
  %262 = load i32, i32* @D_BXT, align 4
  %263 = call i32 @MMIO_D(i32 %261, i32 %262)
  %264 = load i32, i32* @DPIO_PHY0, align 4
  %265 = load i32, i32* @DPIO_CH0, align 4
  %266 = call i32 @BXT_PORT_TX_DW14_LN(i32 %264, i32 %265, i32 2)
  %267 = load i32, i32* @D_BXT, align 4
  %268 = call i32 @MMIO_D(i32 %266, i32 %267)
  %269 = load i32, i32* @DPIO_PHY0, align 4
  %270 = load i32, i32* @DPIO_CH0, align 4
  %271 = call i32 @BXT_PORT_TX_DW14_LN(i32 %269, i32 %270, i32 3)
  %272 = load i32, i32* @D_BXT, align 4
  %273 = call i32 @MMIO_D(i32 %271, i32 %272)
  %274 = load i32, i32* @DPIO_PHY0, align 4
  %275 = load i32, i32* @DPIO_CH0, align 4
  %276 = call i32 @BXT_PORT_PLL(i32 %274, i32 %275, i32 0)
  %277 = load i32, i32* @D_BXT, align 4
  %278 = call i32 @MMIO_D(i32 %276, i32 %277)
  %279 = load i32, i32* @DPIO_PHY0, align 4
  %280 = load i32, i32* @DPIO_CH0, align 4
  %281 = call i32 @BXT_PORT_PLL(i32 %279, i32 %280, i32 1)
  %282 = load i32, i32* @D_BXT, align 4
  %283 = call i32 @MMIO_D(i32 %281, i32 %282)
  %284 = load i32, i32* @DPIO_PHY0, align 4
  %285 = load i32, i32* @DPIO_CH0, align 4
  %286 = call i32 @BXT_PORT_PLL(i32 %284, i32 %285, i32 2)
  %287 = load i32, i32* @D_BXT, align 4
  %288 = call i32 @MMIO_D(i32 %286, i32 %287)
  %289 = load i32, i32* @DPIO_PHY0, align 4
  %290 = load i32, i32* @DPIO_CH0, align 4
  %291 = call i32 @BXT_PORT_PLL(i32 %289, i32 %290, i32 3)
  %292 = load i32, i32* @D_BXT, align 4
  %293 = call i32 @MMIO_D(i32 %291, i32 %292)
  %294 = load i32, i32* @DPIO_PHY0, align 4
  %295 = load i32, i32* @DPIO_CH0, align 4
  %296 = call i32 @BXT_PORT_PLL(i32 %294, i32 %295, i32 6)
  %297 = load i32, i32* @D_BXT, align 4
  %298 = call i32 @MMIO_D(i32 %296, i32 %297)
  %299 = load i32, i32* @DPIO_PHY0, align 4
  %300 = load i32, i32* @DPIO_CH0, align 4
  %301 = call i32 @BXT_PORT_PLL(i32 %299, i32 %300, i32 8)
  %302 = load i32, i32* @D_BXT, align 4
  %303 = call i32 @MMIO_D(i32 %301, i32 %302)
  %304 = load i32, i32* @DPIO_PHY0, align 4
  %305 = load i32, i32* @DPIO_CH0, align 4
  %306 = call i32 @BXT_PORT_PLL(i32 %304, i32 %305, i32 9)
  %307 = load i32, i32* @D_BXT, align 4
  %308 = call i32 @MMIO_D(i32 %306, i32 %307)
  %309 = load i32, i32* @DPIO_PHY0, align 4
  %310 = load i32, i32* @DPIO_CH0, align 4
  %311 = call i32 @BXT_PORT_PLL(i32 %309, i32 %310, i32 10)
  %312 = load i32, i32* @D_BXT, align 4
  %313 = call i32 @MMIO_D(i32 %311, i32 %312)
  %314 = load i32, i32* @DPIO_PHY0, align 4
  %315 = load i32, i32* @DPIO_CH1, align 4
  %316 = call i32 @BXT_PORT_PLL_EBB_0(i32 %314, i32 %315)
  %317 = load i32, i32* @D_BXT, align 4
  %318 = call i32 @MMIO_D(i32 %316, i32 %317)
  %319 = load i32, i32* @DPIO_PHY0, align 4
  %320 = load i32, i32* @DPIO_CH1, align 4
  %321 = call i32 @BXT_PORT_PLL_EBB_4(i32 %319, i32 %320)
  %322 = load i32, i32* @D_BXT, align 4
  %323 = call i32 @MMIO_D(i32 %321, i32 %322)
  %324 = load i32, i32* @DPIO_PHY0, align 4
  %325 = load i32, i32* @DPIO_CH1, align 4
  %326 = call i32 @BXT_PORT_PCS_DW10_LN01(i32 %324, i32 %325)
  %327 = load i32, i32* @D_BXT, align 4
  %328 = call i32 @MMIO_D(i32 %326, i32 %327)
  %329 = load i32, i32* @DPIO_PHY0, align 4
  %330 = load i32, i32* @DPIO_CH1, align 4
  %331 = call i32 @BXT_PORT_PCS_DW10_GRP(i32 %329, i32 %330)
  %332 = load i32, i32* @D_BXT, align 4
  %333 = call i32 @MMIO_D(i32 %331, i32 %332)
  %334 = load i32, i32* @DPIO_PHY0, align 4
  %335 = load i32, i32* @DPIO_CH1, align 4
  %336 = call i32 @BXT_PORT_PCS_DW12_LN01(i32 %334, i32 %335)
  %337 = load i32, i32* @D_BXT, align 4
  %338 = call i32 @MMIO_D(i32 %336, i32 %337)
  %339 = load i32, i32* @DPIO_PHY0, align 4
  %340 = load i32, i32* @DPIO_CH1, align 4
  %341 = call i32 @BXT_PORT_PCS_DW12_LN23(i32 %339, i32 %340)
  %342 = load i32, i32* @D_BXT, align 4
  %343 = call i32 @MMIO_D(i32 %341, i32 %342)
  %344 = load i32, i32* @DPIO_PHY0, align 4
  %345 = load i32, i32* @DPIO_CH1, align 4
  %346 = call i32 @BXT_PORT_PCS_DW12_GRP(i32 %344, i32 %345)
  %347 = load i32, i32* @D_BXT, align 4
  %348 = load i32*, i32** @bxt_pcs_dw12_grp_write, align 8
  %349 = call i32 @MMIO_DH(i32 %346, i32 %347, i32* null, i32* %348)
  %350 = load i32, i32* @DPIO_PHY0, align 4
  %351 = load i32, i32* @DPIO_CH1, align 4
  %352 = call i32 @BXT_PORT_TX_DW2_LN0(i32 %350, i32 %351)
  %353 = load i32, i32* @D_BXT, align 4
  %354 = call i32 @MMIO_D(i32 %352, i32 %353)
  %355 = load i32, i32* @DPIO_PHY0, align 4
  %356 = load i32, i32* @DPIO_CH1, align 4
  %357 = call i32 @BXT_PORT_TX_DW2_GRP(i32 %355, i32 %356)
  %358 = load i32, i32* @D_BXT, align 4
  %359 = call i32 @MMIO_D(i32 %357, i32 %358)
  %360 = load i32, i32* @DPIO_PHY0, align 4
  %361 = load i32, i32* @DPIO_CH1, align 4
  %362 = call i32 @BXT_PORT_TX_DW3_LN0(i32 %360, i32 %361)
  %363 = load i32, i32* @D_BXT, align 4
  %364 = load i32*, i32** @bxt_port_tx_dw3_read, align 8
  %365 = call i32 @MMIO_DH(i32 %362, i32 %363, i32* %364, i32* null)
  %366 = load i32, i32* @DPIO_PHY0, align 4
  %367 = load i32, i32* @DPIO_CH1, align 4
  %368 = call i32 @BXT_PORT_TX_DW3_GRP(i32 %366, i32 %367)
  %369 = load i32, i32* @D_BXT, align 4
  %370 = call i32 @MMIO_D(i32 %368, i32 %369)
  %371 = load i32, i32* @DPIO_PHY0, align 4
  %372 = load i32, i32* @DPIO_CH1, align 4
  %373 = call i32 @BXT_PORT_TX_DW4_LN0(i32 %371, i32 %372)
  %374 = load i32, i32* @D_BXT, align 4
  %375 = call i32 @MMIO_D(i32 %373, i32 %374)
  %376 = load i32, i32* @DPIO_PHY0, align 4
  %377 = load i32, i32* @DPIO_CH1, align 4
  %378 = call i32 @BXT_PORT_TX_DW4_GRP(i32 %376, i32 %377)
  %379 = load i32, i32* @D_BXT, align 4
  %380 = call i32 @MMIO_D(i32 %378, i32 %379)
  %381 = load i32, i32* @DPIO_PHY0, align 4
  %382 = load i32, i32* @DPIO_CH1, align 4
  %383 = call i32 @BXT_PORT_TX_DW14_LN(i32 %381, i32 %382, i32 0)
  %384 = load i32, i32* @D_BXT, align 4
  %385 = call i32 @MMIO_D(i32 %383, i32 %384)
  %386 = load i32, i32* @DPIO_PHY0, align 4
  %387 = load i32, i32* @DPIO_CH1, align 4
  %388 = call i32 @BXT_PORT_TX_DW14_LN(i32 %386, i32 %387, i32 1)
  %389 = load i32, i32* @D_BXT, align 4
  %390 = call i32 @MMIO_D(i32 %388, i32 %389)
  %391 = load i32, i32* @DPIO_PHY0, align 4
  %392 = load i32, i32* @DPIO_CH1, align 4
  %393 = call i32 @BXT_PORT_TX_DW14_LN(i32 %391, i32 %392, i32 2)
  %394 = load i32, i32* @D_BXT, align 4
  %395 = call i32 @MMIO_D(i32 %393, i32 %394)
  %396 = load i32, i32* @DPIO_PHY0, align 4
  %397 = load i32, i32* @DPIO_CH1, align 4
  %398 = call i32 @BXT_PORT_TX_DW14_LN(i32 %396, i32 %397, i32 3)
  %399 = load i32, i32* @D_BXT, align 4
  %400 = call i32 @MMIO_D(i32 %398, i32 %399)
  %401 = load i32, i32* @DPIO_PHY0, align 4
  %402 = load i32, i32* @DPIO_CH1, align 4
  %403 = call i32 @BXT_PORT_PLL(i32 %401, i32 %402, i32 0)
  %404 = load i32, i32* @D_BXT, align 4
  %405 = call i32 @MMIO_D(i32 %403, i32 %404)
  %406 = load i32, i32* @DPIO_PHY0, align 4
  %407 = load i32, i32* @DPIO_CH1, align 4
  %408 = call i32 @BXT_PORT_PLL(i32 %406, i32 %407, i32 1)
  %409 = load i32, i32* @D_BXT, align 4
  %410 = call i32 @MMIO_D(i32 %408, i32 %409)
  %411 = load i32, i32* @DPIO_PHY0, align 4
  %412 = load i32, i32* @DPIO_CH1, align 4
  %413 = call i32 @BXT_PORT_PLL(i32 %411, i32 %412, i32 2)
  %414 = load i32, i32* @D_BXT, align 4
  %415 = call i32 @MMIO_D(i32 %413, i32 %414)
  %416 = load i32, i32* @DPIO_PHY0, align 4
  %417 = load i32, i32* @DPIO_CH1, align 4
  %418 = call i32 @BXT_PORT_PLL(i32 %416, i32 %417, i32 3)
  %419 = load i32, i32* @D_BXT, align 4
  %420 = call i32 @MMIO_D(i32 %418, i32 %419)
  %421 = load i32, i32* @DPIO_PHY0, align 4
  %422 = load i32, i32* @DPIO_CH1, align 4
  %423 = call i32 @BXT_PORT_PLL(i32 %421, i32 %422, i32 6)
  %424 = load i32, i32* @D_BXT, align 4
  %425 = call i32 @MMIO_D(i32 %423, i32 %424)
  %426 = load i32, i32* @DPIO_PHY0, align 4
  %427 = load i32, i32* @DPIO_CH1, align 4
  %428 = call i32 @BXT_PORT_PLL(i32 %426, i32 %427, i32 8)
  %429 = load i32, i32* @D_BXT, align 4
  %430 = call i32 @MMIO_D(i32 %428, i32 %429)
  %431 = load i32, i32* @DPIO_PHY0, align 4
  %432 = load i32, i32* @DPIO_CH1, align 4
  %433 = call i32 @BXT_PORT_PLL(i32 %431, i32 %432, i32 9)
  %434 = load i32, i32* @D_BXT, align 4
  %435 = call i32 @MMIO_D(i32 %433, i32 %434)
  %436 = load i32, i32* @DPIO_PHY0, align 4
  %437 = load i32, i32* @DPIO_CH1, align 4
  %438 = call i32 @BXT_PORT_PLL(i32 %436, i32 %437, i32 10)
  %439 = load i32, i32* @D_BXT, align 4
  %440 = call i32 @MMIO_D(i32 %438, i32 %439)
  %441 = load i32, i32* @DPIO_PHY1, align 4
  %442 = load i32, i32* @DPIO_CH0, align 4
  %443 = call i32 @BXT_PORT_PLL_EBB_0(i32 %441, i32 %442)
  %444 = load i32, i32* @D_BXT, align 4
  %445 = call i32 @MMIO_D(i32 %443, i32 %444)
  %446 = load i32, i32* @DPIO_PHY1, align 4
  %447 = load i32, i32* @DPIO_CH0, align 4
  %448 = call i32 @BXT_PORT_PLL_EBB_4(i32 %446, i32 %447)
  %449 = load i32, i32* @D_BXT, align 4
  %450 = call i32 @MMIO_D(i32 %448, i32 %449)
  %451 = load i32, i32* @DPIO_PHY1, align 4
  %452 = load i32, i32* @DPIO_CH0, align 4
  %453 = call i32 @BXT_PORT_PCS_DW10_LN01(i32 %451, i32 %452)
  %454 = load i32, i32* @D_BXT, align 4
  %455 = call i32 @MMIO_D(i32 %453, i32 %454)
  %456 = load i32, i32* @DPIO_PHY1, align 4
  %457 = load i32, i32* @DPIO_CH0, align 4
  %458 = call i32 @BXT_PORT_PCS_DW10_GRP(i32 %456, i32 %457)
  %459 = load i32, i32* @D_BXT, align 4
  %460 = call i32 @MMIO_D(i32 %458, i32 %459)
  %461 = load i32, i32* @DPIO_PHY1, align 4
  %462 = load i32, i32* @DPIO_CH0, align 4
  %463 = call i32 @BXT_PORT_PCS_DW12_LN01(i32 %461, i32 %462)
  %464 = load i32, i32* @D_BXT, align 4
  %465 = call i32 @MMIO_D(i32 %463, i32 %464)
  %466 = load i32, i32* @DPIO_PHY1, align 4
  %467 = load i32, i32* @DPIO_CH0, align 4
  %468 = call i32 @BXT_PORT_PCS_DW12_LN23(i32 %466, i32 %467)
  %469 = load i32, i32* @D_BXT, align 4
  %470 = call i32 @MMIO_D(i32 %468, i32 %469)
  %471 = load i32, i32* @DPIO_PHY1, align 4
  %472 = load i32, i32* @DPIO_CH0, align 4
  %473 = call i32 @BXT_PORT_PCS_DW12_GRP(i32 %471, i32 %472)
  %474 = load i32, i32* @D_BXT, align 4
  %475 = load i32*, i32** @bxt_pcs_dw12_grp_write, align 8
  %476 = call i32 @MMIO_DH(i32 %473, i32 %474, i32* null, i32* %475)
  %477 = load i32, i32* @DPIO_PHY1, align 4
  %478 = load i32, i32* @DPIO_CH0, align 4
  %479 = call i32 @BXT_PORT_TX_DW2_LN0(i32 %477, i32 %478)
  %480 = load i32, i32* @D_BXT, align 4
  %481 = call i32 @MMIO_D(i32 %479, i32 %480)
  %482 = load i32, i32* @DPIO_PHY1, align 4
  %483 = load i32, i32* @DPIO_CH0, align 4
  %484 = call i32 @BXT_PORT_TX_DW2_GRP(i32 %482, i32 %483)
  %485 = load i32, i32* @D_BXT, align 4
  %486 = call i32 @MMIO_D(i32 %484, i32 %485)
  %487 = load i32, i32* @DPIO_PHY1, align 4
  %488 = load i32, i32* @DPIO_CH0, align 4
  %489 = call i32 @BXT_PORT_TX_DW3_LN0(i32 %487, i32 %488)
  %490 = load i32, i32* @D_BXT, align 4
  %491 = load i32*, i32** @bxt_port_tx_dw3_read, align 8
  %492 = call i32 @MMIO_DH(i32 %489, i32 %490, i32* %491, i32* null)
  %493 = load i32, i32* @DPIO_PHY1, align 4
  %494 = load i32, i32* @DPIO_CH0, align 4
  %495 = call i32 @BXT_PORT_TX_DW3_GRP(i32 %493, i32 %494)
  %496 = load i32, i32* @D_BXT, align 4
  %497 = call i32 @MMIO_D(i32 %495, i32 %496)
  %498 = load i32, i32* @DPIO_PHY1, align 4
  %499 = load i32, i32* @DPIO_CH0, align 4
  %500 = call i32 @BXT_PORT_TX_DW4_LN0(i32 %498, i32 %499)
  %501 = load i32, i32* @D_BXT, align 4
  %502 = call i32 @MMIO_D(i32 %500, i32 %501)
  %503 = load i32, i32* @DPIO_PHY1, align 4
  %504 = load i32, i32* @DPIO_CH0, align 4
  %505 = call i32 @BXT_PORT_TX_DW4_GRP(i32 %503, i32 %504)
  %506 = load i32, i32* @D_BXT, align 4
  %507 = call i32 @MMIO_D(i32 %505, i32 %506)
  %508 = load i32, i32* @DPIO_PHY1, align 4
  %509 = load i32, i32* @DPIO_CH0, align 4
  %510 = call i32 @BXT_PORT_TX_DW14_LN(i32 %508, i32 %509, i32 0)
  %511 = load i32, i32* @D_BXT, align 4
  %512 = call i32 @MMIO_D(i32 %510, i32 %511)
  %513 = load i32, i32* @DPIO_PHY1, align 4
  %514 = load i32, i32* @DPIO_CH0, align 4
  %515 = call i32 @BXT_PORT_TX_DW14_LN(i32 %513, i32 %514, i32 1)
  %516 = load i32, i32* @D_BXT, align 4
  %517 = call i32 @MMIO_D(i32 %515, i32 %516)
  %518 = load i32, i32* @DPIO_PHY1, align 4
  %519 = load i32, i32* @DPIO_CH0, align 4
  %520 = call i32 @BXT_PORT_TX_DW14_LN(i32 %518, i32 %519, i32 2)
  %521 = load i32, i32* @D_BXT, align 4
  %522 = call i32 @MMIO_D(i32 %520, i32 %521)
  %523 = load i32, i32* @DPIO_PHY1, align 4
  %524 = load i32, i32* @DPIO_CH0, align 4
  %525 = call i32 @BXT_PORT_TX_DW14_LN(i32 %523, i32 %524, i32 3)
  %526 = load i32, i32* @D_BXT, align 4
  %527 = call i32 @MMIO_D(i32 %525, i32 %526)
  %528 = load i32, i32* @DPIO_PHY1, align 4
  %529 = load i32, i32* @DPIO_CH0, align 4
  %530 = call i32 @BXT_PORT_PLL(i32 %528, i32 %529, i32 0)
  %531 = load i32, i32* @D_BXT, align 4
  %532 = call i32 @MMIO_D(i32 %530, i32 %531)
  %533 = load i32, i32* @DPIO_PHY1, align 4
  %534 = load i32, i32* @DPIO_CH0, align 4
  %535 = call i32 @BXT_PORT_PLL(i32 %533, i32 %534, i32 1)
  %536 = load i32, i32* @D_BXT, align 4
  %537 = call i32 @MMIO_D(i32 %535, i32 %536)
  %538 = load i32, i32* @DPIO_PHY1, align 4
  %539 = load i32, i32* @DPIO_CH0, align 4
  %540 = call i32 @BXT_PORT_PLL(i32 %538, i32 %539, i32 2)
  %541 = load i32, i32* @D_BXT, align 4
  %542 = call i32 @MMIO_D(i32 %540, i32 %541)
  %543 = load i32, i32* @DPIO_PHY1, align 4
  %544 = load i32, i32* @DPIO_CH0, align 4
  %545 = call i32 @BXT_PORT_PLL(i32 %543, i32 %544, i32 3)
  %546 = load i32, i32* @D_BXT, align 4
  %547 = call i32 @MMIO_D(i32 %545, i32 %546)
  %548 = load i32, i32* @DPIO_PHY1, align 4
  %549 = load i32, i32* @DPIO_CH0, align 4
  %550 = call i32 @BXT_PORT_PLL(i32 %548, i32 %549, i32 6)
  %551 = load i32, i32* @D_BXT, align 4
  %552 = call i32 @MMIO_D(i32 %550, i32 %551)
  %553 = load i32, i32* @DPIO_PHY1, align 4
  %554 = load i32, i32* @DPIO_CH0, align 4
  %555 = call i32 @BXT_PORT_PLL(i32 %553, i32 %554, i32 8)
  %556 = load i32, i32* @D_BXT, align 4
  %557 = call i32 @MMIO_D(i32 %555, i32 %556)
  %558 = load i32, i32* @DPIO_PHY1, align 4
  %559 = load i32, i32* @DPIO_CH0, align 4
  %560 = call i32 @BXT_PORT_PLL(i32 %558, i32 %559, i32 9)
  %561 = load i32, i32* @D_BXT, align 4
  %562 = call i32 @MMIO_D(i32 %560, i32 %561)
  %563 = load i32, i32* @DPIO_PHY1, align 4
  %564 = load i32, i32* @DPIO_CH0, align 4
  %565 = call i32 @BXT_PORT_PLL(i32 %563, i32 %564, i32 10)
  %566 = load i32, i32* @D_BXT, align 4
  %567 = call i32 @MMIO_D(i32 %565, i32 %566)
  %568 = load i32, i32* @BXT_DE_PLL_CTL, align 4
  %569 = load i32, i32* @D_BXT, align 4
  %570 = call i32 @MMIO_D(i32 %568, i32 %569)
  %571 = load i32, i32* @BXT_DE_PLL_ENABLE, align 4
  %572 = load i32, i32* @D_BXT, align 4
  %573 = load i32*, i32** @bxt_de_pll_enable_write, align 8
  %574 = call i32 @MMIO_DH(i32 %571, i32 %572, i32* null, i32* %573)
  %575 = load i32, i32* @BXT_DSI_PLL_CTL, align 4
  %576 = load i32, i32* @D_BXT, align 4
  %577 = call i32 @MMIO_D(i32 %575, i32 %576)
  %578 = load i32, i32* @BXT_DSI_PLL_ENABLE, align 4
  %579 = load i32, i32* @D_BXT, align 4
  %580 = call i32 @MMIO_D(i32 %578, i32 %579)
  %581 = load i32, i32* @GEN9_CLKGATE_DIS_0, align 4
  %582 = load i32, i32* @D_BXT, align 4
  %583 = call i32 @MMIO_D(i32 %581, i32 %582)
  %584 = load i32, i32* @GEN9_CLKGATE_DIS_4, align 4
  %585 = load i32, i32* @D_BXT, align 4
  %586 = call i32 @MMIO_D(i32 %584, i32 %585)
  %587 = load i32, i32* @TRANSCODER_A, align 4
  %588 = call i32 @HSW_TVIDEO_DIP_GCP(i32 %587)
  %589 = load i32, i32* @D_BXT, align 4
  %590 = call i32 @MMIO_D(i32 %588, i32 %589)
  %591 = load i32, i32* @TRANSCODER_B, align 4
  %592 = call i32 @HSW_TVIDEO_DIP_GCP(i32 %591)
  %593 = load i32, i32* @D_BXT, align 4
  %594 = call i32 @MMIO_D(i32 %592, i32 %593)
  %595 = load i32, i32* @TRANSCODER_C, align 4
  %596 = call i32 @HSW_TVIDEO_DIP_GCP(i32 %595)
  %597 = load i32, i32* @D_BXT, align 4
  %598 = call i32 @MMIO_D(i32 %596, i32 %597)
  %599 = load i32, i32* @RC6_CTX_BASE, align 4
  %600 = load i32, i32* @D_BXT, align 4
  %601 = call i32 @MMIO_D(i32 %599, i32 %600)
  %602 = load i32, i32* @GEN8_PUSHBUS_CONTROL, align 4
  %603 = load i32, i32* @D_BXT, align 4
  %604 = call i32 @MMIO_D(i32 %602, i32 %603)
  %605 = load i32, i32* @GEN8_PUSHBUS_ENABLE, align 4
  %606 = load i32, i32* @D_BXT, align 4
  %607 = call i32 @MMIO_D(i32 %605, i32 %606)
  %608 = load i32, i32* @GEN8_PUSHBUS_SHIFT, align 4
  %609 = load i32, i32* @D_BXT, align 4
  %610 = call i32 @MMIO_D(i32 %608, i32 %609)
  %611 = load i32, i32* @GEN6_GFXPAUSE, align 4
  %612 = load i32, i32* @D_BXT, align 4
  %613 = call i32 @MMIO_D(i32 %611, i32 %612)
  %614 = load i32, i32* @GEN8_L3SQCREG1, align 4
  %615 = load i32, i32* @D_BXT, align 4
  %616 = load i32, i32* @F_CMD_ACCESS, align 4
  %617 = call i32 @MMIO_DFH(i32 %614, i32 %615, i32 %616, i32* null, i32* null)
  %618 = load i32, i32* @GEN9_CTX_PREEMPT_REG, align 4
  %619 = load i32, i32* @D_BXT, align 4
  %620 = load i32, i32* @F_CMD_ACCESS, align 4
  %621 = call i32 @MMIO_DFH(i32 %618, i32 %619, i32 %620, i32* null, i32* null)
  ret i32 0
}

declare dso_local i32 @MMIO_F(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @_MMIO(i32) #1

declare dso_local i32 @MMIO_D(i32, i32) #1

declare dso_local i32 @MMIO_RING_D(i32, i32) #1

declare dso_local i32 @SOFT_SCRATCH(i32) #1

declare dso_local i32 @MMIO_DH(i32, i32, i32*, i32*) #1

declare dso_local i32 @BXT_PHY_CTL_FAMILY(i32) #1

declare dso_local i32 @BXT_PHY_CTL(i32) #1

declare dso_local i32 @BXT_PORT_PLL_ENABLE(i32) #1

declare dso_local i32 @BXT_PORT_CL1CM_DW0(i32) #1

declare dso_local i32 @BXT_PORT_CL1CM_DW9(i32) #1

declare dso_local i32 @BXT_PORT_CL1CM_DW10(i32) #1

declare dso_local i32 @BXT_PORT_CL1CM_DW28(i32) #1

declare dso_local i32 @BXT_PORT_CL1CM_DW30(i32) #1

declare dso_local i32 @BXT_PORT_CL2CM_DW6(i32) #1

declare dso_local i32 @BXT_PORT_REF_DW3(i32) #1

declare dso_local i32 @BXT_PORT_REF_DW6(i32) #1

declare dso_local i32 @BXT_PORT_REF_DW8(i32) #1

declare dso_local i32 @BXT_PORT_PLL_EBB_0(i32, i32) #1

declare dso_local i32 @BXT_PORT_PLL_EBB_4(i32, i32) #1

declare dso_local i32 @BXT_PORT_PCS_DW10_LN01(i32, i32) #1

declare dso_local i32 @BXT_PORT_PCS_DW10_GRP(i32, i32) #1

declare dso_local i32 @BXT_PORT_PCS_DW12_LN01(i32, i32) #1

declare dso_local i32 @BXT_PORT_PCS_DW12_LN23(i32, i32) #1

declare dso_local i32 @BXT_PORT_PCS_DW12_GRP(i32, i32) #1

declare dso_local i32 @BXT_PORT_TX_DW2_LN0(i32, i32) #1

declare dso_local i32 @BXT_PORT_TX_DW2_GRP(i32, i32) #1

declare dso_local i32 @BXT_PORT_TX_DW3_LN0(i32, i32) #1

declare dso_local i32 @BXT_PORT_TX_DW3_GRP(i32, i32) #1

declare dso_local i32 @BXT_PORT_TX_DW4_LN0(i32, i32) #1

declare dso_local i32 @BXT_PORT_TX_DW4_GRP(i32, i32) #1

declare dso_local i32 @BXT_PORT_TX_DW14_LN(i32, i32, i32) #1

declare dso_local i32 @BXT_PORT_PLL(i32, i32, i32) #1

declare dso_local i32 @HSW_TVIDEO_DIP_GCP(i32) #1

declare dso_local i32 @MMIO_DFH(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

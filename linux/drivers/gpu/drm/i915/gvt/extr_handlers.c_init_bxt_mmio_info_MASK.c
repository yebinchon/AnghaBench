#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_gvt {struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BXT_DE_PLL_CTL ; 
 int /*<<< orphan*/  BXT_DE_PLL_ENABLE ; 
 int /*<<< orphan*/  BXT_DSI_PLL_CTL ; 
 int /*<<< orphan*/  BXT_DSI_PLL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BXT_P_CR_GT_DISP_PWRON ; 
 int /*<<< orphan*/  BXT_RP_STATE_CAP ; 
 int /*<<< orphan*/  DONE_REG ; 
 int /*<<< orphan*/  DPIO_CH0 ; 
 int /*<<< orphan*/  DPIO_CH1 ; 
 int /*<<< orphan*/  DPIO_PHY0 ; 
 int /*<<< orphan*/  DPIO_PHY1 ; 
 int /*<<< orphan*/  D_BXT ; 
 int /*<<< orphan*/  EIR ; 
 int /*<<< orphan*/  ERROR_GEN6 ; 
 int /*<<< orphan*/  F_CMD_ACCESS ; 
 int /*<<< orphan*/  GEN6_GFXPAUSE ; 
 int /*<<< orphan*/  GEN7_ROW_INSTDONE ; 
 int /*<<< orphan*/  GEN7_SAMPLER_INSTDONE ; 
 int /*<<< orphan*/  GEN8_FAULT_TLB_DATA0 ; 
 int /*<<< orphan*/  GEN8_FAULT_TLB_DATA1 ; 
 int /*<<< orphan*/  GEN8_L3SQCREG1 ; 
 int /*<<< orphan*/  GEN8_PUSHBUS_CONTROL ; 
 int /*<<< orphan*/  GEN8_PUSHBUS_ENABLE ; 
 int /*<<< orphan*/  GEN8_PUSHBUS_SHIFT ; 
 int /*<<< orphan*/  GEN9_CLKGATE_DIS_0 ; 
 int /*<<< orphan*/  GEN9_CLKGATE_DIS_4 ; 
 int /*<<< orphan*/  GEN9_CTX_PREEMPT_REG ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGTBL_ER ; 
 int /*<<< orphan*/  PORT_A ; 
 int /*<<< orphan*/  PORT_B ; 
 int /*<<< orphan*/  PORT_C ; 
 int /*<<< orphan*/  RC6_CTX_BASE ; 
 int /*<<< orphan*/  RING_BBADDR_UDW ; 
 int /*<<< orphan*/  RING_BBSTATE ; 
 int /*<<< orphan*/  RING_DMA_FADD ; 
 int /*<<< orphan*/  RING_DMA_FADD_UDW ; 
 int /*<<< orphan*/  RING_INSTPS ; 
 int /*<<< orphan*/  RING_IPEHR ; 
 int /*<<< orphan*/  RING_IPEIR ; 
 int /*<<< orphan*/  RING_PSMI_CTL ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANSCODER_A ; 
 int /*<<< orphan*/  TRANSCODER_B ; 
 int /*<<< orphan*/  TRANSCODER_C ; 
 int /*<<< orphan*/  FUNC34 (int) ; 
 int /*<<< orphan*/ * bxt_de_pll_enable_write ; 
 int /*<<< orphan*/ * bxt_gt_disp_pwron_write ; 
 int /*<<< orphan*/ * bxt_pcs_dw12_grp_write ; 
 int /*<<< orphan*/ * bxt_phy_ctl_family_write ; 
 int /*<<< orphan*/ * bxt_port_pll_enable_write ; 
 int /*<<< orphan*/ * bxt_port_tx_dw3_read ; 

__attribute__((used)) static int FUNC35(struct intel_gvt *gvt)
{
	struct drm_i915_private *dev_priv = gvt->dev_priv;
	int ret;

	FUNC31(FUNC34(0x80000), 0x3000, 0, 0, 0, D_BXT, NULL, NULL);

	FUNC28(GEN7_SAMPLER_INSTDONE, D_BXT);
	FUNC28(GEN7_ROW_INSTDONE, D_BXT);
	FUNC28(GEN8_FAULT_TLB_DATA0, D_BXT);
	FUNC28(GEN8_FAULT_TLB_DATA1, D_BXT);
	FUNC28(ERROR_GEN6, D_BXT);
	FUNC28(DONE_REG, D_BXT);
	FUNC28(EIR, D_BXT);
	FUNC28(PGTBL_ER, D_BXT);
	FUNC28(FUNC34(0x4194), D_BXT);
	FUNC28(FUNC34(0x4294), D_BXT);
	FUNC28(FUNC34(0x4494), D_BXT);

	FUNC32(RING_PSMI_CTL, D_BXT);
	FUNC32(RING_DMA_FADD, D_BXT);
	FUNC32(RING_DMA_FADD_UDW, D_BXT);
	FUNC32(RING_IPEHR, D_BXT);
	FUNC32(RING_INSTPS, D_BXT);
	FUNC32(RING_BBADDR_UDW, D_BXT);
	FUNC32(RING_BBSTATE, D_BXT);
	FUNC32(RING_IPEIR, D_BXT);

	FUNC31(FUNC33(0), 16 * 4, 0, 0, 0, D_BXT, NULL, NULL);

	FUNC30(BXT_P_CR_GT_DISP_PWRON, D_BXT, NULL, bxt_gt_disp_pwron_write);
	FUNC28(BXT_RP_STATE_CAP, D_BXT);
	FUNC30(FUNC1(DPIO_PHY0), D_BXT,
		NULL, bxt_phy_ctl_family_write);
	FUNC30(FUNC1(DPIO_PHY1), D_BXT,
		NULL, bxt_phy_ctl_family_write);
	FUNC28(FUNC0(PORT_A), D_BXT);
	FUNC28(FUNC0(PORT_B), D_BXT);
	FUNC28(FUNC0(PORT_C), D_BXT);
	FUNC30(FUNC16(PORT_A), D_BXT,
		NULL, bxt_port_pll_enable_write);
	FUNC30(FUNC16(PORT_B), D_BXT,
		NULL, bxt_port_pll_enable_write);
	FUNC30(FUNC16(PORT_C), D_BXT, NULL,
		bxt_port_pll_enable_write);

	FUNC28(FUNC2(DPIO_PHY0), D_BXT);
	FUNC28(FUNC6(DPIO_PHY0), D_BXT);
	FUNC28(FUNC3(DPIO_PHY0), D_BXT);
	FUNC28(FUNC4(DPIO_PHY0), D_BXT);
	FUNC28(FUNC5(DPIO_PHY0), D_BXT);
	FUNC28(FUNC7(DPIO_PHY0), D_BXT);
	FUNC28(FUNC17(DPIO_PHY0), D_BXT);
	FUNC28(FUNC18(DPIO_PHY0), D_BXT);
	FUNC28(FUNC19(DPIO_PHY0), D_BXT);

	FUNC28(FUNC2(DPIO_PHY1), D_BXT);
	FUNC28(FUNC6(DPIO_PHY1), D_BXT);
	FUNC28(FUNC3(DPIO_PHY1), D_BXT);
	FUNC28(FUNC4(DPIO_PHY1), D_BXT);
	FUNC28(FUNC5(DPIO_PHY1), D_BXT);
	FUNC28(FUNC7(DPIO_PHY1), D_BXT);
	FUNC28(FUNC17(DPIO_PHY1), D_BXT);
	FUNC28(FUNC18(DPIO_PHY1), D_BXT);
	FUNC28(FUNC19(DPIO_PHY1), D_BXT);

	FUNC28(FUNC14(DPIO_PHY0, DPIO_CH0), D_BXT);
	FUNC28(FUNC15(DPIO_PHY0, DPIO_CH0), D_BXT);
	FUNC28(FUNC9(DPIO_PHY0, DPIO_CH0), D_BXT);
	FUNC28(FUNC8(DPIO_PHY0, DPIO_CH0), D_BXT);
	FUNC28(FUNC11(DPIO_PHY0, DPIO_CH0), D_BXT);
	FUNC28(FUNC12(DPIO_PHY0, DPIO_CH0), D_BXT);
	FUNC30(FUNC10(DPIO_PHY0, DPIO_CH0), D_BXT,
		NULL, bxt_pcs_dw12_grp_write);
	FUNC28(FUNC22(DPIO_PHY0, DPIO_CH0), D_BXT);
	FUNC28(FUNC21(DPIO_PHY0, DPIO_CH0), D_BXT);
	FUNC30(FUNC24(DPIO_PHY0, DPIO_CH0), D_BXT,
		bxt_port_tx_dw3_read, NULL);
	FUNC28(FUNC23(DPIO_PHY0, DPIO_CH0), D_BXT);
	FUNC28(FUNC26(DPIO_PHY0, DPIO_CH0), D_BXT);
	FUNC28(FUNC25(DPIO_PHY0, DPIO_CH0), D_BXT);
	FUNC28(FUNC20(DPIO_PHY0, DPIO_CH0, 0), D_BXT);
	FUNC28(FUNC20(DPIO_PHY0, DPIO_CH0, 1), D_BXT);
	FUNC28(FUNC20(DPIO_PHY0, DPIO_CH0, 2), D_BXT);
	FUNC28(FUNC20(DPIO_PHY0, DPIO_CH0, 3), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH0, 0), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH0, 1), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH0, 2), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH0, 3), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH0, 6), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH0, 8), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH0, 9), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH0, 10), D_BXT);

	FUNC28(FUNC14(DPIO_PHY0, DPIO_CH1), D_BXT);
	FUNC28(FUNC15(DPIO_PHY0, DPIO_CH1), D_BXT);
	FUNC28(FUNC9(DPIO_PHY0, DPIO_CH1), D_BXT);
	FUNC28(FUNC8(DPIO_PHY0, DPIO_CH1), D_BXT);
	FUNC28(FUNC11(DPIO_PHY0, DPIO_CH1), D_BXT);
	FUNC28(FUNC12(DPIO_PHY0, DPIO_CH1), D_BXT);
	FUNC30(FUNC10(DPIO_PHY0, DPIO_CH1), D_BXT,
		NULL, bxt_pcs_dw12_grp_write);
	FUNC28(FUNC22(DPIO_PHY0, DPIO_CH1), D_BXT);
	FUNC28(FUNC21(DPIO_PHY0, DPIO_CH1), D_BXT);
	FUNC30(FUNC24(DPIO_PHY0, DPIO_CH1), D_BXT,
		bxt_port_tx_dw3_read, NULL);
	FUNC28(FUNC23(DPIO_PHY0, DPIO_CH1), D_BXT);
	FUNC28(FUNC26(DPIO_PHY0, DPIO_CH1), D_BXT);
	FUNC28(FUNC25(DPIO_PHY0, DPIO_CH1), D_BXT);
	FUNC28(FUNC20(DPIO_PHY0, DPIO_CH1, 0), D_BXT);
	FUNC28(FUNC20(DPIO_PHY0, DPIO_CH1, 1), D_BXT);
	FUNC28(FUNC20(DPIO_PHY0, DPIO_CH1, 2), D_BXT);
	FUNC28(FUNC20(DPIO_PHY0, DPIO_CH1, 3), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH1, 0), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH1, 1), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH1, 2), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH1, 3), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH1, 6), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH1, 8), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH1, 9), D_BXT);
	FUNC28(FUNC13(DPIO_PHY0, DPIO_CH1, 10), D_BXT);

	FUNC28(FUNC14(DPIO_PHY1, DPIO_CH0), D_BXT);
	FUNC28(FUNC15(DPIO_PHY1, DPIO_CH0), D_BXT);
	FUNC28(FUNC9(DPIO_PHY1, DPIO_CH0), D_BXT);
	FUNC28(FUNC8(DPIO_PHY1, DPIO_CH0), D_BXT);
	FUNC28(FUNC11(DPIO_PHY1, DPIO_CH0), D_BXT);
	FUNC28(FUNC12(DPIO_PHY1, DPIO_CH0), D_BXT);
	FUNC30(FUNC10(DPIO_PHY1, DPIO_CH0), D_BXT,
		NULL, bxt_pcs_dw12_grp_write);
	FUNC28(FUNC22(DPIO_PHY1, DPIO_CH0), D_BXT);
	FUNC28(FUNC21(DPIO_PHY1, DPIO_CH0), D_BXT);
	FUNC30(FUNC24(DPIO_PHY1, DPIO_CH0), D_BXT,
		bxt_port_tx_dw3_read, NULL);
	FUNC28(FUNC23(DPIO_PHY1, DPIO_CH0), D_BXT);
	FUNC28(FUNC26(DPIO_PHY1, DPIO_CH0), D_BXT);
	FUNC28(FUNC25(DPIO_PHY1, DPIO_CH0), D_BXT);
	FUNC28(FUNC20(DPIO_PHY1, DPIO_CH0, 0), D_BXT);
	FUNC28(FUNC20(DPIO_PHY1, DPIO_CH0, 1), D_BXT);
	FUNC28(FUNC20(DPIO_PHY1, DPIO_CH0, 2), D_BXT);
	FUNC28(FUNC20(DPIO_PHY1, DPIO_CH0, 3), D_BXT);
	FUNC28(FUNC13(DPIO_PHY1, DPIO_CH0, 0), D_BXT);
	FUNC28(FUNC13(DPIO_PHY1, DPIO_CH0, 1), D_BXT);
	FUNC28(FUNC13(DPIO_PHY1, DPIO_CH0, 2), D_BXT);
	FUNC28(FUNC13(DPIO_PHY1, DPIO_CH0, 3), D_BXT);
	FUNC28(FUNC13(DPIO_PHY1, DPIO_CH0, 6), D_BXT);
	FUNC28(FUNC13(DPIO_PHY1, DPIO_CH0, 8), D_BXT);
	FUNC28(FUNC13(DPIO_PHY1, DPIO_CH0, 9), D_BXT);
	FUNC28(FUNC13(DPIO_PHY1, DPIO_CH0, 10), D_BXT);

	FUNC28(BXT_DE_PLL_CTL, D_BXT);
	FUNC30(BXT_DE_PLL_ENABLE, D_BXT, NULL, bxt_de_pll_enable_write);
	FUNC28(BXT_DSI_PLL_CTL, D_BXT);
	FUNC28(BXT_DSI_PLL_ENABLE, D_BXT);

	FUNC28(GEN9_CLKGATE_DIS_0, D_BXT);
	FUNC28(GEN9_CLKGATE_DIS_4, D_BXT);

	FUNC28(FUNC27(TRANSCODER_A), D_BXT);
	FUNC28(FUNC27(TRANSCODER_B), D_BXT);
	FUNC28(FUNC27(TRANSCODER_C), D_BXT);

	FUNC28(RC6_CTX_BASE, D_BXT);

	FUNC28(GEN8_PUSHBUS_CONTROL, D_BXT);
	FUNC28(GEN8_PUSHBUS_ENABLE, D_BXT);
	FUNC28(GEN8_PUSHBUS_SHIFT, D_BXT);
	FUNC28(GEN6_GFXPAUSE, D_BXT);
	FUNC29(GEN8_L3SQCREG1, D_BXT, F_CMD_ACCESS, NULL, NULL);

	FUNC29(GEN9_CTX_PREEMPT_REG, D_BXT, F_CMD_ACCESS, NULL, NULL);

	return 0;
}
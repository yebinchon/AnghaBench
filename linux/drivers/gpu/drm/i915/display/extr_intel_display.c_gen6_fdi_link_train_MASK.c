#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_crtc_state {int /*<<< orphan*/  fdi_lanes; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FDI_DP_PORT_WIDTH_MASK ; 
 int FDI_LINK_TRAIN_400MV_0DB_SNB_B ; 
 int FDI_LINK_TRAIN_NONE ; 
 int FDI_LINK_TRAIN_PATTERN_1 ; 
 int FDI_LINK_TRAIN_PATTERN_1_CPT ; 
 int FDI_LINK_TRAIN_PATTERN_2 ; 
 int FDI_LINK_TRAIN_PATTERN_2_CPT ; 
 int FDI_LINK_TRAIN_PATTERN_MASK_CPT ; 
 int FDI_LINK_TRAIN_VOL_EMP_MASK ; 
 int FDI_RX_BIT_LOCK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FDI_RX_ENABLE ; 
 int FDI_RX_FDI_DELAY_90 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FDI_RX_SYMBOL_LOCK ; 
 int FDI_RX_TP1_TO_TP2_48 ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FDI_TX_ENABLE ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int* snb_b_fdi_train_param ; 
 struct drm_i915_private* FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct intel_crtc *crtc,
				const struct intel_crtc_state *crtc_state)
{
	struct drm_device *dev = crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC13(dev);
	int pipe = crtc->pipe;
	i915_reg_t reg;
	u32 temp, i, retry;

	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
	   for train result */
	reg = FUNC5(pipe);
	temp = FUNC9(reg);
	temp &= ~FDI_RX_SYMBOL_LOCK;
	temp &= ~FDI_RX_BIT_LOCK;
	FUNC10(reg, temp);

	FUNC12(reg);
	FUNC14(150);

	/* enable CPU FDI TX and PCH FDI RX */
	reg = FUNC7(pipe);
	temp = FUNC9(reg);
	temp &= ~FDI_DP_PORT_WIDTH_MASK;
	temp |= FUNC2(crtc_state->fdi_lanes);
	temp &= ~FDI_LINK_TRAIN_NONE;
	temp |= FDI_LINK_TRAIN_PATTERN_1;
	temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
	/* SNB-B */
	temp |= FDI_LINK_TRAIN_400MV_0DB_SNB_B;
	FUNC10(reg, temp | FDI_TX_ENABLE);

	FUNC10(FUNC6(pipe),
		   FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);

	reg = FUNC3(pipe);
	temp = FUNC9(reg);
	if (FUNC8(dev_priv)) {
		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
		temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
	} else {
		temp &= ~FDI_LINK_TRAIN_NONE;
		temp |= FDI_LINK_TRAIN_PATTERN_1;
	}
	FUNC10(reg, temp | FDI_RX_ENABLE);

	FUNC12(reg);
	FUNC14(150);

	for (i = 0; i < 4; i++) {
		reg = FUNC7(pipe);
		temp = FUNC9(reg);
		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
		temp |= snb_b_fdi_train_param[i];
		FUNC10(reg, temp);

		FUNC12(reg);
		FUNC14(500);

		for (retry = 0; retry < 5; retry++) {
			reg = FUNC4(pipe);
			temp = FUNC9(reg);
			FUNC0("FDI_RX_IIR 0x%x\n", temp);
			if (temp & FDI_RX_BIT_LOCK) {
				FUNC10(reg, temp | FDI_RX_BIT_LOCK);
				FUNC0("FDI train 1 done.\n");
				break;
			}
			FUNC14(50);
		}
		if (retry < 5)
			break;
	}
	if (i == 4)
		FUNC1("FDI train 1 fail!\n");

	/* Train 2 */
	reg = FUNC7(pipe);
	temp = FUNC9(reg);
	temp &= ~FDI_LINK_TRAIN_NONE;
	temp |= FDI_LINK_TRAIN_PATTERN_2;
	if (FUNC11(dev_priv, 6)) {
		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
		/* SNB-B */
		temp |= FDI_LINK_TRAIN_400MV_0DB_SNB_B;
	}
	FUNC10(reg, temp);

	reg = FUNC3(pipe);
	temp = FUNC9(reg);
	if (FUNC8(dev_priv)) {
		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
		temp |= FDI_LINK_TRAIN_PATTERN_2_CPT;
	} else {
		temp &= ~FDI_LINK_TRAIN_NONE;
		temp |= FDI_LINK_TRAIN_PATTERN_2;
	}
	FUNC10(reg, temp);

	FUNC12(reg);
	FUNC14(150);

	for (i = 0; i < 4; i++) {
		reg = FUNC7(pipe);
		temp = FUNC9(reg);
		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
		temp |= snb_b_fdi_train_param[i];
		FUNC10(reg, temp);

		FUNC12(reg);
		FUNC14(500);

		for (retry = 0; retry < 5; retry++) {
			reg = FUNC4(pipe);
			temp = FUNC9(reg);
			FUNC0("FDI_RX_IIR 0x%x\n", temp);
			if (temp & FDI_RX_SYMBOL_LOCK) {
				FUNC10(reg, temp | FDI_RX_SYMBOL_LOCK);
				FUNC0("FDI train 2 done.\n");
				break;
			}
			FUNC14(50);
		}
		if (retry < 5)
			break;
	}
	if (i == 4)
		FUNC1("FDI train 2 fail!\n");

	FUNC0("FDI train done.\n");
}
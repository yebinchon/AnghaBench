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
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FDI_COMPOSITE_SYNC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FDI_DP_PORT_WIDTH_MASK ; 
 int FDI_LINK_TRAIN_AUTO ; 
 int FDI_LINK_TRAIN_NONE_IVB ; 
 int FDI_LINK_TRAIN_PATTERN_1_CPT ; 
 int FDI_LINK_TRAIN_PATTERN_1_IVB ; 
 int FDI_LINK_TRAIN_PATTERN_2_CPT ; 
 int FDI_LINK_TRAIN_PATTERN_2_IVB ; 
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
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int* snb_b_fdi_train_param ; 
 struct drm_i915_private* FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct intel_crtc *crtc,
				      const struct intel_crtc_state *crtc_state)
{
	struct drm_device *dev = crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC11(dev);
	int pipe = crtc->pipe;
	i915_reg_t reg;
	u32 temp, i, j;

	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
	   for train result */
	reg = FUNC5(pipe);
	temp = FUNC8(reg);
	temp &= ~FDI_RX_SYMBOL_LOCK;
	temp &= ~FDI_RX_BIT_LOCK;
	FUNC9(reg, temp);

	FUNC10(reg);
	FUNC12(150);

	FUNC1("FDI_RX_IIR before link train 0x%x\n",
		      FUNC8(FUNC4(pipe)));

	/* Try each vswing and preemphasis setting twice before moving on */
	for (j = 0; j < FUNC0(snb_b_fdi_train_param) * 2; j++) {
		/* disable first in case we need to retry */
		reg = FUNC7(pipe);
		temp = FUNC8(reg);
		temp &= ~(FDI_LINK_TRAIN_AUTO | FDI_LINK_TRAIN_NONE_IVB);
		temp &= ~FDI_TX_ENABLE;
		FUNC9(reg, temp);

		reg = FUNC3(pipe);
		temp = FUNC8(reg);
		temp &= ~FDI_LINK_TRAIN_AUTO;
		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
		temp &= ~FDI_RX_ENABLE;
		FUNC9(reg, temp);

		/* enable CPU FDI TX and PCH FDI RX */
		reg = FUNC7(pipe);
		temp = FUNC8(reg);
		temp &= ~FDI_DP_PORT_WIDTH_MASK;
		temp |= FUNC2(crtc_state->fdi_lanes);
		temp |= FDI_LINK_TRAIN_PATTERN_1_IVB;
		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
		temp |= snb_b_fdi_train_param[j/2];
		temp |= FDI_COMPOSITE_SYNC;
		FUNC9(reg, temp | FDI_TX_ENABLE);

		FUNC9(FUNC6(pipe),
			   FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);

		reg = FUNC3(pipe);
		temp = FUNC8(reg);
		temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
		temp |= FDI_COMPOSITE_SYNC;
		FUNC9(reg, temp | FDI_RX_ENABLE);

		FUNC10(reg);
		FUNC12(1); /* should be 0.5us */

		for (i = 0; i < 4; i++) {
			reg = FUNC4(pipe);
			temp = FUNC8(reg);
			FUNC1("FDI_RX_IIR 0x%x\n", temp);

			if (temp & FDI_RX_BIT_LOCK ||
			    (FUNC8(reg) & FDI_RX_BIT_LOCK)) {
				FUNC9(reg, temp | FDI_RX_BIT_LOCK);
				FUNC1("FDI train 1 done, level %i.\n",
					      i);
				break;
			}
			FUNC12(1); /* should be 0.5us */
		}
		if (i == 4) {
			FUNC1("FDI train 1 fail on vswing %d\n", j / 2);
			continue;
		}

		/* Train 2 */
		reg = FUNC7(pipe);
		temp = FUNC8(reg);
		temp &= ~FDI_LINK_TRAIN_NONE_IVB;
		temp |= FDI_LINK_TRAIN_PATTERN_2_IVB;
		FUNC9(reg, temp);

		reg = FUNC3(pipe);
		temp = FUNC8(reg);
		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
		temp |= FDI_LINK_TRAIN_PATTERN_2_CPT;
		FUNC9(reg, temp);

		FUNC10(reg);
		FUNC12(2); /* should be 1.5us */

		for (i = 0; i < 4; i++) {
			reg = FUNC4(pipe);
			temp = FUNC8(reg);
			FUNC1("FDI_RX_IIR 0x%x\n", temp);

			if (temp & FDI_RX_SYMBOL_LOCK ||
			    (FUNC8(reg) & FDI_RX_SYMBOL_LOCK)) {
				FUNC9(reg, temp | FDI_RX_SYMBOL_LOCK);
				FUNC1("FDI train 2 done, level %i.\n",
					      i);
				goto train_done;
			}
			FUNC12(2); /* should be 1.5us */
		}
		if (i == 4)
			FUNC1("FDI train 2 fail on vswing %d\n", j / 2);
	}

train_done:
	FUNC1("FDI train done.\n");
}
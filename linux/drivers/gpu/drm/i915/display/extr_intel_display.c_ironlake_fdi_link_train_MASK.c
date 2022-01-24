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
 int FDI_LINK_TRAIN_NONE ; 
 int FDI_LINK_TRAIN_PATTERN_1 ; 
 int FDI_LINK_TRAIN_PATTERN_2 ; 
 int FDI_RX_BIT_LOCK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FDI_RX_ENABLE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FDI_RX_PHASE_SYNC_POINTER_EN ; 
 int FDI_RX_PHASE_SYNC_POINTER_OVR ; 
 int FDI_RX_SYMBOL_LOCK ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FDI_TX_ENABLE ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct intel_crtc *crtc,
				    const struct intel_crtc_state *crtc_state)
{
	struct drm_device *dev = crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC12(dev);
	int pipe = crtc->pipe;
	i915_reg_t reg;
	u32 temp, tries;

	/* FDI needs bits from pipe first */
	FUNC11(dev_priv, pipe);

	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
	   for train result */
	reg = FUNC6(pipe);
	temp = FUNC8(reg);
	temp &= ~FDI_RX_SYMBOL_LOCK;
	temp &= ~FDI_RX_BIT_LOCK;
	FUNC9(reg, temp);
	FUNC8(reg);
	FUNC13(150);

	/* enable CPU FDI TX and PCH FDI RX */
	reg = FUNC7(pipe);
	temp = FUNC8(reg);
	temp &= ~FDI_DP_PORT_WIDTH_MASK;
	temp |= FUNC2(crtc_state->fdi_lanes);
	temp &= ~FDI_LINK_TRAIN_NONE;
	temp |= FDI_LINK_TRAIN_PATTERN_1;
	FUNC9(reg, temp | FDI_TX_ENABLE);

	reg = FUNC4(pipe);
	temp = FUNC8(reg);
	temp &= ~FDI_LINK_TRAIN_NONE;
	temp |= FDI_LINK_TRAIN_PATTERN_1;
	FUNC9(reg, temp | FDI_RX_ENABLE);

	FUNC10(reg);
	FUNC13(150);

	/* Ironlake workaround, enable clock pointer after FDI enable*/
	FUNC9(FUNC3(pipe), FDI_RX_PHASE_SYNC_POINTER_OVR);
	FUNC9(FUNC3(pipe), FDI_RX_PHASE_SYNC_POINTER_OVR |
		   FDI_RX_PHASE_SYNC_POINTER_EN);

	reg = FUNC5(pipe);
	for (tries = 0; tries < 5; tries++) {
		temp = FUNC8(reg);
		FUNC0("FDI_RX_IIR 0x%x\n", temp);

		if ((temp & FDI_RX_BIT_LOCK)) {
			FUNC0("FDI train 1 done.\n");
			FUNC9(reg, temp | FDI_RX_BIT_LOCK);
			break;
		}
	}
	if (tries == 5)
		FUNC1("FDI train 1 fail!\n");

	/* Train 2 */
	reg = FUNC7(pipe);
	temp = FUNC8(reg);
	temp &= ~FDI_LINK_TRAIN_NONE;
	temp |= FDI_LINK_TRAIN_PATTERN_2;
	FUNC9(reg, temp);

	reg = FUNC4(pipe);
	temp = FUNC8(reg);
	temp &= ~FDI_LINK_TRAIN_NONE;
	temp |= FDI_LINK_TRAIN_PATTERN_2;
	FUNC9(reg, temp);

	FUNC10(reg);
	FUNC13(150);

	reg = FUNC5(pipe);
	for (tries = 0; tries < 5; tries++) {
		temp = FUNC8(reg);
		FUNC0("FDI_RX_IIR 0x%x\n", temp);

		if (temp & FDI_RX_SYMBOL_LOCK) {
			FUNC9(reg, temp | FDI_RX_SYMBOL_LOCK);
			FUNC0("FDI train 2 done.\n");
			break;
		}
	}
	if (tries == 5)
		FUNC1("FDI train 2 fail!\n");

	FUNC0("FDI train done\n");

}
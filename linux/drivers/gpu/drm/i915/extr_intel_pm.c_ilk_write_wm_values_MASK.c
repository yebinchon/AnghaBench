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
typedef  int /*<<< orphan*/  u32 ;
struct ilk_wm_values {scalar_t__ partitioning; int /*<<< orphan*/ * wm_lp; int /*<<< orphan*/ * wm_lp_spr; scalar_t__ enable_fbc_wm; int /*<<< orphan*/ * wm_linetime; int /*<<< orphan*/ * wm_pipe; } ;
struct TYPE_2__ {struct ilk_wm_values hw; } ;
struct drm_i915_private {TYPE_1__ wm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_ARB_CTL ; 
 int /*<<< orphan*/  DISP_ARB_CTL2 ; 
 int /*<<< orphan*/  DISP_DATA_PARTITION_5_6 ; 
 int /*<<< orphan*/  DISP_FBC_WM_DIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ INTEL_DDB_PART_1_2 ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PIPE_A ; 
 int /*<<< orphan*/  PIPE_B ; 
 int /*<<< orphan*/  PIPE_C ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM0_PIPEA_ILK ; 
 int /*<<< orphan*/  WM0_PIPEB_ILK ; 
 int /*<<< orphan*/  WM0_PIPEC_IVB ; 
 int /*<<< orphan*/  WM1S_LP_ILK ; 
 int /*<<< orphan*/  WM1_LP_ILK ; 
 int /*<<< orphan*/  WM2S_LP_IVB ; 
 int /*<<< orphan*/  WM2_LP_ILK ; 
 int /*<<< orphan*/  WM3S_LP_IVB ; 
 int /*<<< orphan*/  WM3_LP_ILK ; 
 unsigned int WM_DIRTY_DDB ; 
 unsigned int WM_DIRTY_FBC ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_MISC ; 
 int /*<<< orphan*/  WM_MISC_DATA_PARTITION_5_6 ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,unsigned int) ; 
 unsigned int FUNC10 (struct drm_i915_private*,struct ilk_wm_values*,struct ilk_wm_values*) ; 

__attribute__((used)) static void FUNC11(struct drm_i915_private *dev_priv,
				struct ilk_wm_values *results)
{
	struct ilk_wm_values *previous = &dev_priv->wm.hw;
	unsigned int dirty;
	u32 val;

	dirty = FUNC10(dev_priv, previous, results);
	if (!dirty)
		return;

	FUNC9(dev_priv, dirty);

	if (dirty & FUNC8(PIPE_A))
		FUNC1(WM0_PIPEA_ILK, results->wm_pipe[0]);
	if (dirty & FUNC8(PIPE_B))
		FUNC1(WM0_PIPEB_ILK, results->wm_pipe[1]);
	if (dirty & FUNC8(PIPE_C))
		FUNC1(WM0_PIPEC_IVB, results->wm_pipe[2]);

	if (dirty & FUNC6(PIPE_A))
		FUNC1(FUNC5(PIPE_A), results->wm_linetime[0]);
	if (dirty & FUNC6(PIPE_B))
		FUNC1(FUNC5(PIPE_B), results->wm_linetime[1]);
	if (dirty & FUNC6(PIPE_C))
		FUNC1(FUNC5(PIPE_C), results->wm_linetime[2]);

	if (dirty & WM_DIRTY_DDB) {
		if (FUNC4(dev_priv) || FUNC3(dev_priv)) {
			val = FUNC0(WM_MISC);
			if (results->partitioning == INTEL_DDB_PART_1_2)
				val &= ~WM_MISC_DATA_PARTITION_5_6;
			else
				val |= WM_MISC_DATA_PARTITION_5_6;
			FUNC1(WM_MISC, val);
		} else {
			val = FUNC0(DISP_ARB_CTL2);
			if (results->partitioning == INTEL_DDB_PART_1_2)
				val &= ~DISP_DATA_PARTITION_5_6;
			else
				val |= DISP_DATA_PARTITION_5_6;
			FUNC1(DISP_ARB_CTL2, val);
		}
	}

	if (dirty & WM_DIRTY_FBC) {
		val = FUNC0(DISP_ARB_CTL);
		if (results->enable_fbc_wm)
			val &= ~DISP_FBC_WM_DIS;
		else
			val |= DISP_FBC_WM_DIS;
		FUNC1(DISP_ARB_CTL, val);
	}

	if (dirty & FUNC7(1) &&
	    previous->wm_lp_spr[0] != results->wm_lp_spr[0])
		FUNC1(WM1S_LP_ILK, results->wm_lp_spr[0]);

	if (FUNC2(dev_priv) >= 7) {
		if (dirty & FUNC7(2) && previous->wm_lp_spr[1] != results->wm_lp_spr[1])
			FUNC1(WM2S_LP_IVB, results->wm_lp_spr[1]);
		if (dirty & FUNC7(3) && previous->wm_lp_spr[2] != results->wm_lp_spr[2])
			FUNC1(WM3S_LP_IVB, results->wm_lp_spr[2]);
	}

	if (dirty & FUNC7(1) && previous->wm_lp[0] != results->wm_lp[0])
		FUNC1(WM1_LP_ILK, results->wm_lp[0]);
	if (dirty & FUNC7(2) && previous->wm_lp[1] != results->wm_lp[1])
		FUNC1(WM2_LP_ILK, results->wm_lp[1]);
	if (dirty & FUNC7(3) && previous->wm_lp[2] != results->wm_lp[2])
		FUNC1(WM3_LP_ILK, results->wm_lp[2]);

	dev_priv->wm.hw = *results;
}
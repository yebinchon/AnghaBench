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
struct TYPE_2__ {void* init_clock_gating; } ;
struct drm_i915_private {TYPE_1__ display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*) ; 
 scalar_t__ FUNC12 (struct drm_i915_private*) ; 
 scalar_t__ FUNC13 (struct drm_i915_private*) ; 
 scalar_t__ FUNC14 (struct drm_i915_private*) ; 
 scalar_t__ FUNC15 (struct drm_i915_private*) ; 
 scalar_t__ FUNC16 (struct drm_i915_private*) ; 
 scalar_t__ FUNC17 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 void* bdw_init_clock_gating ; 
 void* bxt_init_clock_gating ; 
 void* cfl_init_clock_gating ; 
 void* chv_init_clock_gating ; 
 void* cnl_init_clock_gating ; 
 void* g4x_init_clock_gating ; 
 void* gen3_init_clock_gating ; 
 void* gen6_init_clock_gating ; 
 void* glk_init_clock_gating ; 
 void* hsw_init_clock_gating ; 
 void* i830_init_clock_gating ; 
 void* i85x_init_clock_gating ; 
 void* i965g_init_clock_gating ; 
 void* i965gm_init_clock_gating ; 
 void* icl_init_clock_gating ; 
 void* ilk_init_clock_gating ; 
 void* ivb_init_clock_gating ; 
 void* kbl_init_clock_gating ; 
 void* nop_init_clock_gating ; 
 void* skl_init_clock_gating ; 
 void* vlv_init_clock_gating ; 

void FUNC19(struct drm_i915_private *dev_priv)
{
	if (FUNC8(dev_priv, 12))
		dev_priv->display.init_clock_gating = nop_init_clock_gating;
	else if (FUNC8(dev_priv, 11))
		dev_priv->display.init_clock_gating = icl_init_clock_gating;
	else if (FUNC3(dev_priv))
		dev_priv->display.init_clock_gating = cnl_init_clock_gating;
	else if (FUNC5(dev_priv))
		dev_priv->display.init_clock_gating = cfl_init_clock_gating;
	else if (FUNC16(dev_priv))
		dev_priv->display.init_clock_gating = skl_init_clock_gating;
	else if (FUNC15(dev_priv))
		dev_priv->display.init_clock_gating = kbl_init_clock_gating;
	else if (FUNC2(dev_priv))
		dev_priv->display.init_clock_gating = bxt_init_clock_gating;
	else if (FUNC7(dev_priv))
		dev_priv->display.init_clock_gating = glk_init_clock_gating;
	else if (FUNC1(dev_priv))
		dev_priv->display.init_clock_gating = bdw_init_clock_gating;
	else if (FUNC4(dev_priv))
		dev_priv->display.init_clock_gating = chv_init_clock_gating;
	else if (FUNC9(dev_priv))
		dev_priv->display.init_clock_gating = hsw_init_clock_gating;
	else if (FUNC14(dev_priv))
		dev_priv->display.init_clock_gating = ivb_init_clock_gating;
	else if (FUNC17(dev_priv))
		dev_priv->display.init_clock_gating = vlv_init_clock_gating;
	else if (FUNC8(dev_priv, 6))
		dev_priv->display.init_clock_gating = gen6_init_clock_gating;
	else if (FUNC8(dev_priv, 5))
		dev_priv->display.init_clock_gating = ilk_init_clock_gating;
	else if (FUNC6(dev_priv))
		dev_priv->display.init_clock_gating = g4x_init_clock_gating;
	else if (FUNC13(dev_priv))
		dev_priv->display.init_clock_gating = i965gm_init_clock_gating;
	else if (FUNC12(dev_priv))
		dev_priv->display.init_clock_gating = i965g_init_clock_gating;
	else if (FUNC8(dev_priv, 3))
		dev_priv->display.init_clock_gating = gen3_init_clock_gating;
	else if (FUNC10(dev_priv) || FUNC11(dev_priv))
		dev_priv->display.init_clock_gating = i85x_init_clock_gating;
	else if (FUNC8(dev_priv, 2))
		dev_priv->display.init_clock_gating = i830_init_clock_gating;
	else {
		FUNC18(FUNC0(dev_priv));
		dev_priv->display.init_clock_gating = nop_init_clock_gating;
	}
}
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
struct TYPE_2__ {void* get_cdclk; void* modeset_calc_cdclk; int /*<<< orphan*/  set_cdclk; } ;
struct drm_i915_private {TYPE_1__ display; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 scalar_t__ FUNC12 (struct drm_i915_private*) ; 
 scalar_t__ FUNC13 (struct drm_i915_private*) ; 
 scalar_t__ FUNC14 (struct drm_i915_private*) ; 
 scalar_t__ FUNC15 (struct drm_i915_private*) ; 
 scalar_t__ FUNC16 (struct drm_i915_private*) ; 
 scalar_t__ FUNC17 (struct drm_i915_private*) ; 
 scalar_t__ FUNC18 (struct drm_i915_private*) ; 
 scalar_t__ FUNC19 (struct drm_i915_private*) ; 
 scalar_t__ FUNC20 (struct drm_i915_private*) ; 
 scalar_t__ FUNC21 (struct drm_i915_private*) ; 
 scalar_t__ FUNC22 (struct drm_i915_private*) ; 
 scalar_t__ FUNC23 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC24 (int,char*) ; 
 void* bdw_get_cdclk ; 
 void* bdw_modeset_calc_cdclk ; 
 int /*<<< orphan*/  bdw_set_cdclk ; 
 void* bxt_get_cdclk ; 
 void* bxt_modeset_calc_cdclk ; 
 int /*<<< orphan*/  bxt_set_cdclk ; 
 int /*<<< orphan*/  chv_set_cdclk ; 
 void* cnl_get_cdclk ; 
 void* cnl_modeset_calc_cdclk ; 
 int /*<<< orphan*/  cnl_set_cdclk ; 
 void* fixed_133mhz_get_cdclk ; 
 void* fixed_200mhz_get_cdclk ; 
 void* fixed_266mhz_get_cdclk ; 
 void* fixed_333mhz_get_cdclk ; 
 void* fixed_400mhz_get_cdclk ; 
 void* fixed_450mhz_get_cdclk ; 
 void* g33_get_cdclk ; 
 void* gm45_get_cdclk ; 
 void* hsw_get_cdclk ; 
 void* i85x_get_cdclk ; 
 void* i915gm_get_cdclk ; 
 void* i945gm_get_cdclk ; 
 void* i965gm_get_cdclk ; 
 void* icl_get_cdclk ; 
 void* icl_modeset_calc_cdclk ; 
 int /*<<< orphan*/  icl_set_cdclk ; 
 void* pnv_get_cdclk ; 
 void* skl_get_cdclk ; 
 void* skl_modeset_calc_cdclk ; 
 int /*<<< orphan*/  skl_set_cdclk ; 
 void* vlv_get_cdclk ; 
 void* vlv_modeset_calc_cdclk ; 
 int /*<<< orphan*/  vlv_set_cdclk ; 

void FUNC25(struct drm_i915_private *dev_priv)
{
	if (FUNC0(dev_priv) >= 11) {
		dev_priv->display.set_cdclk = icl_set_cdclk;
		dev_priv->display.modeset_calc_cdclk = icl_modeset_calc_cdclk;
	} else if (FUNC2(dev_priv)) {
		dev_priv->display.set_cdclk = cnl_set_cdclk;
		dev_priv->display.modeset_calc_cdclk = cnl_modeset_calc_cdclk;
	} else if (FUNC8(dev_priv)) {
		dev_priv->display.set_cdclk = bxt_set_cdclk;
		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
	} else if (FUNC7(dev_priv)) {
		dev_priv->display.set_cdclk = skl_set_cdclk;
		dev_priv->display.modeset_calc_cdclk = skl_modeset_calc_cdclk;
	} else if (FUNC1(dev_priv)) {
		dev_priv->display.set_cdclk = bdw_set_cdclk;
		dev_priv->display.modeset_calc_cdclk = bdw_modeset_calc_cdclk;
	} else if (FUNC3(dev_priv)) {
		dev_priv->display.set_cdclk = chv_set_cdclk;
		dev_priv->display.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
	} else if (FUNC23(dev_priv)) {
		dev_priv->display.set_cdclk = vlv_set_cdclk;
		dev_priv->display.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
	}

	if (FUNC0(dev_priv) >= 11)
		dev_priv->display.get_cdclk = icl_get_cdclk;
	else if (FUNC2(dev_priv))
		dev_priv->display.get_cdclk = cnl_get_cdclk;
	else if (FUNC8(dev_priv))
		dev_priv->display.get_cdclk = bxt_get_cdclk;
	else if (FUNC7(dev_priv))
		dev_priv->display.get_cdclk = skl_get_cdclk;
	else if (FUNC1(dev_priv))
		dev_priv->display.get_cdclk = bdw_get_cdclk;
	else if (FUNC10(dev_priv))
		dev_priv->display.get_cdclk = hsw_get_cdclk;
	else if (FUNC23(dev_priv) || FUNC3(dev_priv))
		dev_priv->display.get_cdclk = vlv_get_cdclk;
	else if (FUNC6(dev_priv, 6) || FUNC21(dev_priv))
		dev_priv->display.get_cdclk = fixed_400mhz_get_cdclk;
	else if (FUNC6(dev_priv, 5))
		dev_priv->display.get_cdclk = fixed_450mhz_get_cdclk;
	else if (FUNC9(dev_priv))
		dev_priv->display.get_cdclk = gm45_get_cdclk;
	else if (FUNC5(dev_priv))
		dev_priv->display.get_cdclk = g33_get_cdclk;
	else if (FUNC20(dev_priv))
		dev_priv->display.get_cdclk = i965gm_get_cdclk;
	else if (FUNC19(dev_priv))
		dev_priv->display.get_cdclk = fixed_400mhz_get_cdclk;
	else if (FUNC22(dev_priv))
		dev_priv->display.get_cdclk = pnv_get_cdclk;
	else if (FUNC4(dev_priv))
		dev_priv->display.get_cdclk = g33_get_cdclk;
	else if (FUNC18(dev_priv))
		dev_priv->display.get_cdclk = i945gm_get_cdclk;
	else if (FUNC17(dev_priv))
		dev_priv->display.get_cdclk = fixed_400mhz_get_cdclk;
	else if (FUNC16(dev_priv))
		dev_priv->display.get_cdclk = i915gm_get_cdclk;
	else if (FUNC15(dev_priv))
		dev_priv->display.get_cdclk = fixed_333mhz_get_cdclk;
	else if (FUNC14(dev_priv))
		dev_priv->display.get_cdclk = fixed_266mhz_get_cdclk;
	else if (FUNC13(dev_priv))
		dev_priv->display.get_cdclk = i85x_get_cdclk;
	else if (FUNC12(dev_priv))
		dev_priv->display.get_cdclk = fixed_200mhz_get_cdclk;
	else { /* 830 */
		FUNC24(!FUNC11(dev_priv),
		     "Unknown platform. Assuming 133 MHz CDCLK\n");
		dev_priv->display.get_cdclk = fixed_133mhz_get_cdclk;
	}
}
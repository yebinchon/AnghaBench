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
typedef  int u32 ;
struct drm_i915_private {int /*<<< orphan*/  uncore; } ;

/* Variables and functions */
 int CHV_BIAS_CPU_50_SOC_50 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  GEN6_RP_CONTROL ; 
 int /*<<< orphan*/  GEN6_RP_DOWN_EI ; 
 int GEN6_RP_DOWN_IDLE_AVG ; 
 int /*<<< orphan*/  GEN6_RP_DOWN_THRESHOLD ; 
 int /*<<< orphan*/  GEN6_RP_DOWN_TIMEOUT ; 
 int GEN6_RP_ENABLE ; 
 int /*<<< orphan*/  GEN6_RP_IDLE_HYSTERSIS ; 
 int GEN6_RP_MEDIA_HW_NORMAL_MODE ; 
 int GEN6_RP_MEDIA_IS_GFX ; 
 int GEN6_RP_UP_BUSY_AVG ; 
 int /*<<< orphan*/  GEN6_RP_UP_EI ; 
 int /*<<< orphan*/  GEN6_RP_UP_THRESHOLD ; 
 int GPLLENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PUNIT_REG_GPU_FREQ_STS ; 
 int VLV_OVERRIDE_EN ; 
 int VLV_SOC_TDP_EN ; 
 int /*<<< orphan*/  VLV_TURBO_SOC_OVERRIDE ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  valleyview_set_rps ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct drm_i915_private *dev_priv)
{
	u32 val;

	FUNC3(&dev_priv->uncore, FORCEWAKE_ALL);

	/* 1: Program defaults and thresholds for RPS*/
	FUNC1(GEN6_RP_DOWN_TIMEOUT, 1000000);
	FUNC1(GEN6_RP_UP_THRESHOLD, 59400);
	FUNC1(GEN6_RP_DOWN_THRESHOLD, 245000);
	FUNC1(GEN6_RP_UP_EI, 66000);
	FUNC1(GEN6_RP_DOWN_EI, 350000);

	FUNC1(GEN6_RP_IDLE_HYSTERSIS, 10);

	/* 2: Enable RPS */
	FUNC1(GEN6_RP_CONTROL,
		   GEN6_RP_MEDIA_HW_NORMAL_MODE |
		   GEN6_RP_MEDIA_IS_GFX |
		   GEN6_RP_ENABLE |
		   GEN6_RP_UP_BUSY_AVG |
		   GEN6_RP_DOWN_IDLE_AVG);

	/* Setting Fixed Bias */
	FUNC6(dev_priv);

	val = VLV_OVERRIDE_EN | VLV_SOC_TDP_EN | CHV_BIAS_CPU_50_SOC_50;
	FUNC9(dev_priv, VLV_TURBO_SOC_OVERRIDE, val);

	val = FUNC8(dev_priv, PUNIT_REG_GPU_FREQ_STS);

	FUNC7(dev_priv);

	/* RPS code assumes GPLL is used */
	FUNC2((val & GPLLENABLE) == 0, "GPLL not enabled\n");

	FUNC0("GPLL enabled? %s\n", FUNC10(val & GPLLENABLE));
	FUNC0("GPU status: 0x%08x\n", val);

	FUNC5(dev_priv, valleyview_set_rps);

	FUNC4(&dev_priv->uncore, FORCEWAKE_ALL);
}
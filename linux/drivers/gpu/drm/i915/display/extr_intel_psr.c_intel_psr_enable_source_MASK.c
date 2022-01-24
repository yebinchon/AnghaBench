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
struct intel_dp {int dummy; } ;
struct intel_crtc_state {int cpu_transcoder; } ;
struct TYPE_2__ {scalar_t__ psr2_enabled; } ;
struct drm_i915_private {TYPE_1__ psr; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int /*<<< orphan*/  EDP_PSR_DEBUG ; 
 int EDP_PSR_DEBUG_MASK_DISP_REG_WRITE ; 
 int EDP_PSR_DEBUG_MASK_HPD ; 
 int EDP_PSR_DEBUG_MASK_LPSP ; 
 int EDP_PSR_DEBUG_MASK_MAX_SLEEP ; 
 int EDP_PSR_DEBUG_MASK_MEMUP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int PSR2_ADD_VERTICAL_LINE_COUNT ; 
 int PSR2_VSC_ENABLE_PROG_HEADER ; 
 struct drm_i915_private* FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*) ; 

__attribute__((used)) static void FUNC10(struct intel_dp *intel_dp,
				    const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC7(intel_dp);
	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
	u32 mask;

	/* Only HSW and BDW have PSR AUX registers that need to be setup. SKL+
	 * use hardcoded values PSR AUX transactions
	 */
	if (FUNC6(dev_priv) || FUNC3(dev_priv))
		FUNC9(intel_dp);

	if (dev_priv->psr.psr2_enabled && (FUNC5(dev_priv, 9) &&
					   !FUNC4(dev_priv))) {
		i915_reg_t reg = FUNC8(dev_priv,
							cpu_transcoder);
		u32 chicken = FUNC0(reg);

		chicken |= PSR2_VSC_ENABLE_PROG_HEADER |
			   PSR2_ADD_VERTICAL_LINE_COUNT;
		FUNC1(reg, chicken);
	}

	/*
	 * Per Spec: Avoid continuous PSR exit by masking MEMUP and HPD also
	 * mask LPSP to avoid dependency on other drivers that might block
	 * runtime_pm besides preventing  other hw tracking issues now we
	 * can rely on frontbuffer tracking.
	 */
	mask = EDP_PSR_DEBUG_MASK_MEMUP |
	       EDP_PSR_DEBUG_MASK_HPD |
	       EDP_PSR_DEBUG_MASK_LPSP |
	       EDP_PSR_DEBUG_MASK_MAX_SLEEP;

	if (FUNC2(dev_priv) < 11)
		mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;

	FUNC1(EDP_PSR_DEBUG, mask);
}
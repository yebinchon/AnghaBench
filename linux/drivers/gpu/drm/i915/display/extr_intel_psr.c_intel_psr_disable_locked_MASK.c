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
struct intel_dp {int /*<<< orphan*/  aux; } ;
struct TYPE_2__ {int enabled; scalar_t__ psr2_enabled; int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_1__ psr; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  DP_PSR_EN_CFG ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  EDP_PSR2_STATUS ; 
 int /*<<< orphan*/  EDP_PSR2_STATUS_STATE_MASK ; 
 int /*<<< orphan*/  EDP_PSR_STATUS ; 
 int /*<<< orphan*/  EDP_PSR_STATUS_STATE_MASK ; 
 struct drm_i915_private* FUNC2 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC2(intel_dp);
	i915_reg_t psr_status;
	u32 psr_status_mask;

	FUNC6(&dev_priv->psr.lock);

	if (!dev_priv->psr.enabled)
		return;

	FUNC0("Disabling PSR%s\n",
		      dev_priv->psr.psr2_enabled ? "2" : "1");

	FUNC5(dev_priv);

	if (dev_priv->psr.psr2_enabled) {
		psr_status = EDP_PSR2_STATUS;
		psr_status_mask = EDP_PSR2_STATUS_STATE_MASK;
	} else {
		psr_status = EDP_PSR_STATUS;
		psr_status_mask = EDP_PSR_STATUS_STATE_MASK;
	}

	/* Wait till PSR is idle */
	if (FUNC4(dev_priv, psr_status,
				    psr_status_mask, 2000))
		FUNC1("Timed out waiting PSR idle state\n");

	/* Disable PSR on Sink */
	FUNC3(&intel_dp->aux, DP_PSR_EN_CFG, 0);

	dev_priv->psr.enabled = false;
}
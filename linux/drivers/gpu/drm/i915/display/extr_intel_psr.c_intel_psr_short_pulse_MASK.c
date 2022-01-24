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
typedef  int u8 ;
struct intel_dp {int /*<<< orphan*/  aux; } ;
struct i915_psr {int sink_not_reliable; int /*<<< orphan*/  lock; struct intel_dp* dp; int /*<<< orphan*/  enabled; } ;
struct drm_i915_private {struct i915_psr psr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  DP_PSR_ERROR_STATUS ; 
 int DP_PSR_LINK_CRC_ERROR ; 
 int DP_PSR_RFB_STORAGE_ERROR ; 
 int DP_PSR_SINK_INTERNAL_ERROR ; 
 int DP_PSR_SINK_STATE_MASK ; 
 int /*<<< orphan*/  DP_PSR_STATUS ; 
 int DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct drm_i915_private* FUNC3 (struct intel_dp*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC3(intel_dp);
	struct i915_psr *psr = &dev_priv->psr;
	u8 val;
	const u8 errors = DP_PSR_RFB_STORAGE_ERROR |
			  DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR |
			  DP_PSR_LINK_CRC_ERROR;

	if (!FUNC0(dev_priv) || !FUNC6(intel_dp))
		return;

	FUNC8(&psr->lock);

	if (!psr->enabled || psr->dp != intel_dp)
		goto exit;

	if (FUNC4(&intel_dp->aux, DP_PSR_STATUS, &val) != 1) {
		FUNC2("PSR_STATUS dpcd read failed\n");
		goto exit;
	}

	if ((val & DP_PSR_SINK_STATE_MASK) == DP_PSR_SINK_INTERNAL_ERROR) {
		FUNC1("PSR sink internal error, disabling PSR\n");
		FUNC7(intel_dp);
		psr->sink_not_reliable = true;
	}

	if (FUNC4(&intel_dp->aux, DP_PSR_ERROR_STATUS, &val) != 1) {
		FUNC2("PSR_ERROR_STATUS dpcd read failed\n");
		goto exit;
	}

	if (val & DP_PSR_RFB_STORAGE_ERROR)
		FUNC1("PSR RFB storage error, disabling PSR\n");
	if (val & DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR)
		FUNC1("PSR VSC SDP uncorrectable error, disabling PSR\n");
	if (val & DP_PSR_LINK_CRC_ERROR)
		FUNC2("PSR Link CRC error, disabling PSR\n");

	if (val & ~errors)
		FUNC2("PSR_ERROR_STATUS unhandled errors %x\n",
			  val & ~errors);
	if (val & errors) {
		FUNC7(intel_dp);
		psr->sink_not_reliable = true;
	}
	/* clear status register */
	FUNC5(&intel_dp->aux, DP_PSR_ERROR_STATUS, val);
exit:
	FUNC9(&psr->lock);
}
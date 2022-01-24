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
typedef  int /*<<< orphan*/  u32 ;
struct intel_dp {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC5 (struct intel_dp*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct intel_dp *intel_dp,
				       u32 mask,
				       u32 value)
{
	struct drm_i915_private *dev_priv = FUNC5(intel_dp);
	i915_reg_t pp_stat_reg, pp_ctrl_reg;

	FUNC8(&dev_priv->pps_mutex);

	FUNC7(intel_dp);

	pp_stat_reg = FUNC4(intel_dp);
	pp_ctrl_reg = FUNC3(intel_dp);

	FUNC0("mask %08x value %08x status %08x control %08x\n",
			mask, value,
			FUNC2(pp_stat_reg),
			FUNC2(pp_ctrl_reg));

	if (FUNC6(dev_priv, pp_stat_reg,
				       mask, value, 5000))
		FUNC1("Panel status timeout: status %08x control %08x\n",
				FUNC2(pp_stat_reg),
				FUNC2(pp_ctrl_reg));

	FUNC0("Wait complete\n");
}
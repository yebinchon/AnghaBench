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
struct intel_dp {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PANEL_UNLOCK_MASK ; 
 int PANEL_UNLOCK_REGS ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static  u32 FUNC6(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC4(intel_dp);
	u32 control;

	FUNC5(&dev_priv->pps_mutex);

	control = FUNC1(FUNC3(intel_dp));
	if (FUNC2(!FUNC0(dev_priv) &&
		    (control & PANEL_UNLOCK_MASK) != PANEL_UNLOCK_REGS)) {
		control &= ~PANEL_UNLOCK_MASK;
		control |= PANEL_UNLOCK_REGS;
	}
	return control;
}
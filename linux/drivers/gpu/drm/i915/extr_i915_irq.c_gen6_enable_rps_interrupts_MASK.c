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
struct intel_rps {int interrupts_enabled; int pm_iir; } ;
struct intel_gt {int /*<<< orphan*/  irq_lock; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {int pm_rps_events; TYPE_1__ gt_pm; struct intel_gt gt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN11_GTPM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct intel_gt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_gt*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct drm_i915_private *dev_priv)
{
	struct intel_gt *gt = &dev_priv->gt;
	struct intel_rps *rps = &dev_priv->gt_pm.rps;

	if (FUNC2(rps->interrupts_enabled))
		return;

	FUNC7(&gt->irq_lock);
	FUNC3(rps->pm_iir);

	if (FUNC1(dev_priv) >= 11)
		FUNC3(FUNC4(gt, 0, GEN11_GTPM));
	else
		FUNC3(FUNC0(FUNC6(dev_priv)) & dev_priv->pm_rps_events);

	rps->interrupts_enabled = true;
	FUNC5(gt, dev_priv->pm_rps_events);

	FUNC8(&gt->irq_lock);
}
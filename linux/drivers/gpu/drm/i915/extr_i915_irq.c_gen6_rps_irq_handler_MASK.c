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
struct intel_rps {int pm_iir; int /*<<< orphan*/  work; scalar_t__ interrupts_enabled; } ;
struct intel_gt {int /*<<< orphan*/  irq_lock; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {int pm_rps_events; int /*<<< orphan*/ * engine; struct intel_gt gt; TYPE_1__ gt_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int PM_VEBOX_CS_ERROR_INTERRUPT ; 
 int PM_VEBOX_USER_INTERRUPT ; 
 size_t VECS0 ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gt*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct drm_i915_private *dev_priv, u32 pm_iir)
{
	struct intel_rps *rps = &dev_priv->gt_pm.rps;
	struct intel_gt *gt = &dev_priv->gt;

	if (pm_iir & dev_priv->pm_rps_events) {
		FUNC5(&gt->irq_lock);
		FUNC2(gt, pm_iir & dev_priv->pm_rps_events);
		if (rps->interrupts_enabled) {
			rps->pm_iir |= pm_iir & dev_priv->pm_rps_events;
			FUNC4(&rps->work);
		}
		FUNC6(&gt->irq_lock);
	}

	if (FUNC1(dev_priv) >= 8)
		return;

	if (pm_iir & PM_VEBOX_USER_INTERRUPT)
		FUNC3(dev_priv->engine[VECS0]);

	if (pm_iir & PM_VEBOX_CS_ERROR_INTERRUPT)
		FUNC0("Command parser error, pm_iir 0x%08x\n", pm_iir);
}
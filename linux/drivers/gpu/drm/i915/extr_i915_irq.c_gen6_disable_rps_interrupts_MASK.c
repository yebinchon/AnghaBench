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
struct intel_rps {int interrupts_enabled; int /*<<< orphan*/  work; } ;
struct intel_gt {int /*<<< orphan*/  irq_lock; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {struct intel_gt gt; TYPE_1__ gt_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN6_PMINTRMSK ; 
 int /*<<< orphan*/  GEN6_PM_RPS_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_gt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct drm_i915_private *dev_priv)
{
	struct intel_rps *rps = &dev_priv->gt_pm.rps;
	struct intel_gt *gt = &dev_priv->gt;

	if (!FUNC2(rps->interrupts_enabled))
		return;

	FUNC9(&gt->irq_lock);
	rps->interrupts_enabled = false;

	FUNC0(GEN6_PMINTRMSK, FUNC7(dev_priv, ~0u));

	FUNC5(gt, GEN6_PM_RPS_EVENTS);

	FUNC10(&gt->irq_lock);
	FUNC8(dev_priv);

	/* Now that we will not be generating any more work, flush any
	 * outstanding tasks. As we are called on the RPS idle path,
	 * we will reset the GPU to minimum frequencies, so the current
	 * state of the worker can be discarded.
	 */
	FUNC3(&rps->work);
	if (FUNC1(dev_priv) >= 11)
		FUNC4(dev_priv);
	else
		FUNC6(dev_priv);
}
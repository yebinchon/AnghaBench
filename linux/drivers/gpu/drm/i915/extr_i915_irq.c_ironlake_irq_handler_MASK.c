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
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; int /*<<< orphan*/  gt; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEIER ; 
 int /*<<< orphan*/  DEIIR ; 
 int DE_MASTER_IRQ_CONTROL ; 
 int /*<<< orphan*/  GEN6_PMIIR ; 
 int /*<<< orphan*/  GTIIR ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SDEIER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *arg)
{
	struct drm_i915_private *dev_priv = arg;
	u32 de_iir, gt_iir, de_ier, sde_ier = 0;
	irqreturn_t ret = IRQ_NONE;

	if (!FUNC10(dev_priv))
		return IRQ_NONE;

	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
	FUNC4(&dev_priv->runtime_pm);

	/* disable master interrupt before clearing iir  */
	de_ier = FUNC1(DEIER);
	FUNC2(DEIER, de_ier & ~DE_MASTER_IRQ_CONTROL);

	/* Disable south interrupts. We'll only write to SDEIIR once, so further
	 * interrupts will will be stored on its back queue, and then we'll be
	 * able to process them after we restore SDEIER (as soon as we restore
	 * it, we'll get an interrupt if SDEIIR still has something to process
	 * due to its back queue). */
	if (!FUNC0(dev_priv)) {
		sde_ier = FUNC1(SDEIER);
		FUNC2(SDEIER, 0);
	}

	/* Find, clear, then process each source of interrupt */

	gt_iir = FUNC1(GTIIR);
	if (gt_iir) {
		FUNC2(GTIIR, gt_iir);
		ret = IRQ_HANDLED;
		if (FUNC3(dev_priv) >= 6)
			FUNC7(&dev_priv->gt, gt_iir);
		else
			FUNC6(&dev_priv->gt, gt_iir);
	}

	de_iir = FUNC1(DEIIR);
	if (de_iir) {
		FUNC2(DEIIR, de_iir);
		ret = IRQ_HANDLED;
		if (FUNC3(dev_priv) >= 7)
			FUNC11(dev_priv, de_iir);
		else
			FUNC9(dev_priv, de_iir);
	}

	if (FUNC3(dev_priv) >= 6) {
		u32 pm_iir = FUNC1(GEN6_PMIIR);
		if (pm_iir) {
			FUNC2(GEN6_PMIIR, pm_iir);
			ret = IRQ_HANDLED;
			FUNC8(dev_priv, pm_iir);
		}
	}

	FUNC2(DEIER, de_ier);
	if (!FUNC0(dev_priv))
		FUNC2(SDEIER, sde_ier);

	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
	FUNC5(&dev_priv->runtime_pm);

	return ret;
}
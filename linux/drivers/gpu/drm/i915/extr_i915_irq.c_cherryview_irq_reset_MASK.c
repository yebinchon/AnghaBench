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
struct intel_uncore {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  irq_lock; scalar_t__ display_irqs_enabled; int /*<<< orphan*/  gt; struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GEN8_MASTER_IRQ ; 
 int /*<<< orphan*/  GEN8_PCU_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC7(struct drm_i915_private *dev_priv)
{
	struct intel_uncore *uncore = &dev_priv->uncore;

	FUNC1(GEN8_MASTER_IRQ, 0);
	FUNC2(GEN8_MASTER_IRQ);

	FUNC3(&dev_priv->gt);

	FUNC0(uncore, GEN8_PCU_);

	FUNC4(&dev_priv->irq_lock);
	if (dev_priv->display_irqs_enabled)
		FUNC6(dev_priv);
	FUNC5(&dev_priv->irq_lock);
}
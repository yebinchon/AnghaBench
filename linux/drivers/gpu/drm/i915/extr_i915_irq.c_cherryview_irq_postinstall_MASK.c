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
struct drm_i915_private {int /*<<< orphan*/  irq_lock; scalar_t__ display_irqs_enabled; int /*<<< orphan*/  gt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN8_MASTER_IRQ ; 
 int /*<<< orphan*/  GEN8_MASTER_IRQ_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	FUNC2(&dev_priv->gt);

	FUNC3(&dev_priv->irq_lock);
	if (dev_priv->display_irqs_enabled)
		FUNC5(dev_priv);
	FUNC4(&dev_priv->irq_lock);

	FUNC0(GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
	FUNC1(GEN8_MASTER_IRQ);
}
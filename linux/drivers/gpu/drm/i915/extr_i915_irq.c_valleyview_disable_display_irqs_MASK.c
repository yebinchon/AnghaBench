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
struct drm_i915_private {int display_irqs_enabled; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 

void FUNC3(struct drm_i915_private *dev_priv)
{
	FUNC1(&dev_priv->irq_lock);

	if (!dev_priv->display_irqs_enabled)
		return;

	dev_priv->display_irqs_enabled = false;

	if (FUNC0(dev_priv))
		FUNC2(dev_priv);
}
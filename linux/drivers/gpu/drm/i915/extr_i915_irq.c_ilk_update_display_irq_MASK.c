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
struct drm_i915_private {int irq_mask; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEIMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_i915_private *dev_priv,
			    u32 interrupt_mask,
			    u32 enabled_irq_mask)
{
	u32 new_val;

	FUNC4(&dev_priv->irq_lock);

	FUNC2(enabled_irq_mask & ~interrupt_mask);

	if (FUNC2(!FUNC3(dev_priv)))
		return;

	new_val = dev_priv->irq_mask;
	new_val &= ~interrupt_mask;
	new_val |= (~enabled_irq_mask & interrupt_mask);

	if (new_val != dev_priv->irq_mask) {
		dev_priv->irq_mask = new_val;
		FUNC0(DEIMR, dev_priv->irq_mask);
		FUNC1(DEIMR);
	}
}
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
struct drm_i915_private {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN8_DE_PORT_IMR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv,
				u32 interrupt_mask,
				u32 enabled_irq_mask)
{
	u32 new_val;
	u32 old_val;

	FUNC5(&dev_priv->irq_lock);

	FUNC3(enabled_irq_mask & ~interrupt_mask);

	if (FUNC3(!FUNC4(dev_priv)))
		return;

	old_val = FUNC0(GEN8_DE_PORT_IMR);

	new_val = old_val;
	new_val &= ~interrupt_mask;
	new_val |= (~enabled_irq_mask & interrupt_mask);

	if (new_val != old_val) {
		FUNC1(GEN8_DE_PORT_IMR, new_val);
		FUNC2(GEN8_DE_PORT_IMR);
	}
}
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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PORT_HOTPLUG_EN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(struct drm_i915_private *dev_priv,
				     u32 mask,
				     u32 bits)
{
	u32 val;

	FUNC3(&dev_priv->irq_lock);
	FUNC2(bits & ~mask);

	val = FUNC0(PORT_HOTPLUG_EN);
	val &= ~mask;
	val |= bits;
	FUNC1(PORT_HOTPLUG_EN, val);
}
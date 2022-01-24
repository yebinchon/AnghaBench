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
struct intel_gmbus {int /*<<< orphan*/  adapter; } ;
struct drm_i915_private {struct intel_gmbus* gmbus; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct intel_gmbus*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,unsigned int) ; 

void FUNC3(struct drm_i915_private *dev_priv)
{
	struct intel_gmbus *bus;
	unsigned int pin;

	for (pin = 0; pin < FUNC0(dev_priv->gmbus); pin++) {
		if (!FUNC2(dev_priv, pin))
			continue;

		bus = &dev_priv->gmbus[pin];
		FUNC1(&bus->adapter);
	}
}
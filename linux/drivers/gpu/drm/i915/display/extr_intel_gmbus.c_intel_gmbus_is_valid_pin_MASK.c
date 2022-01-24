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
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ name; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ PCH_ICP ; 
 TYPE_1__* FUNC6 (struct drm_i915_private*,unsigned int) ; 
 int /*<<< orphan*/  gmbus_pins ; 
 int /*<<< orphan*/  gmbus_pins_bdw ; 
 int /*<<< orphan*/  gmbus_pins_bxt ; 
 int /*<<< orphan*/  gmbus_pins_cnp ; 
 int /*<<< orphan*/  gmbus_pins_icp ; 
 int /*<<< orphan*/  gmbus_pins_skl ; 

bool FUNC7(struct drm_i915_private *dev_priv,
			      unsigned int pin)
{
	unsigned int size;

	if (FUNC2(dev_priv) >= PCH_ICP)
		size = FUNC0(gmbus_pins_icp);
	else if (FUNC1(dev_priv))
		size = FUNC0(gmbus_pins_cnp);
	else if (FUNC5(dev_priv))
		size = FUNC0(gmbus_pins_bxt);
	else if (FUNC4(dev_priv))
		size = FUNC0(gmbus_pins_skl);
	else if (FUNC3(dev_priv))
		size = FUNC0(gmbus_pins_bdw);
	else
		size = FUNC0(gmbus_pins);

	return pin < size && FUNC6(dev_priv, pin)->name;
}
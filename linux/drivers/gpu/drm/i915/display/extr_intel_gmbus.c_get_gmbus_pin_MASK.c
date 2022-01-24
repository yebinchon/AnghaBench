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
struct gmbus_pin {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ PCH_ICP ; 
 struct gmbus_pin const* gmbus_pins ; 
 struct gmbus_pin const* gmbus_pins_bdw ; 
 struct gmbus_pin const* gmbus_pins_bxt ; 
 struct gmbus_pin const* gmbus_pins_cnp ; 
 struct gmbus_pin const* gmbus_pins_icp ; 
 struct gmbus_pin const* gmbus_pins_skl ; 

__attribute__((used)) static const struct gmbus_pin *FUNC5(struct drm_i915_private *dev_priv,
					     unsigned int pin)
{
	if (FUNC1(dev_priv) >= PCH_ICP)
		return &gmbus_pins_icp[pin];
	else if (FUNC0(dev_priv))
		return &gmbus_pins_cnp[pin];
	else if (FUNC4(dev_priv))
		return &gmbus_pins_bxt[pin];
	else if (FUNC3(dev_priv))
		return &gmbus_pins_skl[pin];
	else if (FUNC2(dev_priv))
		return &gmbus_pins_bdw[pin];
	else
		return &gmbus_pins[pin];
}
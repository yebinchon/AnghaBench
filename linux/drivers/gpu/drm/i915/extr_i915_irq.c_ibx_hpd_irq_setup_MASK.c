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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  SDE_HOTPLUG_MASK ; 
 int /*<<< orphan*/  SDE_HOTPLUG_MASK_CPT ; 
 int /*<<< orphan*/  hpd_cpt ; 
 int /*<<< orphan*/  hpd_ibx ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	u32 hotplug_irqs, enabled_irqs;

	if (FUNC0(dev_priv)) {
		hotplug_irqs = SDE_HOTPLUG_MASK;
		enabled_irqs = FUNC3(dev_priv, hpd_ibx);
	} else {
		hotplug_irqs = SDE_HOTPLUG_MASK_CPT;
		enabled_irqs = FUNC3(dev_priv, hpd_cpt);
	}

	FUNC1(dev_priv, hotplug_irqs, enabled_irqs);

	FUNC2(dev_priv);
}
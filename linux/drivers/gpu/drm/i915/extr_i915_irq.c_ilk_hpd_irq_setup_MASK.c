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
 int /*<<< orphan*/  DE_DP_A_HOTPLUG ; 
 int /*<<< orphan*/  DE_DP_A_HOTPLUG_IVB ; 
 int /*<<< orphan*/  GEN8_PORT_DP_A_HOTPLUG ; 
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpd_bdw ; 
 int /*<<< orphan*/  hpd_ilk ; 
 int /*<<< orphan*/  hpd_ivb ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	u32 hotplug_irqs, enabled_irqs;

	if (FUNC0(dev_priv) >= 8) {
		hotplug_irqs = GEN8_PORT_DP_A_HOTPLUG;
		enabled_irqs = FUNC5(dev_priv, hpd_bdw);

		FUNC1(dev_priv, hotplug_irqs, enabled_irqs);
	} else if (FUNC0(dev_priv) >= 7) {
		hotplug_irqs = DE_DP_A_HOTPLUG_IVB;
		enabled_irqs = FUNC5(dev_priv, hpd_ivb);

		FUNC4(dev_priv, hotplug_irqs, enabled_irqs);
	} else {
		hotplug_irqs = DE_DP_A_HOTPLUG;
		enabled_irqs = FUNC5(dev_priv, hpd_ilk);

		FUNC4(dev_priv, hotplug_irqs, enabled_irqs);
	}

	FUNC3(dev_priv);

	FUNC2(dev_priv);
}
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
 int /*<<< orphan*/  BXT_DE_PORT_HOTPLUG_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpd_bxt ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	u32 hotplug_irqs, enabled_irqs;

	enabled_irqs = FUNC2(dev_priv, hpd_bxt);
	hotplug_irqs = BXT_DE_PORT_HOTPLUG_MASK;

	FUNC1(dev_priv, hotplug_irqs, enabled_irqs);

	FUNC0(dev_priv, enabled_irqs);
}
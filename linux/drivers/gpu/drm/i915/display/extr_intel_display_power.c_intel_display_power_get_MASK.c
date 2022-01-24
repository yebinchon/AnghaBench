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
struct i915_power_domains {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; struct i915_power_domains power_domains; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

intel_wakeref_t FUNC4(struct drm_i915_private *dev_priv,
					enum intel_display_power_domain domain)
{
	struct i915_power_domains *power_domains = &dev_priv->power_domains;
	intel_wakeref_t wakeref = FUNC1(&dev_priv->runtime_pm);

	FUNC2(&power_domains->lock);
	FUNC0(dev_priv, domain);
	FUNC3(&power_domains->lock);

	return wakeref;
}
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
struct i915_power_domains {int /*<<< orphan*/  async_put_wakeref; int /*<<< orphan*/  async_put_work; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; struct i915_power_domains power_domains; } ;
typedef  enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_power_domains*,int) ; 
 int FUNC2 (struct i915_power_domains*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_power_domains*) ; 

__attribute__((used)) static bool
FUNC7(struct drm_i915_private *dev_priv,
				       enum intel_display_power_domain domain)
{
	struct i915_power_domains *power_domains = &dev_priv->power_domains;
	bool ret = false;

	if (!(FUNC2(power_domains) & FUNC0(domain)))
		goto out_verify;

	FUNC1(power_domains, domain);

	ret = true;

	if (FUNC2(power_domains))
		goto out_verify;

	FUNC3(&power_domains->async_put_work);
	FUNC5(&dev_priv->runtime_pm,
				 FUNC4(&power_domains->async_put_wakeref));
out_verify:
	FUNC6(power_domains);

	return ret;
}
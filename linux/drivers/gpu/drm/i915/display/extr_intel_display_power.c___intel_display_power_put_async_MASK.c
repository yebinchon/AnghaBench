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
struct intel_runtime_pm {int dummy; } ;
struct i915_power_domains {int* domain_use_count; int /*<<< orphan*/  lock; int /*<<< orphan*/ * async_put_domains; scalar_t__ async_put_wakeref; } ;
struct drm_i915_private {struct intel_runtime_pm runtime_pm; struct i915_power_domains power_domains; } ;
typedef  scalar_t__ intel_wakeref_t ;
typedef  enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_runtime_pm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_runtime_pm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_power_domains*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i915_power_domains*) ; 

void FUNC11(struct drm_i915_private *i915,
				     enum intel_display_power_domain domain,
				     intel_wakeref_t wakeref)
{
	struct i915_power_domains *power_domains = &i915->power_domains;
	struct intel_runtime_pm *rpm = &i915->runtime_pm;
	intel_wakeref_t work_wakeref = FUNC4(rpm);

	FUNC7(&power_domains->lock);

	if (power_domains->domain_use_count[domain] > 1) {
		FUNC2(i915, domain);

		goto out_verify;
	}

	FUNC1(power_domains->domain_use_count[domain] != 1);

	/* Let a pending work requeue itself or queue a new one. */
	if (power_domains->async_put_wakeref) {
		power_domains->async_put_domains[1] |= FUNC0(domain);
	} else {
		power_domains->async_put_domains[0] |= FUNC0(domain);
		FUNC9(power_domains,
					     FUNC3(&work_wakeref));
	}

out_verify:
	FUNC10(power_domains);

	FUNC8(&power_domains->lock);

	if (work_wakeref)
		FUNC6(rpm, work_wakeref);

	FUNC5(rpm, wakeref);
}
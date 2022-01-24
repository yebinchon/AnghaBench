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
struct i915_power_domains {int /*<<< orphan*/  lock; int /*<<< orphan*/  async_put_work; int /*<<< orphan*/  async_put_wakeref; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; struct i915_power_domains power_domains; } ;
typedef  scalar_t__ intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i915_power_domains*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_power_domains*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_power_domains*) ; 

void FUNC8(struct drm_i915_private *i915)
{
	struct i915_power_domains *power_domains = &i915->power_domains;
	intel_wakeref_t work_wakeref;

	FUNC4(&power_domains->lock);

	work_wakeref = FUNC2(&power_domains->async_put_wakeref);
	if (!work_wakeref)
		goto out_verify;

	FUNC6(power_domains,
				  FUNC0(power_domains));
	FUNC1(&power_domains->async_put_work);

out_verify:
	FUNC7(power_domains);

	FUNC5(&power_domains->lock);

	if (work_wakeref)
		FUNC3(&i915->runtime_pm, work_wakeref);
}
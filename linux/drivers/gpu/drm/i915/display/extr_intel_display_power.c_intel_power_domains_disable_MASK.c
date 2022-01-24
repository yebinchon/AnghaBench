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
struct i915_power_domains {int /*<<< orphan*/  wakeref; } ;
struct drm_i915_private {struct i915_power_domains power_domains; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_DOMAIN_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 

void FUNC3(struct drm_i915_private *i915)
{
	struct i915_power_domains *power_domains = &i915->power_domains;

	FUNC0(power_domains->wakeref);
	power_domains->wakeref =
		FUNC1(i915, POWER_DOMAIN_INIT);

	FUNC2(i915);
}
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
struct i915_power_domains {int async_put_wakeref; int /*<<< orphan*/  async_put_work; } ;
typedef  int intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_unbound_wq ; 

__attribute__((used)) static void
FUNC3(struct i915_power_domains *power_domains,
			     intel_wakeref_t wakeref)
{
	FUNC0(power_domains->async_put_wakeref);
	power_domains->async_put_wakeref = wakeref;
	FUNC0(!FUNC2(system_unbound_wq,
				    &power_domains->async_put_work,
				    FUNC1(100)));
}
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
struct i915_pmu {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 scalar_t__ CPUHP_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ cpuhp_slot ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct i915_pmu *pmu)
{
	FUNC0(cpuhp_slot == CPUHP_INVALID);
	FUNC0(FUNC2(cpuhp_slot, &pmu->node));
	FUNC1(cpuhp_slot);
}
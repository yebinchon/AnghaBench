#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct intel_uncore {TYPE_1__* debug; } ;
struct TYPE_2__ {scalar_t__ suspend_count; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct intel_uncore*) ; 
 int FUNC1 (struct intel_uncore*) ; 
 scalar_t__ FUNC2 (struct intel_uncore*) ; 
 scalar_t__ FUNC3 (struct intel_uncore*) ; 
 scalar_t__ FUNC4 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct intel_uncore*) ; 

__attribute__((used)) static bool
FUNC7(struct intel_uncore *uncore)
{
	bool ret = false;

	FUNC5(&uncore->debug->lock);

	if (uncore->debug->suspend_count)
		return false;

	if (FUNC4(uncore))
		ret |= FUNC0(uncore);

	if (FUNC2(uncore))
		ret |= FUNC6(uncore);

	if (FUNC3(uncore))
		ret |= FUNC1(uncore);

	return ret;
}
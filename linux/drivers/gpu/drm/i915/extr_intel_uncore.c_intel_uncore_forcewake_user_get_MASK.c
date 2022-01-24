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
struct intel_uncore {int /*<<< orphan*/  lock; TYPE_1__* debug; int /*<<< orphan*/  user_forcewake_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct intel_uncore *uncore)
{
	FUNC3(&uncore->lock);
	if (!uncore->user_forcewake_count++) {
		FUNC0(uncore, FORCEWAKE_ALL);
		FUNC2(&uncore->debug->lock);
		FUNC1(uncore->debug);
		FUNC4(&uncore->debug->lock);
	}
	FUNC5(&uncore->lock);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_uncore {int /*<<< orphan*/  lock; TYPE_3__* debug; TYPE_1__* i915; int /*<<< orphan*/  user_forcewake_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_2__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 scalar_t__ FUNC0 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct intel_uncore *uncore)
{
	FUNC5(&uncore->lock);
	if (!--uncore->user_forcewake_count) {
		FUNC4(&uncore->debug->lock);
		FUNC3(uncore->debug);

		if (FUNC0(uncore))
			FUNC1(uncore->i915->drm.dev,
				 "Invalid mmio detected during user access\n");
		FUNC6(&uncore->debug->lock);

		FUNC2(uncore, FORCEWAKE_ALL);
	}
	FUNC7(&uncore->lock);
}
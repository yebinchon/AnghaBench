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
struct TYPE_2__ {int /*<<< orphan*/  (* force_wake_get ) (struct intel_uncore*,unsigned int) ;} ;
struct intel_uncore {int /*<<< orphan*/  lock; int /*<<< orphan*/  fifo_count; TYPE_1__ funcs; int /*<<< orphan*/  i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GTFIFOCTL ; 
 int GT_FIFO_CTL_BLOCK_ALL_POLICY_STALL ; 
 int GT_FIFO_CTL_RC6_POLICY_STALL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uncore*) ; 
 scalar_t__ FUNC6 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_uncore*,unsigned int) ; 

__attribute__((used)) static void FUNC13(struct intel_uncore *uncore,
				     unsigned int restore_forcewake)
{
	FUNC0(!FUNC7(uncore));

	/* WaDisableShadowRegForCpd:chv */
	if (FUNC1(uncore->i915)) {
		FUNC3(uncore, GTFIFOCTL,
				     FUNC2(uncore, GTFIFOCTL) |
				     GT_FIFO_CTL_BLOCK_ALL_POLICY_STALL |
				     GT_FIFO_CTL_RC6_POLICY_STALL);
	}

	FUNC8();
	FUNC5(uncore);
	if (restore_forcewake) {
		FUNC10(&uncore->lock);
		uncore->funcs.force_wake_get(uncore, restore_forcewake);

		if (FUNC6(uncore))
			uncore->fifo_count = FUNC4(uncore);
		FUNC11(&uncore->lock);
	}
	FUNC9();
}
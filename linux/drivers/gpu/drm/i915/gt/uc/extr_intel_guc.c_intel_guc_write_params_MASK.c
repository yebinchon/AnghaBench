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
struct intel_uncore {int dummy; } ;
struct intel_guc {int /*<<< orphan*/ * params; } ;
struct TYPE_2__ {struct intel_uncore* uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCEWAKE_BLITTER ; 
 int GUC_CTL_MAX_DWORDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct intel_guc *guc)
{
	struct intel_uncore *uncore = FUNC1(guc)->uncore;
	int i;

	/*
	 * All SOFT_SCRATCH registers are in FORCEWAKE_BLITTER domain and
	 * they are power context saved so it's ok to release forcewake
	 * when we are done here and take it again at xfer time.
	 */
	FUNC2(uncore, FORCEWAKE_BLITTER);

	FUNC4(uncore, FUNC0(0), 0);

	for (i = 0; i < GUC_CTL_MAX_DWORDS; i++)
		FUNC4(uncore, FUNC0(1 + i), guc->params[i]);

	FUNC3(uncore, FORCEWAKE_BLITTER);
}
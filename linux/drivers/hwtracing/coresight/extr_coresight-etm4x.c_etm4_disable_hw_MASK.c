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
typedef  int u32 ;
struct etmv4_drvdata {int /*<<< orphan*/  cpu; TYPE_1__* csdev; scalar_t__ base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ TRCPDCR ; 
 int TRCPDCR_PU ; 
 scalar_t__ TRCPRGCTLR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  sy ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(void *info)
{
	u32 control;
	struct etmv4_drvdata *drvdata = info;

	FUNC1(drvdata->base);

	/* power can be removed from the trace unit now */
	control = FUNC6(drvdata->base + TRCPDCR);
	control &= ~TRCPDCR_PU;
	FUNC7(control, drvdata->base + TRCPDCR);

	control = FUNC6(drvdata->base + TRCPRGCTLR);

	/* EN, bit[0] Trace unit enable bit */
	control &= ~0x1;

	/*
	 * Make sure everything completes before disabling, as recommended
	 * by section 7.3.77 ("TRCVICTLR, ViewInst Main Control Register,
	 * SSTATUS") of ARM IHI 0064D
	 */
	FUNC4(sy);
	FUNC5();
	FUNC7(control, drvdata->base + TRCPRGCTLR);

	FUNC2(drvdata->base);

	FUNC0(drvdata->base);

	FUNC3(&drvdata->csdev->dev,
		"cpu: %d disable smp call done\n", drvdata->cpu);
}
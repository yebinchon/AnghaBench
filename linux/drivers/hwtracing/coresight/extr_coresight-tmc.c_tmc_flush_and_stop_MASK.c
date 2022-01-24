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
typedef  int /*<<< orphan*/  u32 ;
struct tmc_drvdata {TYPE_1__* csdev; scalar_t__ base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TMC_FFCR ; 
 int /*<<< orphan*/  TMC_FFCR_FLUSHMAN_BIT ; 
 int /*<<< orphan*/  TMC_FFCR_STOP_ON_FLUSH ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct tmc_drvdata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6(struct tmc_drvdata *drvdata)
{
	u32 ffcr;

	ffcr = FUNC3(drvdata->base + TMC_FFCR);
	ffcr |= TMC_FFCR_STOP_ON_FLUSH;
	FUNC5(ffcr, drvdata->base + TMC_FFCR);
	ffcr |= FUNC0(TMC_FFCR_FLUSHMAN_BIT);
	FUNC5(ffcr, drvdata->base + TMC_FFCR);
	/* Ensure flush completes */
	if (FUNC1(drvdata->base,
			      TMC_FFCR, TMC_FFCR_FLUSHMAN_BIT, 0)) {
		FUNC2(&drvdata->csdev->dev,
		"timeout while waiting for completion of Manual Flush\n");
	}

	FUNC4(drvdata);
}
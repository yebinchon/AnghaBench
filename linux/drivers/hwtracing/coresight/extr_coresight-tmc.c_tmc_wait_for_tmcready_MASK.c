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
struct tmc_drvdata {TYPE_1__* csdev; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TMC_STS ; 
 int /*<<< orphan*/  TMC_STS_TMCREADY_BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

void FUNC2(struct tmc_drvdata *drvdata)
{
	/* Ensure formatter, unformatter and hardware fifo are empty */
	if (FUNC0(drvdata->base,
			      TMC_STS, TMC_STS_TMCREADY_BIT, 1)) {
		FUNC1(&drvdata->csdev->dev,
			"timeout while waiting for TMC to be Ready\n");
	}
}
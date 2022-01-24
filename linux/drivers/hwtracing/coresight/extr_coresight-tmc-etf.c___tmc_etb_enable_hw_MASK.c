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
struct tmc_drvdata {int trigger_cntr; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ TMC_FFCR ; 
 int TMC_FFCR_EN_FMT ; 
 int TMC_FFCR_EN_TI ; 
 int TMC_FFCR_FON_FLIN ; 
 int TMC_FFCR_FON_TRIG_EVT ; 
 int TMC_FFCR_TRIGON_TRIGIN ; 
 scalar_t__ TMC_MODE ; 
 int TMC_MODE_CIRCULAR_BUFFER ; 
 scalar_t__ TMC_TRG ; 
 int /*<<< orphan*/  FUNC2 (struct tmc_drvdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct tmc_drvdata*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct tmc_drvdata *drvdata)
{
	FUNC1(drvdata->base);

	/* Wait for TMCSReady bit to be set */
	FUNC3(drvdata);

	FUNC4(TMC_MODE_CIRCULAR_BUFFER, drvdata->base + TMC_MODE);
	FUNC4(TMC_FFCR_EN_FMT | TMC_FFCR_EN_TI |
		       TMC_FFCR_FON_FLIN | TMC_FFCR_FON_TRIG_EVT |
		       TMC_FFCR_TRIGON_TRIGIN,
		       drvdata->base + TMC_FFCR);

	FUNC4(drvdata->trigger_cntr, drvdata->base + TMC_TRG);
	FUNC2(drvdata);

	FUNC0(drvdata->base);
}
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
struct tmc_drvdata {int /*<<< orphan*/ * etr_buf; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tmc_drvdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tmc_drvdata*) ; 

__attribute__((used)) static void FUNC3(struct tmc_drvdata *drvdata)
{
	FUNC0(drvdata);
	/* Disable CATU device if this ETR is connected to one */
	FUNC2(drvdata);
	FUNC1(drvdata->base);
	/* Reset the ETR buf used by hardware */
	drvdata->etr_buf = NULL;
}
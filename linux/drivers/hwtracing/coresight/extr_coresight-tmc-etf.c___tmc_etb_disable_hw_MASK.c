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
struct tmc_drvdata {scalar_t__ mode; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CS_MODE_SYSFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tmc_drvdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct tmc_drvdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmc_drvdata*) ; 

__attribute__((used)) static void FUNC5(struct tmc_drvdata *drvdata)
{
	FUNC1(drvdata->base);

	FUNC4(drvdata);
	/*
	 * When operating in sysFS mode the content of the buffer needs to be
	 * read before the TMC is disabled.
	 */
	if (drvdata->mode == CS_MODE_SYSFS)
		FUNC3(drvdata);
	FUNC2(drvdata);

	FUNC0(drvdata->base);
}
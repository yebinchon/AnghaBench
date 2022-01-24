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
struct tmc_drvdata {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ TMC_CTL ; 
 int /*<<< orphan*/  TMC_CTL_CAPT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC1(struct tmc_drvdata *drvdata)
{
	FUNC0(TMC_CTL_CAPT_EN, drvdata->base + TMC_CTL);
}
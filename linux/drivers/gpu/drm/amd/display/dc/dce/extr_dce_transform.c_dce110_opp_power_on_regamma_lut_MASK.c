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
struct transform {int dummy; } ;
struct dce_transform {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCFE_MEM_LIGHT_SLEEP_CNTL ; 
 int /*<<< orphan*/  DCFE_MEM_PWR_CTRL ; 
 int /*<<< orphan*/  DCP_LUT_LIGHT_SLEEP_DIS ; 
 int /*<<< orphan*/  DCP_LUT_MEM_PWR_DIS ; 
 int /*<<< orphan*/  DCP_REGAMMA_MEM_PWR_DIS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGAMMA_LUT_LIGHT_SLEEP_DIS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct dce_transform* FUNC2 (struct transform*) ; 

void FUNC3(struct transform *xfm,
				     bool power_on)
{
	struct dce_transform *xfm_dce = FUNC2(xfm);

	if (FUNC0(DCFE_MEM_PWR_CTRL))
		FUNC1(DCFE_MEM_PWR_CTRL,
			     DCP_REGAMMA_MEM_PWR_DIS, power_on,
			     DCP_LUT_MEM_PWR_DIS, power_on);
	else
		FUNC1(DCFE_MEM_LIGHT_SLEEP_CNTL,
			    REGAMMA_LUT_LIGHT_SLEEP_DIS, power_on,
			    DCP_LUT_LIGHT_SLEEP_DIS, power_on);

}
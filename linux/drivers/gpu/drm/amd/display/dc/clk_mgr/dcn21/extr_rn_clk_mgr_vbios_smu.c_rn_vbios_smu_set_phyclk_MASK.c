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
struct clk_mgr_internal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VBIOSSMC_MSG_SetPhyclkVoltageByFreq ; 
 int /*<<< orphan*/  FUNC0 (struct clk_mgr_internal*,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct clk_mgr_internal *clk_mgr, int requested_phyclk_khz)
{
	FUNC0(
			clk_mgr,
			VBIOSSMC_MSG_SetPhyclkVoltageByFreq,
			requested_phyclk_khz / 1000);
}
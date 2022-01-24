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
struct dss_video_pll {int /*<<< orphan*/  clkctrl_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct dss_video_pll *vpll)
{
	FUNC0(vpll->clkctrl_base, 2, 31, 30); /* PLL_POWER_ON_ALL */

	/*
	 * DRA7x PLL CTRL's PLL_PWR_STATUS seems to always return 0,
	 * so we have to use fixed delay here.
	 */
	FUNC1(1);
}
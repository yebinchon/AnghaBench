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
struct dce_clk_mgr {int /*<<< orphan*/  dprefclk_khz; } ;
struct clk_mgr {int dummy; } ;

/* Variables and functions */
 struct dce_clk_mgr* FUNC0 (struct clk_mgr*) ; 
 int FUNC1 (struct dce_clk_mgr*,int /*<<< orphan*/ ) ; 

int FUNC2(struct clk_mgr *clk_mgr)
{
	struct dce_clk_mgr *clk_mgr_dce = FUNC0(clk_mgr);

	return FUNC1(clk_mgr_dce, clk_mgr_dce->dprefclk_khz);
}
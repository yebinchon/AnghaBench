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
struct clk_mgr {int dummy; } ;

/* Variables and functions */
 struct clk_mgr_internal* FUNC0 (struct clk_mgr*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_mgr_internal*) ; 

void FUNC2(struct clk_mgr *clk_mgr_base)
{
	struct clk_mgr_internal *clk_mgr = FUNC0(clk_mgr_base);

	FUNC1(clk_mgr);
}
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
struct clk {int dummy; } ;
struct cc_drvdata {struct clk* clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 

void FUNC2(struct cc_drvdata *drvdata)
{
	struct clk *clk = drvdata->clk;

	if (FUNC0(clk))
		/* Not all devices have a clock associated with CCREE */
		return;

	FUNC1(clk);
}
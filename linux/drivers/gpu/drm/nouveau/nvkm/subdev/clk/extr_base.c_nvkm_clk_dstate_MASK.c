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
struct nvkm_clk {int dstate; scalar_t__ state_nr; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,scalar_t__) ; 
 int FUNC2 (struct nvkm_clk*,int) ; 

int
FUNC3(struct nvkm_clk *clk, int req, int rel)
{
	if (!rel) clk->dstate  = req;
	if ( rel) clk->dstate += rel;
	clk->dstate = FUNC1(clk->dstate, clk->state_nr - 1);
	clk->dstate = FUNC0(clk->dstate, 0);
	return FUNC2(clk, true);
}
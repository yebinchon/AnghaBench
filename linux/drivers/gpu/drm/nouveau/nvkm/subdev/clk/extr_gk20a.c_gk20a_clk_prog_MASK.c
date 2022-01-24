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
struct nvkm_clk {int dummy; } ;
struct gk20a_clk {int /*<<< orphan*/  pll; } ;

/* Variables and functions */
 struct gk20a_clk* FUNC0 (struct nvkm_clk*) ; 
 int FUNC1 (struct gk20a_clk*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct gk20a_clk*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct nvkm_clk *base)
{
	struct gk20a_clk *clk = FUNC0(base);
	int ret;

	ret = FUNC2(clk, &clk->pll);
	if (ret)
		ret = FUNC1(clk, &clk->pll);

	return ret;
}
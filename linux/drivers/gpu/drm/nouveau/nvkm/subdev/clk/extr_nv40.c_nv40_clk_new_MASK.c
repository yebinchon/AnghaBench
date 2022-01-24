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
struct nvkm_device {int dummy; } ;
struct nvkm_clk {int /*<<< orphan*/  pll_prog; int /*<<< orphan*/  pll_calc; } ;
struct nv40_clk {struct nvkm_clk base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nv40_clk* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv04_clk_pll_calc ; 
 int /*<<< orphan*/  nv04_clk_pll_prog ; 
 int /*<<< orphan*/  nv40_clk ; 
 int FUNC1 (int /*<<< orphan*/ *,struct nvkm_device*,int,int,struct nvkm_clk*) ; 

int
FUNC2(struct nvkm_device *device, int index, struct nvkm_clk **pclk)
{
	struct nv40_clk *clk;

	if (!(clk = FUNC0(sizeof(*clk), GFP_KERNEL)))
		return -ENOMEM;
	clk->base.pll_calc = nv04_clk_pll_calc;
	clk->base.pll_prog = nv04_clk_pll_prog;
	*pclk = &clk->base;

	return FUNC1(&nv40_clk, device, index, true, &clk->base);
}
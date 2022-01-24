#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_subdev {TYPE_2__* device; } ;
struct TYPE_4__ {scalar_t__ max_freq; } ;
struct nvbios_pll {int /*<<< orphan*/  refclk; TYPE_1__ vco2; } ;
struct TYPE_6__ {struct nvkm_subdev subdev; } ;
struct mcp77_clk {TYPE_3__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,struct nvbios_pll*,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  nv_clk_src_href ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvbios_pll*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32
FUNC3(struct mcp77_clk *clk, u32 reg,
	 u32 clock, int *N, int *M, int *P)
{
	struct nvkm_subdev *subdev = &clk->base.subdev;
	struct nvbios_pll pll;
	int ret;

	ret = FUNC1(subdev->device->bios, reg, &pll);
	if (ret)
		return 0;

	pll.vco2.max_freq = 0;
	pll.refclk = FUNC2(&clk->base, nv_clk_src_href);
	if (!pll.refclk)
		return 0;

	return FUNC0(subdev, &pll, clock, N, M, NULL, NULL, P);
}
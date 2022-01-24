#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct gm20b_pll {int sdm_din; int /*<<< orphan*/  base; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct gm20b_clk {TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPCPLL_CFG2 ; 
 int GPCPLL_CFG2_SDM_DIN_SHIFT ; 
 int /*<<< orphan*/  GPCPLL_CFG2_SDM_DIN_WIDTH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nvkm_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct gm20b_clk *clk, struct gm20b_pll *pll)
{
	struct nvkm_subdev *subdev = &clk->base.base.subdev;
	struct nvkm_device *device = subdev->device;
	u32 val;

	FUNC1(&clk->base, &pll->base);
	val = FUNC2(device, GPCPLL_CFG2);
	pll->sdm_din = (val >> GPCPLL_CFG2_SDM_DIN_SHIFT) &
		       FUNC0(GPCPLL_CFG2_SDM_DIN_WIDTH);
}
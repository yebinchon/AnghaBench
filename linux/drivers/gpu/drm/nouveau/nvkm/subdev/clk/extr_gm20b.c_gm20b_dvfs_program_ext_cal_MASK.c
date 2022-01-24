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
typedef  int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct gm20b_clk {TYPE_3__ base; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ DFS_DET_RANGE ; 
 int /*<<< orphan*/  GPCPLL_DVFS1 ; 
 int /*<<< orphan*/  GPC_BCAST_GPCPLL_DVFS2 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct gm20b_clk *clk, u32 dfs_det_cal)
{
	struct nvkm_device *device = clk->base.base.subdev.device;
	u32 val;

	FUNC2(device, GPC_BCAST_GPCPLL_DVFS2, FUNC1(DFS_DET_RANGE + 1),
		  dfs_det_cal);
	FUNC5(1);

	val = FUNC3(device, GPCPLL_DVFS1);
	if (!(val & FUNC0(25))) {
		/* Use external value to overwrite calibration value */
		val |= FUNC0(25) | FUNC0(16);
		FUNC4(device, GPCPLL_DVFS1, val);
	}
}
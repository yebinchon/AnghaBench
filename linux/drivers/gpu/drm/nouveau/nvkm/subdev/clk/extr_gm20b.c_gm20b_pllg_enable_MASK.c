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
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct gm20b_clk {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPCPLL_CFG ; 
 int /*<<< orphan*/  GPCPLL_CFG_ENABLE ; 
 int /*<<< orphan*/  GPCPLL_CFG_SYNC_MODE ; 
 int /*<<< orphan*/  SEL_VCO ; 
 int /*<<< orphan*/  SEL_VCO_GPC2CLK_OUT_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct gm20b_clk *clk)
{
	struct nvkm_device *device = clk->base.base.subdev.device;

	FUNC1(device, GPCPLL_CFG, GPCPLL_CFG_ENABLE, GPCPLL_CFG_ENABLE);
	FUNC2(device, GPCPLL_CFG);

	/* In DVFS mode lock cannot be used - so just delay */
	FUNC3(40);

	/* set SYNC_MODE for glitchless switch out of bypass */
	FUNC1(device, GPCPLL_CFG, GPCPLL_CFG_SYNC_MODE,
		       GPCPLL_CFG_SYNC_MODE);
	FUNC2(device, GPCPLL_CFG);

	/* switch to VCO mode */
	FUNC1(device, SEL_VCO, FUNC0(SEL_VCO_GPC2CLK_OUT_SHIFT),
		  FUNC0(SEL_VCO_GPC2CLK_OUT_SHIFT));

	return 0;
}
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
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct gk20a_clk {TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GPCPLL_CFG ; 
 int /*<<< orphan*/  GPCPLL_CFG_ENABLE ; 
 int /*<<< orphan*/  GPCPLL_CFG_LOCK ; 
 int GPCPLL_CFG_LOCK_DET_OFF ; 
 int /*<<< orphan*/  SEL_VCO ; 
 int /*<<< orphan*/  SEL_VCO_GPC2CLK_OUT_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nvkm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct gk20a_clk *clk)
{
	struct nvkm_device *device = clk->base.subdev.device;
	u32 val;

	FUNC1(device, GPCPLL_CFG, GPCPLL_CFG_ENABLE, GPCPLL_CFG_ENABLE);
	FUNC2(device, GPCPLL_CFG);

	/* enable lock detection */
	val = FUNC2(device, GPCPLL_CFG);
	if (val & GPCPLL_CFG_LOCK_DET_OFF) {
		val &= ~GPCPLL_CFG_LOCK_DET_OFF;
		FUNC4(device, GPCPLL_CFG, val);
	}

	/* wait for lock */
	if (FUNC3(device, 300, GPCPLL_CFG, GPCPLL_CFG_LOCK,
			   GPCPLL_CFG_LOCK) < 0)
		return -ETIMEDOUT;

	/* switch to VCO mode */
	FUNC1(device, SEL_VCO, FUNC0(SEL_VCO_GPC2CLK_OUT_SHIFT),
		FUNC0(SEL_VCO_GPC2CLK_OUT_SHIFT));

	return 0;
}
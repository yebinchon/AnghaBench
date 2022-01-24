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
struct nvkm_volt {int dummy; } ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {struct nvkm_volt* volt; } ;
struct nvkm_clk {TYPE_3__* func; } ;
struct gm20b_clk {int /*<<< orphan*/  uv; } ;
struct TYPE_4__ {struct gm20b_clk* (* func ) (struct nvkm_clk*) ;struct nvkm_subdev subdev; } ;
struct gk20a_clk {TYPE_1__ base; } ;
struct TYPE_6__ {int (* prog ) (struct nvkm_clk*) ;TYPE_2__* pstates; int /*<<< orphan*/  (* calc ) (struct nvkm_clk*,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int BYPASSCTRL_SYS ; 
 int BYPASSCTRL_SYS_GPCPLL_SHIFT ; 
 int /*<<< orphan*/  BYPASSCTRL_SYS_GPCPLL_WIDTH ; 
 int GPC2CLK_OUT ; 
 int GPC2CLK_OUT_INIT_MASK ; 
 int GPC2CLK_OUT_INIT_VAL ; 
 int GPCPLL_CFG ; 
 int GPCPLL_CFG_IDDQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct gk20a_clk* FUNC1 (struct nvkm_clk*) ; 
 int FUNC2 (struct gk20a_clk*) ; 
 struct gm20b_clk* FUNC3 (struct nvkm_clk*) ; 
 int FUNC4 (struct gm20b_clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_device*,int,int,int) ; 
 int FUNC7 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_volt*) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_clk*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct nvkm_clk*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int
FUNC13(struct nvkm_clk *base)
{
	struct gk20a_clk *clk = FUNC1(base);
	struct nvkm_subdev *subdev = &clk->base.subdev;
	struct nvkm_device *device = subdev->device;
	int ret;
	u32 data;

	/* get out from IDDQ */
	FUNC6(device, GPCPLL_CFG, GPCPLL_CFG_IDDQ, 0);
	FUNC7(device, GPCPLL_CFG);
	FUNC12(5);

	FUNC6(device, GPC2CLK_OUT, GPC2CLK_OUT_INIT_MASK,
		  GPC2CLK_OUT_INIT_VAL);

	/* Set the global bypass control to VCO */
	FUNC6(device, BYPASSCTRL_SYS,
	       FUNC0(BYPASSCTRL_SYS_GPCPLL_WIDTH) << BYPASSCTRL_SYS_GPCPLL_SHIFT,
	       0);

	ret = FUNC2(clk);
	if (ret)
		return ret;

	/* If not fused, set RAM SVOP PDP data 0x2, and enable fuse override */
	data = FUNC7(device, 0x021944);
	if (!(data & 0x3)) {
		data |= 0x2;
		FUNC9(device, 0x021944, data);

		data = FUNC7(device, 0x021948);
		data |=  0x1;
		FUNC9(device, 0x021948, data);
	}

	/* Disable idle slow down  */
	FUNC6(device, 0x20160, 0x003f0000, 0x0);

	/* speedo >= 1? */
	if (clk->base.func == &gm20b_clk) {
		struct gm20b_clk *_clk = FUNC3(base);
		struct nvkm_volt *volt = device->volt;

		/* Get current voltage */
		_clk->uv = FUNC8(volt);

		/* Initialize DVFS */
		ret = FUNC4(_clk);
		if (ret)
			return ret;
	}

	/* Start with lowest frequency */
	base->func->calc(base, &base->func->pstates[0].base);
	ret = base->func->prog(base);
	if (ret) {
		FUNC5(subdev, "cannot initialize clock\n");
		return ret;
	}

	return 0;
}
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
typedef  scalar_t__ u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ n; } ;
struct gm20b_pll {scalar_t__ sdm_din; TYPE_3__ base; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct gm20b_clk {TYPE_2__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GPCPLL_CFG2 ; 
 scalar_t__ GPCPLL_CFG2_SDM_DIN_MASK ; 
 scalar_t__ GPCPLL_CFG2_SDM_DIN_NEW_MASK ; 
 scalar_t__ GPCPLL_CFG2_SDM_DIN_NEW_SHIFT ; 
 scalar_t__ GPCPLL_CFG2_SDM_DIN_SHIFT ; 
 int /*<<< orphan*/  GPCPLL_NDIV_SLOWDOWN ; 
 int /*<<< orphan*/  GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT ; 
 int /*<<< orphan*/  GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT ; 
 int /*<<< orphan*/  GPC_BCAST_NDIV_SLOWDOWN_DEBUG ; 
 int /*<<< orphan*/  GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct gm20b_clk*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct gm20b_clk*,struct gm20b_pll*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nvkm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(struct gm20b_clk *clk, u32 n)
{
	struct nvkm_subdev *subdev = &clk->base.base.subdev;
	struct nvkm_device *device = subdev->device;
	struct gm20b_pll pll;
	u32 n_int, sdm_din;
	int ret = 0;

	/* calculate the new n_int/sdm_din for this n/uv */
	FUNC2(clk, n, &n_int, &sdm_din);

	/* get old coefficients */
	FUNC3(clk, &pll);
	/* do nothing if NDIV is the same */
	if (n_int == pll.base.n && sdm_din == pll.sdm_din)
		return 0;

	/* pll slowdown mode */
	FUNC4(device, GPCPLL_NDIV_SLOWDOWN,
		FUNC0(GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT),
		FUNC0(GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT));

	/* new ndiv ready for ramp */
	/* in DVFS mode SDM is updated via "new" field */
	FUNC4(device, GPCPLL_CFG2, GPCPLL_CFG2_SDM_DIN_NEW_MASK,
		  sdm_din << GPCPLL_CFG2_SDM_DIN_NEW_SHIFT);
	pll.base.n = n_int;
	FUNC7(1);
	FUNC1(&clk->base, &pll.base);

	/* dynamic ramp to new ndiv */
	FUNC7(1);
	FUNC4(device, GPCPLL_NDIV_SLOWDOWN,
		  FUNC0(GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT),
		  FUNC0(GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT));

	/* wait for ramping to complete */
	if (FUNC6(device, 500, GPC_BCAST_NDIV_SLOWDOWN_DEBUG,
		GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK,
		GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK) < 0)
		ret = -ETIMEDOUT;

	/* in DVFS mode complete SDM update */
	FUNC4(device, GPCPLL_CFG2, GPCPLL_CFG2_SDM_DIN_MASK,
		  sdm_din << GPCPLL_CFG2_SDM_DIN_SHIFT);

	/* exit slowdown mode */
	FUNC4(device, GPCPLL_NDIV_SLOWDOWN,
		FUNC0(GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT) |
		FUNC0(GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT), 0);
	FUNC5(device, GPCPLL_NDIV_SLOWDOWN);

	return ret;
}
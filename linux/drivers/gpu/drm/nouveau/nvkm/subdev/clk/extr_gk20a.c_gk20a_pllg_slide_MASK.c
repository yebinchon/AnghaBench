#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct gk20a_pll {scalar_t__ n; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct gk20a_clk {TYPE_1__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GPCPLL_NDIV_SLOWDOWN ; 
 int /*<<< orphan*/  GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT ; 
 int /*<<< orphan*/  GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT ; 
 int /*<<< orphan*/  GPC_BCAST_NDIV_SLOWDOWN_DEBUG ; 
 int /*<<< orphan*/  GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct gk20a_clk*,struct gk20a_pll*) ; 
 int /*<<< orphan*/  FUNC2 (struct gk20a_clk*,struct gk20a_pll*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct nvkm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct gk20a_clk *clk, u32 n)
{
	struct nvkm_subdev *subdev = &clk->base.subdev;
	struct nvkm_device *device = subdev->device;
	struct gk20a_pll pll;
	int ret = 0;

	/* get old coefficients */
	FUNC1(clk, &pll);
	/* do nothing if NDIV is the same */
	if (n == pll.n)
		return 0;

	/* pll slowdown mode */
	FUNC3(device, GPCPLL_NDIV_SLOWDOWN,
		FUNC0(GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT),
		FUNC0(GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT));

	/* new ndiv ready for ramp */
	pll.n = n;
	FUNC6(1);
	FUNC2(clk, &pll);

	/* dynamic ramp to new ndiv */
	FUNC6(1);
	FUNC3(device, GPCPLL_NDIV_SLOWDOWN,
		  FUNC0(GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT),
		  FUNC0(GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT));

	/* wait for ramping to complete */
	if (FUNC5(device, 500, GPC_BCAST_NDIV_SLOWDOWN_DEBUG,
		GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK,
		GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK) < 0)
		ret = -ETIMEDOUT;

	/* exit slowdown mode */
	FUNC3(device, GPCPLL_NDIV_SLOWDOWN,
		FUNC0(GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT) |
		FUNC0(GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT), 0);
	FUNC4(device, GPCPLL_NDIV_SLOWDOWN);

	return ret;
}
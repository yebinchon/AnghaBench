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
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_clk {TYPE_1__ subdev; } ;
struct gm20b_clk {int /*<<< orphan*/  base; } ;
struct gk20a_pll {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPCPLL_CFG ; 
 int /*<<< orphan*/  GPCPLL_CFG_IDDQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct gk20a_pll*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct gk20a_pll*) ; 
 struct gm20b_clk* FUNC3 (struct nvkm_clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct gm20b_clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct gm20b_clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct nvkm_clk *base)
{
	struct nvkm_device *device = base->subdev.device;
	struct gm20b_clk *clk = FUNC3(base);

	/* slide to VCO min */
	if (FUNC0(&clk->base)) {
		struct gk20a_pll pll;
		u32 n_lo;

		FUNC2(&clk->base, &pll);
		n_lo = FUNC1(&clk->base, &pll);
		FUNC5(clk, n_lo);
	}

	FUNC4(clk);

	/* set IDDQ */
	FUNC6(device, GPCPLL_CFG, GPCPLL_CFG_IDDQ, 1);
}
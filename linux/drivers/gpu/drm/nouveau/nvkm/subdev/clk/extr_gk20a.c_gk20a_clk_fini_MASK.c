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
struct gk20a_pll {int dummy; } ;
struct gk20a_clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPCPLL_CFG ; 
 int /*<<< orphan*/  GPCPLL_CFG_IDDQ ; 
 struct gk20a_clk* FUNC0 (struct nvkm_clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct gk20a_clk*) ; 
 scalar_t__ FUNC2 (struct gk20a_clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct gk20a_clk*,struct gk20a_pll*) ; 
 int /*<<< orphan*/  FUNC4 (struct gk20a_clk*,struct gk20a_pll*) ; 
 int /*<<< orphan*/  FUNC5 (struct gk20a_clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC7(struct nvkm_clk *base)
{
	struct nvkm_device *device = base->subdev.device;
	struct gk20a_clk *clk = FUNC0(base);

	/* slide to VCO min */
	if (FUNC2(clk)) {
		struct gk20a_pll pll;
		u32 n_lo;

		FUNC4(clk, &pll);
		n_lo = FUNC3(clk, &pll);
		FUNC5(clk, n_lo);
	}

	FUNC1(clk);

	/* set IDDQ */
	FUNC6(device, GPCPLL_CFG, GPCPLL_CFG_IDDQ, 1);
}
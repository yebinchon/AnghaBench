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
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct gk20a_pll {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct gk20a_clk {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPC2CLK_OUT ; 
 int GPC2CLK_OUT_VCODIV1 ; 
 int GPC2CLK_OUT_VCODIV2 ; 
 int /*<<< orphan*/  GPC2CLK_OUT_VCODIV_MASK ; 
 int GPC2CLK_OUT_VCODIV_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct gk20a_clk*) ; 
 int FUNC1 (struct gk20a_clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct gk20a_clk*,struct gk20a_pll*) ; 
 int /*<<< orphan*/  FUNC3 (struct gk20a_clk*,struct gk20a_pll const*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct gk20a_clk *clk, const struct gk20a_pll *pll)
{
	struct nvkm_subdev *subdev = &clk->base.subdev;
	struct nvkm_device *device = subdev->device;
	struct gk20a_pll cur_pll;
	int ret;

	FUNC2(clk, &cur_pll);

	/* split VCO-to-bypass jump in half by setting out divider 1:2 */
	FUNC4(device, GPC2CLK_OUT, GPC2CLK_OUT_VCODIV_MASK,
		  GPC2CLK_OUT_VCODIV2 << GPC2CLK_OUT_VCODIV_SHIFT);
	/* Intentional 2nd write to assure linear divider operation */
	FUNC4(device, GPC2CLK_OUT, GPC2CLK_OUT_VCODIV_MASK,
		  GPC2CLK_OUT_VCODIV2 << GPC2CLK_OUT_VCODIV_SHIFT);
	FUNC5(device, GPC2CLK_OUT);
	FUNC6(2);

	FUNC0(clk);

	FUNC3(clk, pll);

	ret = FUNC1(clk);
	if (ret)
		return ret;

	/* restore out divider 1:1 */
	FUNC6(2);
	FUNC4(device, GPC2CLK_OUT, GPC2CLK_OUT_VCODIV_MASK,
		  GPC2CLK_OUT_VCODIV1 << GPC2CLK_OUT_VCODIV_SHIFT);
	/* Intentional 2nd write to assure linear divider operation */
	FUNC4(device, GPC2CLK_OUT, GPC2CLK_OUT_VCODIV_MASK,
		  GPC2CLK_OUT_VCODIV1 << GPC2CLK_OUT_VCODIV_SHIFT);
	FUNC5(device, GPC2CLK_OUT);

	return 0;
}
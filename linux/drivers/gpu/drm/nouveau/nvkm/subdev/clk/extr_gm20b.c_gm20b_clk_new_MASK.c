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
struct nvkm_subdev {int dummy; } ;
struct nvkm_device_tegra {scalar_t__ gpu_speedo_id; } ;
struct nvkm_device {TYPE_1__* func; } ;
struct nvkm_clk {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {int parent_rate; int /*<<< orphan*/  div_to_pl; int /*<<< orphan*/  pl_to_div; struct nvkm_clk base; } ;
struct gm20b_clk {int /*<<< orphan*/ * dvfs_params; TYPE_2__ base; } ;
struct gk20a_clk_pllg_params {scalar_t__ max_m; scalar_t__ min_m; int /*<<< orphan*/  max_u; } ;
struct TYPE_3__ {struct nvkm_device_tegra* (* tegra ) (struct nvkm_device*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KHZ ; 
 int /*<<< orphan*/  div_to_pl ; 
 int FUNC1 (struct nvkm_device*,int,int /*<<< orphan*/ *,struct gk20a_clk_pllg_params*,TYPE_2__*) ; 
 int /*<<< orphan*/  gm20b_clk ; 
 int FUNC2 (struct gm20b_clk*) ; 
 int FUNC3 (struct gm20b_clk*) ; 
 int FUNC4 (struct nvkm_device*,int,struct nvkm_clk**) ; 
 int /*<<< orphan*/  gm20b_dvfs_params ; 
 struct gk20a_clk_pllg_params gm20b_pllg_params ; 
 int /*<<< orphan*/  FUNC5 (struct gm20b_clk*) ; 
 struct gm20b_clk* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  pl_to_div ; 
 struct nvkm_device_tegra* FUNC8 (struct nvkm_device*) ; 

int
FUNC9(struct nvkm_device *device, int index, struct nvkm_clk **pclk)
{
	struct nvkm_device_tegra *tdev = device->func->tegra(device);
	struct gm20b_clk *clk;
	struct nvkm_subdev *subdev;
	struct gk20a_clk_pllg_params *clk_params;
	int ret;

	/* Speedo 0 GPUs cannot use noise-aware PLL */
	if (tdev->gpu_speedo_id == 0)
		return FUNC4(device, index, pclk);

	/* Speedo >= 1, use NAPLL */
	clk = FUNC6(sizeof(*clk) + sizeof(*clk_params), GFP_KERNEL);
	if (!clk)
		return -ENOMEM;
	*pclk = &clk->base.base;
	subdev = &clk->base.base.subdev;

	/* duplicate the clock parameters since we will patch them below */
	clk_params = (void *) (clk + 1);
	*clk_params = gm20b_pllg_params;
	ret = FUNC1(device, index, &gm20b_clk, clk_params,
			     &clk->base);
	if (ret)
		return ret;

	/*
	 * NAPLL can only work with max_u, clamp the m range so
	 * gk20a_pllg_calc_mnp always uses it
	 */
	clk_params->max_m = clk_params->min_m = FUNC0(clk_params->max_u,
						(clk->base.parent_rate / KHZ));
	if (clk_params->max_m == 0) {
		FUNC7(subdev, "cannot use NAPLL, using legacy clock...\n");
		FUNC5(clk);
		return FUNC4(device, index, pclk);
	}

	clk->base.pl_to_div = pl_to_div;
	clk->base.div_to_pl = div_to_pl;

	clk->dvfs_params = &gm20b_dvfs_params;

	ret = FUNC2(clk);
	/*
	 * we will calibrate during init - should never happen on
	 * prod parts
	 */
	if (ret)
		FUNC7(subdev, "no fused calibration parameters\n");

	ret = FUNC3(clk);
	if (ret)
		return ret;

	return 0;
}
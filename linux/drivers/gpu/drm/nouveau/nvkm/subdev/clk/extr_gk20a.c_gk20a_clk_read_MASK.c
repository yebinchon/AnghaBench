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
struct nvkm_device {int crystal; } ;
struct nvkm_clk {int dummy; } ;
struct gk20a_pll {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct gk20a_clk {TYPE_1__ base; } ;
typedef  enum nv_clk_src { ____Placeholder_nv_clk_src } nv_clk_src ;

/* Variables and functions */
 int EINVAL ; 
 int GK20A_CLK_GPC_MDIV ; 
 struct gk20a_clk* FUNC0 (struct nvkm_clk*) ; 
 int FUNC1 (struct gk20a_clk*,struct gk20a_pll*) ; 
 int /*<<< orphan*/  FUNC2 (struct gk20a_clk*,struct gk20a_pll*) ; 
#define  nv_clk_src_crystal 129 
#define  nv_clk_src_gpc 128 
 int /*<<< orphan*/  FUNC3 (struct nvkm_subdev*,char*,int) ; 

int
FUNC4(struct nvkm_clk *base, enum nv_clk_src src)
{
	struct gk20a_clk *clk = FUNC0(base);
	struct nvkm_subdev *subdev = &clk->base.subdev;
	struct nvkm_device *device = subdev->device;
	struct gk20a_pll pll;

	switch (src) {
	case nv_clk_src_crystal:
		return device->crystal;
	case nv_clk_src_gpc:
		FUNC2(clk, &pll);
		return FUNC1(clk, &pll) / GK20A_CLK_GPC_MDIV;
	default:
		FUNC3(subdev, "invalid clock source %d\n", src);
		return -EINVAL;
	}
}
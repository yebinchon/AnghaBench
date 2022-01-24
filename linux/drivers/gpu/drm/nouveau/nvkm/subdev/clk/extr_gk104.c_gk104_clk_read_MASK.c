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
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct gk104_clk {TYPE_1__ base; } ;
typedef  enum nv_clk_src { ____Placeholder_nv_clk_src } nv_clk_src ;

/* Variables and functions */
 int EINVAL ; 
 struct gk104_clk* FUNC0 (struct nvkm_clk*) ; 
#define  nv_clk_src_crystal 137 
#define  nv_clk_src_gpc 136 
#define  nv_clk_src_href 135 
#define  nv_clk_src_hubk01 134 
#define  nv_clk_src_hubk06 133 
#define  nv_clk_src_hubk07 132 
#define  nv_clk_src_mem 131 
#define  nv_clk_src_pmu 130 
#define  nv_clk_src_rop 129 
#define  nv_clk_src_vdec 128 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,int) ; 
 int FUNC2 (struct gk104_clk*,int) ; 
 int FUNC3 (struct gk104_clk*) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_clk *base, enum nv_clk_src src)
{
	struct gk104_clk *clk = FUNC0(base);
	struct nvkm_subdev *subdev = &clk->base.subdev;
	struct nvkm_device *device = subdev->device;

	switch (src) {
	case nv_clk_src_crystal:
		return device->crystal;
	case nv_clk_src_href:
		return 100000;
	case nv_clk_src_mem:
		return FUNC3(clk);
	case nv_clk_src_gpc:
		return FUNC2(clk, 0x00);
	case nv_clk_src_rop:
		return FUNC2(clk, 0x01);
	case nv_clk_src_hubk07:
		return FUNC2(clk, 0x02);
	case nv_clk_src_hubk06:
		return FUNC2(clk, 0x07);
	case nv_clk_src_hubk01:
		return FUNC2(clk, 0x08);
	case nv_clk_src_pmu:
		return FUNC2(clk, 0x0c);
	case nv_clk_src_vdec:
		return FUNC2(clk, 0x0e);
	default:
		FUNC1(subdev, "invalid clock source %d\n", src);
		return -EINVAL;
	}
}
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
struct gf100_clk {TYPE_1__ base; } ;
typedef  enum nv_clk_src { ____Placeholder_nv_clk_src } nv_clk_src ;

/* Variables and functions */
 int EINVAL ; 
 struct gf100_clk* FUNC0 (struct nvkm_clk*) ; 
#define  nv_clk_src_copy 144 
#define  nv_clk_src_crystal 143 
#define  nv_clk_src_gpc 142 
#define  nv_clk_src_href 141 
#define  nv_clk_src_hubk01 140 
#define  nv_clk_src_hubk06 139 
#define  nv_clk_src_hubk07 138 
#define  nv_clk_src_mdiv 137 
#define  nv_clk_src_mem 136 
#define  nv_clk_src_mpll 135 
#define  nv_clk_src_mpllsrc 134 
#define  nv_clk_src_mpllsrcref 133 
#define  nv_clk_src_pmu 132 
#define  nv_clk_src_rop 131 
#define  nv_clk_src_sppll0 130 
#define  nv_clk_src_sppll1 129 
#define  nv_clk_src_vdec 128 
 int FUNC1 (TYPE_1__*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*,int) ; 
 int FUNC3 (struct nvkm_device*,int) ; 
 int FUNC4 (struct gf100_clk*,int) ; 
 int FUNC5 (struct gf100_clk*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct gf100_clk*,int) ; 

__attribute__((used)) static int
FUNC7(struct nvkm_clk *base, enum nv_clk_src src)
{
	struct gf100_clk *clk = FUNC0(base);
	struct nvkm_subdev *subdev = &clk->base.subdev;
	struct nvkm_device *device = subdev->device;

	switch (src) {
	case nv_clk_src_crystal:
		return device->crystal;
	case nv_clk_src_href:
		return 100000;
	case nv_clk_src_sppll0:
		return FUNC6(clk, 0x00e800);
	case nv_clk_src_sppll1:
		return FUNC6(clk, 0x00e820);

	case nv_clk_src_mpllsrcref:
		return FUNC5(clk, 0, 0x137320, 0x137330);
	case nv_clk_src_mpllsrc:
		return FUNC6(clk, 0x132020);
	case nv_clk_src_mpll:
		return FUNC6(clk, 0x132000);
	case nv_clk_src_mdiv:
		return FUNC5(clk, 0, 0x137300, 0x137310);
	case nv_clk_src_mem:
		if (FUNC3(device, 0x1373f0) & 0x00000002)
			return FUNC1(&clk->base, nv_clk_src_mpll);
		return FUNC1(&clk->base, nv_clk_src_mdiv);

	case nv_clk_src_gpc:
		return FUNC4(clk, 0x00);
	case nv_clk_src_rop:
		return FUNC4(clk, 0x01);
	case nv_clk_src_hubk07:
		return FUNC4(clk, 0x02);
	case nv_clk_src_hubk06:
		return FUNC4(clk, 0x07);
	case nv_clk_src_hubk01:
		return FUNC4(clk, 0x08);
	case nv_clk_src_copy:
		return FUNC4(clk, 0x09);
	case nv_clk_src_pmu:
		return FUNC4(clk, 0x0c);
	case nv_clk_src_vdec:
		return FUNC4(clk, 0x0e);
	default:
		FUNC2(subdev, "invalid clock source %d\n", src);
		return -EINVAL;
	}
}
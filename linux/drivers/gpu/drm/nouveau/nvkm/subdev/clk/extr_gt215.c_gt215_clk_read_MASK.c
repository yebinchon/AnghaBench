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
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int crystal; } ;
struct nvkm_clk {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct gt215_clk {TYPE_1__ base; } ;
typedef  enum nv_clk_src { ____Placeholder_nv_clk_src } nv_clk_src ;

/* Variables and functions */
 int EINVAL ; 
 struct gt215_clk* FUNC0 (struct nvkm_clk*) ; 
#define  nv_clk_src_core 136 
#define  nv_clk_src_core_intm 135 
#define  nv_clk_src_crystal 134 
#define  nv_clk_src_disp 133 
#define  nv_clk_src_host 132 
#define  nv_clk_src_mem 131 
#define  nv_clk_src_pmu 130 
#define  nv_clk_src_shader 129 
#define  nv_clk_src_vdec 128 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,int) ; 
 int FUNC2 (struct nvkm_device*,int) ; 
 int FUNC3 (struct gt215_clk*,int,int) ; 
 int FUNC4 (struct gt215_clk*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct nvkm_clk *base, enum nv_clk_src src)
{
	struct gt215_clk *clk = FUNC0(base);
	struct nvkm_subdev *subdev = &clk->base.subdev;
	struct nvkm_device *device = subdev->device;
	u32 hsrc;

	switch (src) {
	case nv_clk_src_crystal:
		return device->crystal;
	case nv_clk_src_core:
	case nv_clk_src_core_intm:
		return FUNC4(clk, 0x00, 0x4200);
	case nv_clk_src_shader:
		return FUNC4(clk, 0x01, 0x4220);
	case nv_clk_src_mem:
		return FUNC4(clk, 0x02, 0x4000);
	case nv_clk_src_disp:
		return FUNC3(clk, 0x20, false);
	case nv_clk_src_vdec:
		return FUNC3(clk, 0x21, false);
	case nv_clk_src_pmu:
		return FUNC3(clk, 0x25, false);
	case nv_clk_src_host:
		hsrc = (FUNC2(device, 0xc040) & 0x30000000) >> 28;
		switch (hsrc) {
		case 0:
			return FUNC3(clk, 0x1d, false);
		case 2:
		case 3:
			return 277000;
		default:
			FUNC1(subdev, "unknown HOST clock source %d\n", hsrc);
			return -EINVAL;
		}
	default:
		FUNC1(subdev, "invalid clock source %d\n", src);
		return -EINVAL;
	}

	return 0;
}
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
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct nv50_clk {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  nv_clk_src_crystal ; 
 int /*<<< orphan*/  nv_clk_src_href ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,int) ; 
 int FUNC2 (struct nvkm_device*,int) ; 
 int FUNC3 (struct nv50_clk*,int) ; 

__attribute__((used)) static u32
FUNC4(struct nv50_clk *clk, u32 base)
{
	struct nvkm_subdev *subdev = &clk->base.subdev;
	struct nvkm_device *device = subdev->device;
	u32 src, mast = FUNC2(device, 0x00c040);

	switch (base) {
	case 0x004028:
		src = !!(mast & 0x00200000);
		break;
	case 0x004020:
		src = !!(mast & 0x00400000);
		break;
	case 0x004008:
		src = !!(mast & 0x00010000);
		break;
	case 0x004030:
		src = !!(mast & 0x02000000);
		break;
	case 0x00e810:
		return FUNC0(&clk->base, nv_clk_src_crystal);
	default:
		FUNC1(subdev, "bad pll %06x\n", base);
		return 0;
	}

	if (src)
		return FUNC0(&clk->base, nv_clk_src_href);

	return FUNC3(clk, base);
}
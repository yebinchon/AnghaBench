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
typedef  int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct mcp77_clk {TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  nv_clk_src_href ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvkm_device*,int) ; 

__attribute__((used)) static u32
FUNC2(struct mcp77_clk *clk, u32 base)
{
	struct nvkm_device *device = clk->base.subdev.device;
	u32 ctrl = FUNC1(device, base + 0);
	u32 coef = FUNC1(device, base + 4);
	u32 ref = FUNC0(&clk->base, nv_clk_src_href);
	u32 post_div = 0;
	u32 clock = 0;
	int N1, M1;

	switch (base){
	case 0x4020:
		post_div = 1 << ((FUNC1(device, 0x4070) & 0x000f0000) >> 16);
		break;
	case 0x4028:
		post_div = (FUNC1(device, 0x4040) & 0x000f0000) >> 16;
		break;
	default:
		break;
	}

	N1 = (coef & 0x0000ff00) >> 8;
	M1 = (coef & 0x000000ff);
	if ((ctrl & 0x80000000) && M1) {
		clock = ref * N1 / M1;
		clock = clock / post_div;
	}

	return clock;
}
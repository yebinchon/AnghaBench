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
struct nvkm_device {int chipset; } ;
struct nvkm_clk_func {int dummy; } ;
struct nvkm_clk {int dummy; } ;
struct TYPE_2__ {void* r_mast; void* r_divs; void** r_nvpll; void** r_spll; void* r_fifo; } ;
struct nv50_clk {TYPE_1__ hwsq; struct nvkm_clk base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int) ; 
 struct nv50_clk* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvkm_clk_func const*,struct nvkm_device*,int,int,struct nvkm_clk*) ; 

int
FUNC3(const struct nvkm_clk_func *func, struct nvkm_device *device,
	      int index, bool allow_reclock, struct nvkm_clk **pclk)
{
	struct nv50_clk *clk;
	int ret;

	if (!(clk = FUNC1(sizeof(*clk), GFP_KERNEL)))
		return -ENOMEM;
	ret = FUNC2(func, device, index, allow_reclock, &clk->base);
	*pclk = &clk->base;
	if (ret)
		return ret;

	clk->hwsq.r_fifo = FUNC0(0x002504);
	clk->hwsq.r_spll[0] = FUNC0(0x004020);
	clk->hwsq.r_spll[1] = FUNC0(0x004024);
	clk->hwsq.r_nvpll[0] = FUNC0(0x004028);
	clk->hwsq.r_nvpll[1] = FUNC0(0x00402c);
	switch (device->chipset) {
	case 0x92:
	case 0x94:
	case 0x96:
		clk->hwsq.r_divs = FUNC0(0x004800);
		break;
	default:
		clk->hwsq.r_divs = FUNC0(0x004700);
		break;
	}
	clk->hwsq.r_mast = FUNC0(0x00c040);
	return 0;
}
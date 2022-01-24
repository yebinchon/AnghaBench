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
struct nvkm_ram {int ranks; int /*<<< orphan*/  part_mask; } ;
struct nvkm_fb {int dummy; } ;
struct TYPE_2__ {void** r_gpio; void** r_mr; void** r_timing; void* r_0x611200; void* r_0x100e24; void* r_0x100e20; int /*<<< orphan*/  r_0x100da0; void* r_0x10071c; void* r_0x100718; void* r_0x100714; void* r_0x100710; void* r_0x1005a4; void* r_0x1005a0; void* r_0x10053c; void* r_0x1002dc; void* r_0x1002d4; void* r_0x1002d0; void* r_0x10021c; void* r_0x100210; void* r_0x100200; void* r_0x00400c; void* r_0x004008; void* r_0x00c040; void* r_0x002504; } ;
struct nv50_ram {TYPE_1__ hwsq; struct nvkm_ram base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 struct nv50_ram* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct nvkm_fb*,struct nvkm_ram*) ; 
 int /*<<< orphan*/  nv50_ram_func ; 

int
FUNC5(struct nvkm_fb *fb, struct nvkm_ram **pram)
{
	struct nv50_ram *ram;
	int ret, i;

	if (!(ram = FUNC3(sizeof(*ram), GFP_KERNEL)))
		return -ENOMEM;
	*pram = &ram->base;

	ret = FUNC4(&nv50_ram_func, fb, &ram->base);
	if (ret)
		return ret;

	ram->hwsq.r_0x002504 = FUNC0(0x002504);
	ram->hwsq.r_0x00c040 = FUNC0(0x00c040);
	ram->hwsq.r_0x004008 = FUNC0(0x004008);
	ram->hwsq.r_0x00400c = FUNC0(0x00400c);
	ram->hwsq.r_0x100200 = FUNC0(0x100200);
	ram->hwsq.r_0x100210 = FUNC0(0x100210);
	ram->hwsq.r_0x10021c = FUNC0(0x10021c);
	ram->hwsq.r_0x1002d0 = FUNC0(0x1002d0);
	ram->hwsq.r_0x1002d4 = FUNC0(0x1002d4);
	ram->hwsq.r_0x1002dc = FUNC0(0x1002dc);
	ram->hwsq.r_0x10053c = FUNC0(0x10053c);
	ram->hwsq.r_0x1005a0 = FUNC0(0x1005a0);
	ram->hwsq.r_0x1005a4 = FUNC0(0x1005a4);
	ram->hwsq.r_0x100710 = FUNC0(0x100710);
	ram->hwsq.r_0x100714 = FUNC0(0x100714);
	ram->hwsq.r_0x100718 = FUNC0(0x100718);
	ram->hwsq.r_0x10071c = FUNC0(0x10071c);
	ram->hwsq.r_0x100da0 = FUNC2(0x100da0, 4, ram->base.part_mask);
	ram->hwsq.r_0x100e20 = FUNC0(0x100e20);
	ram->hwsq.r_0x100e24 = FUNC0(0x100e24);
	ram->hwsq.r_0x611200 = FUNC0(0x611200);

	for (i = 0; i < 9; i++)
		ram->hwsq.r_timing[i] = FUNC0(0x100220 + (i * 0x04));

	if (ram->base.ranks > 1) {
		ram->hwsq.r_mr[0] = FUNC1(0x1002c0, 0x1002c8);
		ram->hwsq.r_mr[1] = FUNC1(0x1002c4, 0x1002cc);
		ram->hwsq.r_mr[2] = FUNC1(0x1002e0, 0x1002e8);
		ram->hwsq.r_mr[3] = FUNC1(0x1002e4, 0x1002ec);
	} else {
		ram->hwsq.r_mr[0] = FUNC0(0x1002c0);
		ram->hwsq.r_mr[1] = FUNC0(0x1002c4);
		ram->hwsq.r_mr[2] = FUNC0(0x1002e0);
		ram->hwsq.r_mr[3] = FUNC0(0x1002e4);
	}

	ram->hwsq.r_gpio[0] = FUNC0(0x00e104);
	ram->hwsq.r_gpio[1] = FUNC0(0x00e108);
	ram->hwsq.r_gpio[2] = FUNC0(0x00e120);
	ram->hwsq.r_gpio[3] = FUNC0(0x00e124);

	return 0;
}
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
struct TYPE_2__ {void** r_gpio; void** r_mr; void* r_0x611200; void* r_0x111400; void* r_0x1111e0; void* r_0x111104; void* r_0x111100; void* r_0x1110e0; void* r_0x10f804; void* r_0x100da0; void* r_0x1007e0; void* r_0x1007a0; void* r_0x100760; void* r_0x100720; void* r_0x10071c; void* r_0x100718; void* r_0x100714; void* r_0x100700; void* r_0x1005a4; void* r_0x1005a0; void* r_0x10053c; void* r_0x1002dc; void* r_0x1002d4; void* r_0x1002d0; void* r_0x100264; void** r_0x100220; void* r_0x100210; void* r_0x100200; void* r_0x100080; void* r_0x004168; void* r_0x004128; void* r_0x004018; void* r_0x004004; void* r_0x004000; void* r_0x002504; void* r_0x001700; void* r_0x001610; } ;
struct gt215_ram {TYPE_1__ fuc; struct nvkm_ram base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  gt215_ram_func ; 
 struct gt215_ram* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct nvkm_fb*,struct nvkm_ram*) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int,int) ; 
 void* FUNC4 (int,int,int /*<<< orphan*/ ) ; 

int
FUNC5(struct nvkm_fb *fb, struct nvkm_ram **pram)
{
	struct gt215_ram *ram;
	int ret, i;

	if (!(ram = FUNC0(sizeof(*ram), GFP_KERNEL)))
		return -ENOMEM;
	*pram = &ram->base;

	ret = FUNC1(&gt215_ram_func, fb, &ram->base);
	if (ret)
		return ret;

	ram->fuc.r_0x001610 = FUNC2(0x001610);
	ram->fuc.r_0x001700 = FUNC2(0x001700);
	ram->fuc.r_0x002504 = FUNC2(0x002504);
	ram->fuc.r_0x004000 = FUNC2(0x004000);
	ram->fuc.r_0x004004 = FUNC2(0x004004);
	ram->fuc.r_0x004018 = FUNC2(0x004018);
	ram->fuc.r_0x004128 = FUNC2(0x004128);
	ram->fuc.r_0x004168 = FUNC2(0x004168);
	ram->fuc.r_0x100080 = FUNC2(0x100080);
	ram->fuc.r_0x100200 = FUNC2(0x100200);
	ram->fuc.r_0x100210 = FUNC2(0x100210);
	for (i = 0; i < 9; i++)
		ram->fuc.r_0x100220[i] = FUNC2(0x100220 + (i * 4));
	ram->fuc.r_0x100264 = FUNC2(0x100264);
	ram->fuc.r_0x1002d0 = FUNC2(0x1002d0);
	ram->fuc.r_0x1002d4 = FUNC2(0x1002d4);
	ram->fuc.r_0x1002dc = FUNC2(0x1002dc);
	ram->fuc.r_0x10053c = FUNC2(0x10053c);
	ram->fuc.r_0x1005a0 = FUNC2(0x1005a0);
	ram->fuc.r_0x1005a4 = FUNC2(0x1005a4);
	ram->fuc.r_0x100700 = FUNC2(0x100700);
	ram->fuc.r_0x100714 = FUNC2(0x100714);
	ram->fuc.r_0x100718 = FUNC2(0x100718);
	ram->fuc.r_0x10071c = FUNC2(0x10071c);
	ram->fuc.r_0x100720 = FUNC2(0x100720);
	ram->fuc.r_0x100760 = FUNC4(0x100760, 4, ram->base.part_mask);
	ram->fuc.r_0x1007a0 = FUNC4(0x1007a0, 4, ram->base.part_mask);
	ram->fuc.r_0x1007e0 = FUNC4(0x1007e0, 4, ram->base.part_mask);
	ram->fuc.r_0x100da0 = FUNC4(0x100da0, 4, ram->base.part_mask);
	ram->fuc.r_0x10f804 = FUNC2(0x10f804);
	ram->fuc.r_0x1110e0 = FUNC4(0x1110e0, 4, ram->base.part_mask);
	ram->fuc.r_0x111100 = FUNC2(0x111100);
	ram->fuc.r_0x111104 = FUNC2(0x111104);
	ram->fuc.r_0x1111e0 = FUNC2(0x1111e0);
	ram->fuc.r_0x111400 = FUNC2(0x111400);
	ram->fuc.r_0x611200 = FUNC2(0x611200);

	if (ram->base.ranks > 1) {
		ram->fuc.r_mr[0] = FUNC3(0x1002c0, 0x1002c8);
		ram->fuc.r_mr[1] = FUNC3(0x1002c4, 0x1002cc);
		ram->fuc.r_mr[2] = FUNC3(0x1002e0, 0x1002e8);
		ram->fuc.r_mr[3] = FUNC3(0x1002e4, 0x1002ec);
	} else {
		ram->fuc.r_mr[0] = FUNC2(0x1002c0);
		ram->fuc.r_mr[1] = FUNC2(0x1002c4);
		ram->fuc.r_mr[2] = FUNC2(0x1002e0);
		ram->fuc.r_mr[3] = FUNC2(0x1002e4);
	}
	ram->fuc.r_gpio[0] = FUNC2(0x00e104);
	ram->fuc.r_gpio[1] = FUNC2(0x00e108);
	ram->fuc.r_gpio[2] = FUNC2(0x00e120);
	ram->fuc.r_gpio[3] = FUNC2(0x00e124);

	return 0;
}
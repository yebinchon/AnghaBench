#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int ramcfg_11_03_c0; int ramcfg_11_03_30; int rammap_11_11_0c; int ramcfg_11_09; int* timing; int ramcfg_11_03_0f; int timing_20_2c_003f; int timing_20_2c_1fc0; int timing_20_30_f8; scalar_t__ rammap_11_08_01; scalar_t__ ramcfg_DLLoff; int /*<<< orphan*/  ramcfg_11_07_80; scalar_t__ rammap_11_08_0c; scalar_t__ ramcfg_11_03_f0; int /*<<< orphan*/  ramcfg_11_01_04; scalar_t__ ramcfg_11_08_01; scalar_t__ ramcfg_11_07_08; scalar_t__ ramcfg_11_07_10; scalar_t__ ramcfg_11_02_40; scalar_t__ ramcfg_11_02_80; scalar_t__ ramcfg_11_07_40; int /*<<< orphan*/  ramcfg_11_02_04; int /*<<< orphan*/  ramcfg_11_02_08; } ;
struct nvkm_ram_data {TYPE_4__ bios; } ;
struct gk104_ramfuc {int* r_func2E; int* r_funcMV; } ;
struct TYPE_7__ {int* mr; TYPE_2__* fb; struct nvkm_ram_data* next; } ;
struct gk104_ram {int P1; int N1; int M1; int fN1; int mode; TYPE_3__ base; struct gk104_ramfuc fuc; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVKM_ENGINE_DISP ; 
 int gpio2E ; 
 int gpioMV ; 
 int gpiotrig ; 
 int* mr ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gk104_ramfuc*) ; 
 int /*<<< orphan*/  FUNC2 (struct gk104_ramfuc*) ; 
 int /*<<< orphan*/  FUNC3 (struct gk104_ramfuc*) ; 
 scalar_t__ FUNC4 (struct gk104_ramfuc*,int) ; 
 int FUNC5 (struct gk104_ramfuc*,int,int,int const) ; 
 int /*<<< orphan*/  FUNC6 (struct gk104_ramfuc*,int) ; 
 int FUNC7 (struct gk104_ramfuc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gk104_ramfuc*) ; 
 int /*<<< orphan*/  FUNC9 (struct gk104_ramfuc*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct gk104_ramfuc*,int,int const) ; 

__attribute__((used)) static int
FUNC11(struct gk104_ram *ram, u32 freq)
{
	struct gk104_ramfuc *fuc = &ram->fuc;
	const u32 rcoef = ((  ram->P1 << 16) | (ram->N1 << 8) | ram->M1);
	const u32 runk0 = ram->fN1 << 16;
	const u32 runk1 = ram->fN1;
	struct nvkm_ram_data *next = ram->base.next;
	int vc = !next->bios.ramcfg_11_02_08;
	int mv = !next->bios.ramcfg_11_02_04;
	u32 mask, data;

	FUNC5(fuc, 0x10f808, 0x40000000, 0x40000000);
	FUNC3(fuc);

	if (FUNC0(ram->base.fb->subdev.device, NVKM_ENGINE_DISP))
		FUNC10(fuc, 0x62c000, 0x0f0f0000);

	if (vc == 1 && FUNC4(fuc, gpio2E)) {
		u32 temp  = FUNC5(fuc, gpio2E, 0x3000, fuc->r_func2E[1]);
		if (temp != FUNC7(fuc, gpio2E)) {
			FUNC10(fuc, gpiotrig, 1);
			FUNC6(fuc, 20000);
		}
	}

	FUNC5(fuc, 0x10f200, 0x00000800, 0x00000000);
	if (next->bios.ramcfg_11_03_f0)
		FUNC5(fuc, 0x10f808, 0x04000000, 0x04000000);

	FUNC10(fuc, 0x10f314, 0x00000001); /* PRECHARGE */

	if (next->bios.ramcfg_DLLoff)
		FUNC1(fuc);

	FUNC10(fuc, 0x10f210, 0x00000000); /* REFRESH_AUTO = 0 */
	FUNC10(fuc, 0x10f310, 0x00000001); /* REFRESH */
	FUNC5(fuc, 0x10f200, 0x80000000, 0x80000000);
	FUNC10(fuc, 0x10f310, 0x00000001); /* REFRESH */
	FUNC5(fuc, 0x10f200, 0x80000000, 0x00000000);
	FUNC6(fuc, 1000);

	FUNC10(fuc, 0x10f090, 0x00000060);
	FUNC10(fuc, 0x10f090, 0xc000007e);

	/*XXX: there does appear to be some kind of condition here, simply
	 *     modifying these bits in the vbios from the default pl0
	 *     entries shows no change.  however, the data does appear to
	 *     be correct and may be required for the transition back
	 */
	mask = 0x00010000;
	data = 0x00010000;

	if (1) {
		mask |= 0x800807e0;
		data |= 0x800807e0;
		switch (next->bios.ramcfg_11_03_c0) {
		case 3: data &= ~0x00000040; break;
		case 2: data &= ~0x00000100; break;
		case 1: data &= ~0x80000000; break;
		case 0: data &= ~0x00000400; break;
		}

		switch (next->bios.ramcfg_11_03_30) {
		case 3: data &= ~0x00000020; break;
		case 2: data &= ~0x00000080; break;
		case 1: data &= ~0x00080000; break;
		case 0: data &= ~0x00000200; break;
		}
	}

	if (next->bios.ramcfg_11_02_80)
		mask |= 0x03000000;
	if (next->bios.ramcfg_11_02_40)
		mask |= 0x00002000;
	if (next->bios.ramcfg_11_07_10)
		mask |= 0x00004000;
	if (next->bios.ramcfg_11_07_08)
		mask |= 0x00000003;
	else
		mask |= 0x14000000;
	FUNC5(fuc, 0x10f824, mask, data);

	FUNC5(fuc, 0x132040, 0x00010000, 0x00000000);

	FUNC5(fuc, 0x1373f4, 0x00000000, 0x00010010);
	data  = FUNC7(fuc, 0x1373ec) & ~0x00030000;
	data |= next->bios.ramcfg_11_03_30 << 16;
	FUNC10(fuc, 0x1373ec, data);
	FUNC5(fuc, 0x1373f4, 0x00000003, 0x00000000);
	FUNC5(fuc, 0x1373f4, 0x00000010, 0x00000000);

	/* (re)program refpll, if required */
	if ((FUNC7(fuc, 0x132024) & 0xffffffff) != rcoef ||
	    (FUNC7(fuc, 0x132034) & 0x0000ffff) != runk1) {
		FUNC5(fuc, 0x132000, 0x00000001, 0x00000000);
		FUNC5(fuc, 0x132020, 0x00000001, 0x00000000);
		FUNC10(fuc, 0x137320, 0x00000000);
		FUNC5(fuc, 0x132030, 0xffff0000, runk0);
		FUNC5(fuc, 0x132034, 0x0000ffff, runk1);
		FUNC10(fuc, 0x132024, rcoef);
		FUNC5(fuc, 0x132028, 0x00080000, 0x00080000);
		FUNC5(fuc, 0x132020, 0x00000001, 0x00000001);
		FUNC9(fuc, 0x137390, 0x00020000, 0x00020000, 64000);
		FUNC5(fuc, 0x132028, 0x00080000, 0x00000000);
	}

	FUNC5(fuc, 0x1373f4, 0x00000010, 0x00000010);
	FUNC5(fuc, 0x1373f4, 0x00000003, 0x00000001);
	FUNC5(fuc, 0x1373f4, 0x00010000, 0x00000000);

	if (FUNC4(fuc, gpioMV)) {
		u32 temp  = FUNC5(fuc, gpioMV, 0x3000, fuc->r_funcMV[mv]);
		if (temp != FUNC7(fuc, gpioMV)) {
			FUNC10(fuc, gpiotrig, 1);
			FUNC6(fuc, 64000);
		}
	}

	if (next->bios.ramcfg_11_02_40 ||
	    next->bios.ramcfg_11_07_10) {
		FUNC5(fuc, 0x132040, 0x00010000, 0x00010000);
		FUNC6(fuc, 20000);
	}

	if (ram->mode != 2) /*XXX*/ {
		if (next->bios.ramcfg_11_07_40)
			FUNC5(fuc, 0x10f670, 0x80000000, 0x80000000);
	}

	FUNC10(fuc, 0x10f65c, 0x00000011 * next->bios.rammap_11_11_0c);
	FUNC10(fuc, 0x10f6b8, 0x01010101 * next->bios.ramcfg_11_09);
	FUNC10(fuc, 0x10f6bc, 0x01010101 * next->bios.ramcfg_11_09);

	mask = 0x00010000;
	data = 0x00000000;
	if (!next->bios.ramcfg_11_02_80)
		data |= 0x03000000;
	if (!next->bios.ramcfg_11_02_40)
		data |= 0x00002000;
	if (!next->bios.ramcfg_11_07_10)
		data |= 0x00004000;
	if (!next->bios.ramcfg_11_07_08)
		data |= 0x00000003;
	else
		data |= 0x14000000;
	FUNC5(fuc, 0x10f824, mask, data);
	FUNC6(fuc, 1000);

	if (next->bios.ramcfg_11_08_01)
		data = 0x00100000;
	else
		data = 0x00000000;
	FUNC5(fuc, 0x10f82c, 0x00100000, data);

	/* PFB timing */
	FUNC5(fuc, 0x10f248, 0xffffffff, next->bios.timing[10]);
	FUNC5(fuc, 0x10f290, 0xffffffff, next->bios.timing[0]);
	FUNC5(fuc, 0x10f294, 0xffffffff, next->bios.timing[1]);
	FUNC5(fuc, 0x10f298, 0xffffffff, next->bios.timing[2]);
	FUNC5(fuc, 0x10f29c, 0xffffffff, next->bios.timing[3]);
	FUNC5(fuc, 0x10f2a0, 0xffffffff, next->bios.timing[4]);
	FUNC5(fuc, 0x10f2a4, 0xffffffff, next->bios.timing[5]);
	FUNC5(fuc, 0x10f2a8, 0xffffffff, next->bios.timing[6]);
	FUNC5(fuc, 0x10f2ac, 0xffffffff, next->bios.timing[7]);
	FUNC5(fuc, 0x10f2cc, 0xffffffff, next->bios.timing[8]);
	FUNC5(fuc, 0x10f2e8, 0xffffffff, next->bios.timing[9]);

	mask = 0x33f00000;
	data = 0x00000000;
	if (!next->bios.ramcfg_11_01_04)
		data |= 0x20200000;
	if (!next->bios.ramcfg_11_07_80)
		data |= 0x12800000;
	/*XXX: see note above about there probably being some condition
	 *     for the 10f824 stuff that uses ramcfg 3...
	 */
	if (next->bios.ramcfg_11_03_f0) {
		if (next->bios.rammap_11_08_0c) {
			if (!next->bios.ramcfg_11_07_80)
				mask |= 0x00000020;
			else
				data |= 0x00000020;
			mask |= 0x08000004;
		}
		data |= 0x04000000;
	} else {
		mask |= 0x44000020;
		data |= 0x08000004;
	}

	FUNC5(fuc, 0x10f808, mask, data);

	FUNC10(fuc, 0x10f870, 0x11111111 * next->bios.ramcfg_11_03_0f);

	FUNC5(fuc, 0x10f250, 0x000003f0, next->bios.timing_20_2c_003f << 4);

	data = (next->bios.timing[10] & 0x7f000000) >> 24;
	if (data < next->bios.timing_20_2c_1fc0)
		data = next->bios.timing_20_2c_1fc0;
	FUNC5(fuc, 0x10f24c, 0x7f000000, data << 24);

	FUNC5(fuc, 0x10f224, 0x001f0000, next->bios.timing_20_30_f8 << 16);

	FUNC10(fuc, 0x10f090, 0x4000007f);
	FUNC6(fuc, 1000);

	FUNC10(fuc, 0x10f314, 0x00000001); /* PRECHARGE */
	FUNC10(fuc, 0x10f310, 0x00000001); /* REFRESH */
	FUNC10(fuc, 0x10f210, 0x80000000); /* REFRESH_AUTO = 1 */
	FUNC6(fuc, 1000);

	if (!next->bios.ramcfg_DLLoff) {
		FUNC5(fuc, mr[1], 0x1, 0x0);
		FUNC2(fuc);
	}

	FUNC5(fuc, mr[2], 0x00000fff, ram->base.mr[2]);
	FUNC5(fuc, mr[1], 0xffffffff, ram->base.mr[1]);
	FUNC10(fuc, mr[0], ram->base.mr[0]);
	FUNC6(fuc, 1000);

	if (!next->bios.ramcfg_DLLoff) {
		FUNC2(fuc);
		FUNC6(fuc, 1000);
	}

	if (vc == 0 && FUNC4(fuc, gpio2E)) {
		u32 temp  = FUNC5(fuc, gpio2E, 0x3000, fuc->r_func2E[0]);
		if (temp != FUNC7(fuc, gpio2E)) {
			FUNC10(fuc, gpiotrig, 1);
			FUNC6(fuc, 20000);
		}
	}

	if (ram->mode != 2) {
		FUNC5(fuc, 0x10f830, 0x01000000, 0x01000000);
		FUNC5(fuc, 0x10f830, 0x01000000, 0x00000000);
	}

	FUNC5(fuc, 0x10f200, 0x80000000, 0x80000000);
	FUNC10(fuc, 0x10f318, 0x00000001); /* NOP? */
	FUNC5(fuc, 0x10f200, 0x80000000, 0x00000000);
	FUNC6(fuc, 1000);

	FUNC8(fuc);

	if (FUNC0(ram->base.fb->subdev.device, NVKM_ENGINE_DISP))
		FUNC10(fuc, 0x62c000, 0x0f0f0f00);

	if (next->bios.rammap_11_08_01)
		data = 0x00000800;
	else
		data = 0x00000000;
	FUNC5(fuc, 0x10f200, 0x00000800, data);
	return 0;
}
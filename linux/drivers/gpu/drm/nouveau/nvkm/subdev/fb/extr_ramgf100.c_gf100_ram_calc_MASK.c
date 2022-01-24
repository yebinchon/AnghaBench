#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_ram {int dummy; } ;
struct nvkm_device {struct nvkm_bios* bios; struct nvkm_clk* clk; } ;
struct nvkm_clk {int dummy; } ;
struct nvkm_bios {int dummy; } ;
struct nvbios_ramcfg {int dummy; } ;
struct gf100_ramfuc {int dummy; } ;
struct TYPE_6__ {int refclk; } ;
struct TYPE_4__ {TYPE_2__* fb; } ;
struct gf100_ram {TYPE_3__ mempll; TYPE_3__ refpll; TYPE_1__ base; struct gf100_ramfuc fuc; } ;
struct TYPE_5__ {struct nvkm_subdev subdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 struct gf100_ram* FUNC0 (struct nvkm_ram*) ; 
 int /*<<< orphan*/  FUNC1 (struct gf100_ramfuc*,int) ; 
 int FUNC2 (struct nvkm_subdev*,TYPE_3__*,int,int*,int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  nv_clk_src_sppll0 ; 
 int /*<<< orphan*/  nv_clk_src_sppll1 ; 
 int FUNC5 (struct nvkm_subdev*) ; 
 int FUNC6 (struct nvkm_bios*,int,int*,int*,int*,int*,struct nvbios_ramcfg*) ; 
 int FUNC7 (struct nvkm_bios*,int) ; 
 int FUNC8 (struct nvkm_bios*,int,int*,int*,int*,int*) ; 
 int FUNC9 (struct nvkm_clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_subdev*,char*) ; 
 int FUNC11 (struct gf100_ramfuc*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct gf100_ramfuc*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct gf100_ramfuc*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct gf100_ramfuc*,int) ; 
 int FUNC15 (struct gf100_ramfuc*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct gf100_ramfuc*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct gf100_ramfuc*,int,int) ; 

int
FUNC18(struct nvkm_ram *base, u32 freq)
{
	struct gf100_ram *ram = FUNC0(base);
	struct gf100_ramfuc *fuc = &ram->fuc;
	struct nvkm_subdev *subdev = &ram->base.fb->subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_clk *clk = device->clk;
	struct nvkm_bios *bios = device->bios;
	struct nvbios_ramcfg cfg;
	u8  ver, cnt, len, strap;
	struct {
		u32 data;
		u8  size;
	} rammap, ramcfg, timing;
	int ref, div, out;
	int from, mode;
	int N1, M1, P;
	int ret;

	/* lookup memory config data relevant to the target frequency */
	rammap.data = FUNC6(bios, freq / 1000, &ver, &rammap.size,
				      &cnt, &ramcfg.size, &cfg);
	if (!rammap.data || ver != 0x10 || rammap.size < 0x0e) {
		FUNC10(subdev, "invalid/missing rammap entry\n");
		return -EINVAL;
	}

	/* locate specific data set for the attached memory */
	strap = FUNC5(subdev);
	if (strap >= cnt) {
		FUNC10(subdev, "invalid ramcfg strap\n");
		return -EINVAL;
	}

	ramcfg.data = rammap.data + rammap.size + (strap * ramcfg.size);
	if (!ramcfg.data || ver != 0x10 || ramcfg.size < 0x0e) {
		FUNC10(subdev, "invalid/missing ramcfg entry\n");
		return -EINVAL;
	}

	/* lookup memory timings, if bios says they're present */
	strap = FUNC7(bios, ramcfg.data + 0x01);
	if (strap != 0xff) {
		timing.data = FUNC8(bios, strap, &ver, &timing.size,
					      &cnt, &len);
		if (!timing.data || ver != 0x10 || timing.size < 0x19) {
			FUNC10(subdev, "invalid/missing timing entry\n");
			return -EINVAL;
		}
	} else {
		timing.data = 0;
	}

	ret = FUNC11(fuc, ram->base.fb);
	if (ret)
		return ret;

	/* determine current mclk configuration */
	from = !!(FUNC15(fuc, 0x1373f0) & 0x00000002); /*XXX: ok? */

	/* determine target mclk configuration */
	if (!(FUNC15(fuc, 0x137300) & 0x00000100))
		ref = FUNC9(clk, nv_clk_src_sppll0);
	else
		ref = FUNC9(clk, nv_clk_src_sppll1);
	div = FUNC3(FUNC4((ref * 2) / freq, (u32)65), (u32)2) - 2;
	out = (ref * 2) / (div + 2);
	mode = freq != out;

	FUNC12(fuc, 0x137360, 0x00000002, 0x00000000);

	if ((FUNC15(fuc, 0x132000) & 0x00000002) || 0 /*XXX*/) {
		FUNC14(fuc, 0x132000);
		FUNC12(fuc, 0x132000, 0x00000002, 0x00000002);
		FUNC12(fuc, 0x132000, 0x00000002, 0x00000000);
	}

	if (mode == 1) {
		FUNC14(fuc, 0x10fe20);
		FUNC12(fuc, 0x10fe20, 0x00000002, 0x00000002);
		FUNC12(fuc, 0x10fe20, 0x00000002, 0x00000000);
	}

// 0x00020034 // 0x0000000a
	FUNC17(fuc, 0x132100, 0x00000001);

	if (mode == 1 && from == 0) {
		/* calculate refpll */
		ret = FUNC2(subdev, &ram->refpll, ram->mempll.refclk,
				     &N1, NULL, &M1, &P);
		if (ret <= 0) {
			FUNC10(subdev, "unable to calc refpll\n");
			return ret ? ret : -ERANGE;
		}

		FUNC17(fuc, 0x10fe20, 0x20010000);
		FUNC17(fuc, 0x137320, 0x00000003);
		FUNC17(fuc, 0x137330, 0x81200006);
		FUNC17(fuc, 0x10fe24, (P << 16) | (N1 << 8) | M1);
		FUNC17(fuc, 0x10fe20, 0x20010001);
		FUNC16(fuc, 0x137390, 0x00020000, 0x00020000, 64000);

		/* calculate mempll */
		ret = FUNC2(subdev, &ram->mempll, freq,
				     &N1, NULL, &M1, &P);
		if (ret <= 0) {
			FUNC10(subdev, "unable to calc refpll\n");
			return ret ? ret : -ERANGE;
		}

		FUNC17(fuc, 0x10fe20, 0x20010005);
		FUNC17(fuc, 0x132004, (P << 16) | (N1 << 8) | M1);
		FUNC17(fuc, 0x132000, 0x18010101);
		FUNC16(fuc, 0x137390, 0x00000002, 0x00000002, 64000);
	} else
	if (mode == 0) {
		FUNC17(fuc, 0x137300, 0x00000003);
	}

	if (from == 0) {
		FUNC14(fuc, 0x10fb04);
		FUNC12(fuc, 0x10fb04, 0x0000ffff, 0x00000000);
		FUNC14(fuc, 0x10fb08);
		FUNC12(fuc, 0x10fb08, 0x0000ffff, 0x00000000);
		FUNC17(fuc, 0x10f988, 0x2004ff00);
		FUNC17(fuc, 0x10f98c, 0x003fc040);
		FUNC17(fuc, 0x10f990, 0x20012001);
		FUNC17(fuc, 0x10f998, 0x00011a00);
		FUNC17(fuc, 0x13d8f4, 0x00000000);
	} else {
		FUNC17(fuc, 0x10f988, 0x20010000);
		FUNC17(fuc, 0x10f98c, 0x00000000);
		FUNC17(fuc, 0x10f990, 0x20012001);
		FUNC17(fuc, 0x10f998, 0x00010a00);
	}

	if (from == 0) {
// 0x00020039 // 0x000000ba
	}

// 0x0002003a // 0x00000002
	FUNC17(fuc, 0x100b0c, 0x00080012);
// 0x00030014 // 0x00000000 // 0x02b5f070
// 0x00030014 // 0x00010000 // 0x02b5f070
	FUNC17(fuc, 0x611200, 0x00003300);
// 0x00020034 // 0x0000000a
// 0x00030020 // 0x00000001 // 0x00000000

	FUNC12(fuc, 0x10f200, 0x00000800, 0x00000000);
	FUNC17(fuc, 0x10f210, 0x00000000);
	FUNC13(fuc, 1000);
	if (mode == 0)
		FUNC1(fuc, 0x000c1001);
	FUNC17(fuc, 0x10f310, 0x00000001);
	FUNC13(fuc, 1000);
	FUNC17(fuc, 0x10f090, 0x00000061);
	FUNC17(fuc, 0x10f090, 0xc000007f);
	FUNC13(fuc, 1000);

	if (from == 0) {
		FUNC17(fuc, 0x10f824, 0x00007fd4);
	} else {
		FUNC17(fuc, 0x1373ec, 0x00020404);
	}

	if (mode == 0) {
		FUNC12(fuc, 0x10f808, 0x00080000, 0x00000000);
		FUNC12(fuc, 0x10f200, 0x00008000, 0x00008000);
		FUNC17(fuc, 0x10f830, 0x41500010);
		FUNC12(fuc, 0x10f830, 0x01000000, 0x00000000);
		FUNC12(fuc, 0x132100, 0x00000100, 0x00000100);
		FUNC17(fuc, 0x10f050, 0xff000090);
		FUNC17(fuc, 0x1373ec, 0x00020f0f);
		FUNC17(fuc, 0x1373f0, 0x00000003);
		FUNC17(fuc, 0x137310, 0x81201616);
		FUNC17(fuc, 0x132100, 0x00000001);
// 0x00020039 // 0x000000ba
		FUNC17(fuc, 0x10f830, 0x00300017);
		FUNC17(fuc, 0x1373f0, 0x00000001);
		FUNC17(fuc, 0x10f824, 0x00007e77);
		FUNC17(fuc, 0x132000, 0x18030001);
		FUNC17(fuc, 0x10f090, 0x4000007e);
		FUNC13(fuc, 2000);
		FUNC17(fuc, 0x10f314, 0x00000001);
		FUNC17(fuc, 0x10f210, 0x80000000);
		FUNC17(fuc, 0x10f338, 0x00300220);
		FUNC17(fuc, 0x10f300, 0x0000011d);
		FUNC13(fuc, 1000);
		FUNC17(fuc, 0x10f290, 0x02060505);
		FUNC17(fuc, 0x10f294, 0x34208288);
		FUNC17(fuc, 0x10f298, 0x44050411);
		FUNC17(fuc, 0x10f29c, 0x0000114c);
		FUNC17(fuc, 0x10f2a0, 0x42e10069);
		FUNC17(fuc, 0x10f614, 0x40044f77);
		FUNC17(fuc, 0x10f610, 0x40044f77);
		FUNC17(fuc, 0x10f344, 0x00600009);
		FUNC13(fuc, 1000);
		FUNC17(fuc, 0x10f348, 0x00700008);
		FUNC17(fuc, 0x61c140, 0x19240000);
		FUNC17(fuc, 0x10f830, 0x00300017);
		FUNC1(fuc, 0x80021001);
		FUNC1(fuc, 0x80081001);
		FUNC17(fuc, 0x10f340, 0x00500004);
		FUNC13(fuc, 1000);
		FUNC17(fuc, 0x10f830, 0x01300017);
		FUNC17(fuc, 0x10f830, 0x00300017);
// 0x00030020 // 0x00000000 // 0x00000000
// 0x00020034 // 0x0000000b
		FUNC17(fuc, 0x100b0c, 0x00080028);
		FUNC17(fuc, 0x611200, 0x00003330);
	} else {
		FUNC17(fuc, 0x10f800, 0x00001800);
		FUNC17(fuc, 0x13d8f4, 0x00000000);
		FUNC17(fuc, 0x1373ec, 0x00020404);
		FUNC17(fuc, 0x1373f0, 0x00000003);
		FUNC17(fuc, 0x10f830, 0x40700010);
		FUNC17(fuc, 0x10f830, 0x40500010);
		FUNC17(fuc, 0x13d8f4, 0x00000000);
		FUNC17(fuc, 0x1373f8, 0x00000000);
		FUNC17(fuc, 0x132100, 0x00000101);
		FUNC17(fuc, 0x137310, 0x89201616);
		FUNC17(fuc, 0x10f050, 0xff000090);
		FUNC17(fuc, 0x1373ec, 0x00030404);
		FUNC17(fuc, 0x1373f0, 0x00000002);
	// 0x00020039 // 0x00000011
		FUNC17(fuc, 0x132100, 0x00000001);
		FUNC17(fuc, 0x1373f8, 0x00002000);
		FUNC13(fuc, 2000);
		FUNC17(fuc, 0x10f808, 0x7aaa0050);
		FUNC17(fuc, 0x10f830, 0x00500010);
		FUNC17(fuc, 0x10f200, 0x00ce1000);
		FUNC17(fuc, 0x10f090, 0x4000007e);
		FUNC13(fuc, 2000);
		FUNC17(fuc, 0x10f314, 0x00000001);
		FUNC17(fuc, 0x10f210, 0x80000000);
		FUNC17(fuc, 0x10f338, 0x00300200);
		FUNC17(fuc, 0x10f300, 0x0000084d);
		FUNC13(fuc, 1000);
		FUNC17(fuc, 0x10f290, 0x0b343825);
		FUNC17(fuc, 0x10f294, 0x3483028e);
		FUNC17(fuc, 0x10f298, 0x440c0600);
		FUNC17(fuc, 0x10f29c, 0x0000214c);
		FUNC17(fuc, 0x10f2a0, 0x42e20069);
		FUNC17(fuc, 0x10f200, 0x00ce0000);
		FUNC17(fuc, 0x10f614, 0x60044e77);
		FUNC17(fuc, 0x10f610, 0x60044e77);
		FUNC17(fuc, 0x10f340, 0x00500000);
		FUNC13(fuc, 1000);
		FUNC17(fuc, 0x10f344, 0x00600228);
		FUNC13(fuc, 1000);
		FUNC17(fuc, 0x10f348, 0x00700000);
		FUNC17(fuc, 0x13d8f4, 0x00000000);
		FUNC17(fuc, 0x61c140, 0x09a40000);

		FUNC1(fuc, 0x800e1008);

		FUNC13(fuc, 1000);
		FUNC17(fuc, 0x10f800, 0x00001804);
	// 0x00030020 // 0x00000000 // 0x00000000
	// 0x00020034 // 0x0000000b
		FUNC17(fuc, 0x13d8f4, 0x00000000);
		FUNC17(fuc, 0x100b0c, 0x00080028);
		FUNC17(fuc, 0x611200, 0x00003330);
		FUNC13(fuc, 100000);
		FUNC17(fuc, 0x10f9b0, 0x05313f41);
		FUNC17(fuc, 0x10f9b4, 0x00002f50);

		FUNC1(fuc, 0x010c1001);
	}

	FUNC12(fuc, 0x10f200, 0x00000800, 0x00000800);
// 0x00020016 // 0x00000000

	if (mode == 0)
		FUNC12(fuc, 0x132000, 0x00000001, 0x00000000);

	return 0;
}
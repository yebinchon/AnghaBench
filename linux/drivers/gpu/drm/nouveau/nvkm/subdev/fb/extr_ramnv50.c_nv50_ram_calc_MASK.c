#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct nvkm_subdev {TYPE_3__* device; } ;
struct TYPE_12__ {int ramcfg_timing; int rammap_00_16_40; int ramcfg_00_07; int ramcfg_00_06; int ramcfg_00_05; int ramcfg_00_09; int ramcfg_00_08; scalar_t__ ramcfg_00_03_02; scalar_t__ rammap_00_17_02; int /*<<< orphan*/  ramcfg_DLLoff; scalar_t__ timing_10_ODT; scalar_t__ rammap_00_16_20; scalar_t__ ramcfg_00_04_20; scalar_t__ ramcfg_00_04_04; int /*<<< orphan*/  ramcfg_00_03_08; scalar_t__ ramcfg_00_03_01; int /*<<< orphan*/  ramcfg_FBVDDQ; int /*<<< orphan*/  ramcfg_00_04_02; } ;
struct nvkm_ram_data {int freq; TYPE_5__ bios; } ;
struct nvkm_ram {int dummy; } ;
struct nvkm_bios {int dummy; } ;
struct TYPE_9__ {scalar_t__ max_freq; } ;
struct nvbios_pll {int bias_p; TYPE_2__ vco2; } ;
struct nvbios_perfE {int memory; } ;
struct nv50_ramseq {int dummy; } ;
struct TYPE_11__ {int* mr; int type; struct nvkm_ram_data* next; struct nvkm_ram_data target; TYPE_1__* fb; } ;
struct nv50_ram {TYPE_4__ base; struct nv50_ramseq hwsq; } ;
struct TYPE_10__ {int chipset; struct nvkm_bios* bios; } ;
struct TYPE_8__ {struct nvkm_subdev subdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
#define  NVKM_RAM_TYPE_DDR2 129 
#define  NVKM_RAM_TYPE_GDDR3 128 
 int* mr ; 
 int FUNC0 (struct nvkm_subdev*,struct nvbios_pll*,int,int*,int*,int*,int*,int*) ; 
 struct nv50_ram* FUNC1 (struct nvkm_ram*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_ramseq*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_ram*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_ram*,int*) ; 
 int FUNC5 (struct nvkm_bios*,int /*<<< orphan*/ ,int*,int*,int*,int*,struct nvbios_perfE*) ; 
 int FUNC6 (struct nvkm_bios*,int,struct nvbios_pll*) ; 
 int FUNC7 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_bios*,int,int,TYPE_5__*) ; 
 int FUNC9 (struct nvkm_bios*,int,int,int,TYPE_5__*) ; 
 int FUNC10 (struct nvkm_bios*,int,int*,int*,int*,int*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (struct nvkm_subdev*,char*,...) ; 
 int FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (struct nv50_ramseq*) ; 
 int FUNC14 (struct nv50_ramseq*,struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC15 (struct nv50_ramseq*,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct nv50_ramseq*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct nv50_ramseq*,int) ; 
 int FUNC18 (struct nv50_ramseq*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct nv50_ramseq*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct nv50_ramseq*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct nv50_ramseq*) ; 
 int /*<<< orphan*/  FUNC22 (struct nv50_ramseq*,int,int) ; 

__attribute__((used)) static int
FUNC23(struct nvkm_ram *base, u32 freq)
{
	struct nv50_ram *ram = FUNC1(base);
	struct nv50_ramseq *hwsq = &ram->hwsq;
	struct nvkm_subdev *subdev = &ram->base.fb->subdev;
	struct nvkm_bios *bios = subdev->device->bios;
	struct nvbios_perfE perfE;
	struct nvbios_pll mpll;
	struct nvkm_ram_data *next;
	u8  ver, hdr, cnt, len, strap, size;
	u32 data;
	u32 r100da0, r004008, unk710, unk714, unk718, unk71c;
	int N1, M1, N2, M2, P;
	int ret, i;
	u32 timing[9];

	next = &ram->base.target;
	next->freq = freq;
	ram->base.next = next;

	/* lookup closest matching performance table entry for frequency */
	i = 0;
	do {
		data = FUNC5(bios, i++, &ver, &hdr, &cnt,
				     &size, &perfE);
		if (!data || (ver < 0x25 || ver >= 0x40) ||
		    (size < 2)) {
			FUNC11(subdev, "invalid/missing perftab entry\n");
			return -EINVAL;
		}
	} while (perfE.memory < freq);

	FUNC8(bios, data, hdr, &next->bios);

	/* locate specific data set for the attached memory */
	strap = FUNC7(subdev);
	if (strap >= cnt) {
		FUNC11(subdev, "invalid ramcfg strap\n");
		return -EINVAL;
	}

	data = FUNC9(bios, data + hdr, size, strap,
			&next->bios);
	if (!data) {
		FUNC11(subdev, "invalid/missing rammap entry ");
		return -EINVAL;
	}

	/* lookup memory timings, if bios says they're present */
	if (next->bios.ramcfg_timing != 0xff) {
		data = FUNC10(bios, next->bios.ramcfg_timing,
					&ver, &hdr, &cnt, &len, &next->bios);
		if (!data || ver != 0x10 || hdr < 0x12) {
			FUNC11(subdev, "invalid/missing timing entry "
				 "%02x %04x %02x %02x\n",
				 strap, data, ver, hdr);
			return -EINVAL;
		}
		FUNC3(ram, timing);
	} else {
		FUNC4(ram, timing);
	}

	ret = FUNC14(hwsq, subdev);
	if (ret)
		return ret;

	/* Determine ram-specific MR values */
	ram->base.mr[0] = FUNC18(hwsq, mr[0]);
	ram->base.mr[1] = FUNC18(hwsq, mr[1]);
	ram->base.mr[2] = FUNC18(hwsq, mr[2]);

	switch (ram->base.type) {
	case NVKM_RAM_TYPE_GDDR3:
		ret = FUNC12(&ram->base);
		break;
	default:
		ret = -ENOSYS;
		break;
	}

	if (ret) {
		FUNC11(subdev, "Could not calculate MR\n");
		return ret;
	}

	if (subdev->device->chipset <= 0x96 && !next->bios.ramcfg_00_03_02)
		FUNC15(hwsq, 0x100710, 0x00000200, 0x00000000);

	/* Always disable this bit during reclock */
	FUNC15(hwsq, 0x100200, 0x00000800, 0x00000000);

	FUNC21(hwsq);
	FUNC22(hwsq, 0x611200, 0x00003300);
	FUNC22(hwsq, 0x002504, 0x00000001); /* block fifo */
	FUNC16(hwsq, 8000);
	FUNC19(hwsq, 0x10, 0x00); /* disable fb */
	FUNC20(hwsq, 0x00, 0x01); /* wait for fb disabled */
	FUNC16(hwsq, 2000);

	if (next->bios.timing_10_ODT)
		FUNC2(hwsq, 0x2e, 1);

	FUNC22(hwsq, 0x1002d4, 0x00000001); /* precharge */
	FUNC22(hwsq, 0x1002d0, 0x00000001); /* refresh */
	FUNC22(hwsq, 0x1002d0, 0x00000001); /* refresh */
	FUNC22(hwsq, 0x100210, 0x00000000); /* disable auto-refresh */
	FUNC22(hwsq, 0x1002dc, 0x00000001); /* enable self-refresh */

	ret = FUNC6(bios, 0x004008, &mpll);
	mpll.vco2.max_freq = 0;
	if (ret >= 0) {
		ret = FUNC0(subdev, &mpll, freq,
				    &N1, &M1, &N2, &M2, &P);
		if (ret <= 0)
			ret = -EINVAL;
	}

	if (ret < 0)
		return ret;

	/* XXX: 750MHz seems rather arbitrary */
	if (freq <= 750000) {
		r100da0 = 0x00000010;
		r004008 = 0x90000000;
	} else {
		r100da0 = 0x00000000;
		r004008 = 0x80000000;
	}

	r004008 |= (mpll.bias_p << 19) | (P << 22) | (P << 16);

	FUNC15(hwsq, 0x00c040, 0xc000c000, 0x0000c000);
	/* XXX: Is rammap_00_16_40 the DLL bit we've seen in GT215? Why does
	 * it have a different rammap bit from DLLoff? */
	FUNC15(hwsq, 0x004008, 0x00004200, 0x00000200 |
			next->bios.rammap_00_16_40 << 14);
	FUNC15(hwsq, 0x00400c, 0x0000ffff, (N1 << 8) | M1);
	FUNC15(hwsq, 0x004008, 0x91ff0000, r004008);

	/* XXX: GDDR3 only? */
	if (subdev->device->chipset >= 0x92)
		FUNC22(hwsq, 0x100da0, r100da0);

	FUNC2(hwsq, 0x18, !next->bios.ramcfg_FBVDDQ);
	FUNC16(hwsq, 64000); /*XXX*/
	FUNC16(hwsq, 32000); /*XXX*/

	FUNC15(hwsq, 0x004008, 0x00002200, 0x00002000);

	FUNC22(hwsq, 0x1002dc, 0x00000000); /* disable self-refresh */
	FUNC22(hwsq, 0x1002d4, 0x00000001); /* disable self-refresh */
	FUNC22(hwsq, 0x100210, 0x80000000); /* enable auto-refresh */

	FUNC16(hwsq, 12000);

	switch (ram->base.type) {
	case NVKM_RAM_TYPE_DDR2:
		FUNC17(hwsq, mr[0]); /* force update */
		FUNC15(hwsq, mr[0], 0x000, 0x000);
		break;
	case NVKM_RAM_TYPE_GDDR3:
		FUNC17(hwsq, mr[1]); /* force update */
		FUNC22(hwsq, mr[1], ram->base.mr[1]);
		FUNC17(hwsq, mr[0]); /* force update */
		FUNC22(hwsq, mr[0], ram->base.mr[0]);
		break;
	default:
		break;
	}

	FUNC15(hwsq, timing[3], 0xffffffff, timing[3]);
	FUNC15(hwsq, timing[1], 0xffffffff, timing[1]);
	FUNC15(hwsq, timing[6], 0xffffffff, timing[6]);
	FUNC15(hwsq, timing[7], 0xffffffff, timing[7]);
	FUNC15(hwsq, timing[8], 0xffffffff, timing[8]);
	FUNC15(hwsq, timing[0], 0xffffffff, timing[0]);
	FUNC15(hwsq, timing[2], 0xffffffff, timing[2]);
	FUNC15(hwsq, timing[4], 0xffffffff, timing[4]);
	FUNC15(hwsq, timing[5], 0xffffffff, timing[5]);

	if (!next->bios.ramcfg_00_03_02)
		FUNC15(hwsq, 0x10021c, 0x00010000, 0x00000000);
	FUNC15(hwsq, 0x100200, 0x00001000, !next->bios.ramcfg_00_04_02 << 12);

	/* XXX: A lot of this could be "chipset"/"ram type" specific stuff */
	unk710  = FUNC18(hwsq, 0x100710) & ~0x00000100;
	unk714  = FUNC18(hwsq, 0x100714) & ~0xf0000020;
	unk718  = FUNC18(hwsq, 0x100718) & ~0x00000100;
	unk71c  = FUNC18(hwsq, 0x10071c) & ~0x00000100;
	if (subdev->device->chipset <= 0x96) {
		unk710 &= ~0x0000006e;
		unk714 &= ~0x00000100;

		if (!next->bios.ramcfg_00_03_08)
			unk710 |= 0x00000060;
		if (!next->bios.ramcfg_FBVDDQ)
			unk714 |= 0x00000100;
		if ( next->bios.ramcfg_00_04_04)
			unk710 |= 0x0000000e;
	} else {
		unk710 &= ~0x00000001;

		if (!next->bios.ramcfg_00_03_08)
			unk710 |= 0x00000001;
	}

	if ( next->bios.ramcfg_00_03_01)
		unk71c |= 0x00000100;
	if ( next->bios.ramcfg_00_03_02)
		unk710 |= 0x00000100;
	if (!next->bios.ramcfg_00_03_08)
		unk714 |= 0x00000020;
	if ( next->bios.ramcfg_00_04_04)
		unk714 |= 0x70000000;
	if ( next->bios.ramcfg_00_04_20)
		unk718 |= 0x00000100;

	FUNC15(hwsq, 0x100714, 0xffffffff, unk714);
	FUNC15(hwsq, 0x10071c, 0xffffffff, unk71c);
	FUNC15(hwsq, 0x100718, 0xffffffff, unk718);
	FUNC15(hwsq, 0x100710, 0xffffffff, unk710);

	/* XXX: G94 does not even test these regs in trace. Harmless we do it,
	 * but why is it omitted? */
	if (next->bios.rammap_00_16_20) {
		FUNC22(hwsq, 0x1005a0, next->bios.ramcfg_00_07 << 16 |
					 next->bios.ramcfg_00_06 << 8 |
					 next->bios.ramcfg_00_05);
		FUNC22(hwsq, 0x1005a4, next->bios.ramcfg_00_09 << 8 |
					 next->bios.ramcfg_00_08);
		FUNC15(hwsq, 0x10053c, 0x00001000, 0x00000000);
	} else {
		FUNC15(hwsq, 0x10053c, 0x00001000, 0x00001000);
	}
	FUNC15(hwsq, mr[1], 0xffffffff, ram->base.mr[1]);

	if (!next->bios.timing_10_ODT)
		FUNC2(hwsq, 0x2e, 0);

	/* Reset DLL */
	if (!next->bios.ramcfg_DLLoff)
		FUNC13(hwsq);

	FUNC19(hwsq, 0x10, 0x01); /* enable fb */
	FUNC20(hwsq, 0x00, 0x00); /* wait for fb enabled */
	FUNC22(hwsq, 0x611200, 0x00003330);
	FUNC22(hwsq, 0x002504, 0x00000000); /* un-block fifo */

	if (next->bios.rammap_00_17_02)
		FUNC15(hwsq, 0x100200, 0x00000800, 0x00000800);
	if (!next->bios.rammap_00_16_40)
		FUNC15(hwsq, 0x004008, 0x00004000, 0x00000000);
	if (next->bios.ramcfg_00_03_02)
		FUNC15(hwsq, 0x10021c, 0x00010000, 0x00010000);
	if (subdev->device->chipset <= 0x96 && next->bios.ramcfg_00_03_02)
		FUNC15(hwsq, 0x100710, 0x00000200, 0x00000200);

	return 0;
}
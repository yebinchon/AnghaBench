#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int /*<<< orphan*/  cfgopt; struct nvkm_clk* clk; struct nvkm_bios* bios; } ;
struct nvkm_clk {int dummy; } ;
struct nvkm_bios {int dummy; } ;
struct nvbios_M0205T {scalar_t__ freq; int /*<<< orphan*/  member_0; } ;
struct gt215_ramfuc {int dummy; } ;
struct TYPE_6__ {TYPE_4__* fb; TYPE_1__* func; } ;
struct gt215_ltrain {int r_100720; int r_1111e0; int r_111400; int /*<<< orphan*/  state; } ;
struct gt215_ram {TYPE_2__ base; struct gt215_ramfuc fuc; struct gt215_ltrain ltrain; } ;
struct TYPE_7__ {struct nvkm_subdev subdev; } ;
struct TYPE_5__ {int (* calc ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVA3_TRAIN_DONE ; 
 int /*<<< orphan*/  NVA3_TRAIN_EXEC ; 
 int /*<<< orphan*/  NVA3_TRAIN_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_clk*,unsigned long*) ; 
 int FUNC1 (struct nvkm_clk*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int*,struct gt215_ltrain*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv_clk_src_mem ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_bios*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nvbios_M0205T*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned int FUNC7 (struct nvkm_clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_subdev*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct gt215_ramfuc*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct gt215_ramfuc*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct gt215_ramfuc*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct gt215_ramfuc*,int) ; 
 int FUNC15 (struct gt215_ramfuc*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct gt215_ramfuc*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct gt215_ramfuc*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct gt215_ramfuc*) ; 
 int /*<<< orphan*/  FUNC20 (struct gt215_ramfuc*,int,int) ; 
 int FUNC21 (TYPE_2__*,int) ; 
 int FUNC22 (TYPE_2__*,unsigned int) ; 

__attribute__((used)) static int
FUNC23(struct gt215_ram *ram)
{
	struct gt215_ltrain *train = &ram->ltrain;
	struct gt215_ramfuc *fuc = &ram->fuc;
	struct nvkm_subdev *subdev = &ram->base.fb->subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_bios *bios = device->bios;
	struct nvkm_clk *clk = device->clk;
	u32 *result, r1700;
	int ret, i;
	struct nvbios_M0205T M0205T = { 0 };
	u8 ver, hdr, cnt, len, snr, ssz;
	unsigned int clk_current;
	unsigned long flags;
	unsigned long *f = &flags;

	if (FUNC6(device->cfgopt, "NvMemExec", true) != true)
		return -ENOSYS;

	/* XXX: Multiple partitions? */
	result = FUNC4(64, sizeof(u32), GFP_KERNEL);
	if (!result)
		return -ENOMEM;

	train->state = NVA3_TRAIN_EXEC;

	/* Clock speeds for training and back */
	FUNC5(bios, &ver, &hdr, &cnt, &len, &snr, &ssz, &M0205T);
	if (M0205T.freq == 0) {
		FUNC3(result);
		return -ENOENT;
	}

	clk_current = FUNC7(clk, nv_clk_src_mem);

	ret = FUNC1(clk, f);
	if (ret)
		goto out;

	/* First: clock up/down */
	ret = ram->base.func->calc(&ram->base, (u32) M0205T.freq * 1000);
	if (ret)
		goto out;

	/* Do this *after* calc, eliminates write in script */
	FUNC10(device, 0x111400, 0x00000000);
	/* XXX: Magic writes that improve train reliability? */
	FUNC9(device, 0x100674, 0x0000ffff, 0x00000000);
	FUNC9(device, 0x1005e4, 0x0000ffff, 0x00000000);
	FUNC9(device, 0x100b0c, 0x000000ff, 0x00000000);
	FUNC10(device, 0x100c04, 0x00000400);

	/* Now the training script */
	r1700 = FUNC15(fuc, 0x001700);

	FUNC12(fuc, 0x100200, 0x00000800, 0x00000000);
	FUNC20(fuc, 0x611200, 0x3300);
	FUNC19(fuc);
	FUNC18(fuc, 0x611200, 0x00000003, 0x00000000, 500000);
	FUNC12(fuc, 0x001610, 0x00000083, 0x00000003);
	FUNC12(fuc, 0x100080, 0x00000020, 0x00000000);
	FUNC12(fuc, 0x10f804, 0x80000000, 0x00000000);
	FUNC20(fuc, 0x001700, 0x00000000);

	FUNC16(fuc);

	/* Reset */
	FUNC12(fuc, 0x10f804, 0x80000000, 0x80000000);
	FUNC20(fuc, 0x10053c, 0x0);
	FUNC20(fuc, 0x100720, train->r_100720);
	FUNC20(fuc, 0x1111e0, train->r_1111e0);
	FUNC20(fuc, 0x111400, train->r_111400);
	FUNC14(fuc, 0x100080);
	FUNC12(fuc, 0x100080, 0x00000020, 0x00000020);
	FUNC13(fuc, 1000);

	FUNC20(fuc, 0x001700, r1700);
	FUNC12(fuc, 0x001610, 0x00000083, 0x00000080);
	FUNC20(fuc, 0x611200, 0x3330);
	FUNC12(fuc, 0x100200, 0x00000800, 0x00000800);

	FUNC11(fuc, true);

	ram->base.func->calc(&ram->base, clk_current);
	FUNC11(fuc, true);

	/* Post-processing, avoids flicker */
	FUNC9(device, 0x616308, 0x10, 0x10);
	FUNC9(device, 0x616b08, 0x10, 0x10);

	FUNC0(clk, f);

	FUNC17(ram->base.fb, result, 64);
	for (i = 0; i < 64; i++)
		FUNC8(subdev, "Train: %08x", result[i]);
	FUNC2(result, train);

	FUNC8(subdev, "Train: %08x %08x %08x", train->r_100720,
		   train->r_1111e0, train->r_111400);

	FUNC3(result);

	train->state = NVA3_TRAIN_DONE;

	return ret;

out:
	if(ret == -EBUSY)
		f = NULL;

	train->state = NVA3_TRAIN_UNSUPPORTED;

	FUNC0(clk, f);
	FUNC3(result);
	return ret;
}
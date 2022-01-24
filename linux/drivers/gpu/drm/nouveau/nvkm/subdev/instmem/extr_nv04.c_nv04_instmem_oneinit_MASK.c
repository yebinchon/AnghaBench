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
struct nvkm_instmem {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {int reserved; int /*<<< orphan*/  ramro; int /*<<< orphan*/  ramfc; int /*<<< orphan*/  ramht; int /*<<< orphan*/  vbios; TYPE_1__ subdev; } ;
struct nv04_instmem {TYPE_2__ base; int /*<<< orphan*/  heap; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVKM_MEM_TARGET_INST ; 
 struct nv04_instmem* FUNC0 (struct nvkm_instmem*) ; 
 int FUNC1 (struct nvkm_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct nvkm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_instmem *base)
{
	struct nv04_instmem *imem = FUNC0(base);
	struct nvkm_device *device = imem->base.subdev.device;
	int ret;

	/* PRAMIN aperture maps over the end of VRAM, reserve it */
	imem->base.reserved = 512 * 1024;

	ret = FUNC2(&imem->heap, 0, 0, imem->base.reserved, 1);
	if (ret)
		return ret;

	/* 0x00000-0x10000: reserve for probable vbios image */
	ret = FUNC1(device, NVKM_MEM_TARGET_INST, 0x10000, 0, false,
			      &imem->base.vbios);
	if (ret)
		return ret;

	/* 0x10000-0x18000: reserve for RAMHT */
	ret = FUNC3(device, 0x08000, 0, NULL, &imem->base.ramht);
	if (ret)
		return ret;

	/* 0x18000-0x18800: reserve for RAMFC (enough for 32 nv30 channels) */
	ret = FUNC1(device, NVKM_MEM_TARGET_INST, 0x00800, 0, true,
			      &imem->base.ramfc);
	if (ret)
		return ret;

	/* 0x18800-0x18a00: reserve for RAMRO */
	ret = FUNC1(device, NVKM_MEM_TARGET_INST, 0x00200, 0, false,
			      &imem->base.ramro);
	if (ret)
		return ret;

	return 0;
}
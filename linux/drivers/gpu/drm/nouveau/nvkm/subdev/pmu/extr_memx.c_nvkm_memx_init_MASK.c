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
typedef  void* u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_pmu {TYPE_1__ subdev; } ;
struct nvkm_memx {int base; void* size; struct nvkm_pmu* pmu; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEMX_INFO_DATA ; 
 int /*<<< orphan*/  MEMX_MSG_INFO ; 
 int /*<<< orphan*/  PROC_MEMX ; 
 struct nvkm_memx* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvkm_pmu*,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int) ; 

int
FUNC4(struct nvkm_pmu *pmu, struct nvkm_memx **pmemx)
{
	struct nvkm_device *device = pmu->subdev.device;
	struct nvkm_memx *memx;
	u32 reply[2];
	int ret;

	ret = FUNC1(pmu, reply, PROC_MEMX, MEMX_MSG_INFO,
			    MEMX_INFO_DATA, 0);
	if (ret)
		return ret;

	memx = *pmemx = FUNC0(sizeof(*memx), GFP_KERNEL);
	if (!memx)
		return -ENOMEM;
	memx->pmu = pmu;
	memx->base = reply[0];
	memx->size = reply[1];

	/* acquire data segment access */
	do {
		FUNC3(device, 0x10a580, 0x00000003);
	} while (FUNC2(device, 0x10a580) != 0x00000003);
	FUNC3(device, 0x10a1c0, 0x01000000 | memx->base);
	return 0;
}
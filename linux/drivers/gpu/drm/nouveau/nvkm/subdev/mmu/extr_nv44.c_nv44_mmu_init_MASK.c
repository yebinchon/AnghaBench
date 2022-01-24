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
struct TYPE_8__ {struct nvkm_device* device; } ;
struct nvkm_mmu {TYPE_3__* vmm; TYPE_4__ subdev; } ;
struct nvkm_memory {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_7__ {int null; TYPE_2__* pd; } ;
struct TYPE_6__ {TYPE_1__** pt; } ;
struct TYPE_5__ {struct nvkm_memory* memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,int,int,int) ; 
 int FUNC1 (struct nvkm_memory*) ; 
 int FUNC2 (struct nvkm_memory*) ; 
 int FUNC3 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nvkm_mmu *mmu)
{
	struct nvkm_device *device = mmu->subdev.device;
	struct nvkm_memory *pt = mmu->vmm->pd->pt[0]->memory;
	u32 addr;

	/* calculate vram address of this PRAMIN block, object must be
	 * allocated on 512KiB alignment, and not exceed a total size
	 * of 512KiB for this to work correctly
	 */
	addr  = FUNC3(device, 0x10020c);
	addr -= ((FUNC1(pt) >> 19) + 1) << 19;

	FUNC4(device, 0x100850, 0x80000000);
	FUNC4(device, 0x100818, mmu->vmm->null);
	FUNC4(device, 0x100804, (FUNC2(pt) / 4) * 4096);
	FUNC4(device, 0x100850, 0x00008000);
	FUNC0(device, 0x10008c, 0x00000200, 0x00000200);
	FUNC4(device, 0x100820, 0x00000000);
	FUNC4(device, 0x10082c, 0x00000001);
	FUNC4(device, 0x100800, addr | 0x00000010);
}
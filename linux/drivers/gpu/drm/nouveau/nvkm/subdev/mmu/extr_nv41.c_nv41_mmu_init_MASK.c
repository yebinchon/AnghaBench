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
struct TYPE_5__ {struct nvkm_device* device; } ;
struct nvkm_mmu {TYPE_4__* vmm; TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_8__ {TYPE_3__* pd; } ;
struct TYPE_7__ {TYPE_2__** pt; } ;
struct TYPE_6__ {int addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nvkm_mmu *mmu)
{
	struct nvkm_device *device = mmu->subdev.device;
	FUNC1(device, 0x100800, 0x00000002 | mmu->vmm->pd->pt[0]->addr);
	FUNC0(device, 0x10008c, 0x00000100, 0x00000100);
	FUNC1(device, 0x100820, 0x00000000);
}
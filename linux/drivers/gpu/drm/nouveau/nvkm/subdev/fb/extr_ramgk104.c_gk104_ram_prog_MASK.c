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
struct nvkm_ram_data {int freq; } ;
struct nvkm_ram {int dummy; } ;
struct nvkm_device {int /*<<< orphan*/  cfgopt; } ;
struct gk104_ramfuc {int dummy; } ;
struct TYPE_6__ {struct nvkm_ram_data xition; struct nvkm_ram_data* next; TYPE_2__* fb; } ;
struct gk104_ram {TYPE_3__ base; struct gk104_ramfuc fuc; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;

/* Variables and functions */
 struct gk104_ram* FUNC0 (struct nvkm_ram*) ; 
 int /*<<< orphan*/  FUNC1 (struct gk104_ram*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gk104_ramfuc*,int) ; 

int
FUNC4(struct nvkm_ram *base)
{
	struct gk104_ram *ram = FUNC0(base);
	struct gk104_ramfuc *fuc = &ram->fuc;
	struct nvkm_device *device = ram->base.fb->subdev.device;
	struct nvkm_ram_data *next = ram->base.next;

	if (!FUNC2(device->cfgopt, "NvMemExec", true)) {
		FUNC3(fuc, false);
		return (ram->base.next == &ram->base.xition);
	}

	FUNC1(ram, 1000);
	FUNC3(fuc, true);
	FUNC1(ram, next->freq);

	return (ram->base.next == &ram->base.xition);
}
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
struct nvkm_ram {int dummy; } ;
struct nvkm_device {int /*<<< orphan*/  cfgopt; } ;
struct gt215_ramfuc {int dummy; } ;
struct TYPE_6__ {TYPE_2__* fb; } ;
struct gt215_ram {TYPE_3__ base; struct gt215_ramfuc fuc; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;

/* Variables and functions */
 struct gt215_ram* FUNC0 (struct nvkm_ram*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gt215_ramfuc*,int) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_ram *base)
{
	struct gt215_ram *ram = FUNC0(base);
	struct gt215_ramfuc *fuc = &ram->fuc;
	struct nvkm_device *device = ram->base.fb->subdev.device;
	bool exec = FUNC1(device->cfgopt, "NvMemExec", true);

	if (exec) {
		FUNC2(device, 0x001534, 0x2, 0x2);

		FUNC3(fuc, true);

		/* Post-processing, avoids flicker */
		FUNC2(device, 0x002504, 0x1, 0x0);
		FUNC2(device, 0x001534, 0x2, 0x0);

		FUNC2(device, 0x616308, 0x10, 0x10);
		FUNC2(device, 0x616b08, 0x10, 0x10);
	} else {
		FUNC3(fuc, false);
	}
	return 0;
}
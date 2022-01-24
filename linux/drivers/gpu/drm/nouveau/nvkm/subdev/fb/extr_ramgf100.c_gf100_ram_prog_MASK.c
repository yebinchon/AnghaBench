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
struct TYPE_6__ {TYPE_2__* fb; } ;
struct gf100_ram {int /*<<< orphan*/  fuc; TYPE_3__ base; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;

/* Variables and functions */
 struct gf100_ram* FUNC0 (struct nvkm_ram*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(struct nvkm_ram *base)
{
	struct gf100_ram *ram = FUNC0(base);
	struct nvkm_device *device = ram->base.fb->subdev.device;
	FUNC2(&ram->fuc, FUNC1(device->cfgopt, "NvMemExec", true));
	return 0;
}
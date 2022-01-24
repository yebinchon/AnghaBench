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
typedef  int u32 ;
struct nvkm_device {int /*<<< orphan*/  secboot; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,char*) ; 
 int FUNC1 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct gf100_gr *gr)
{
	struct nvkm_device *device = gr->base.engine.subdev.device;
	u32 val;

	/* Bypass MMU check for non-secure boot */
	if (!device->secboot) {
		FUNC2(device, 0x100ce4, 0xffffffff);

		if (FUNC1(device, 0x100ce4) != 0xffffffff)
			FUNC0(device,
			  "cannot bypass secure boot - expect failure soon!\n");
	}

	val = FUNC1(device, 0x100c80);
	val &= 0xf000187f;
	FUNC2(device, 0x418880, val);
	FUNC2(device, 0x418890, 0);
	FUNC2(device, 0x418894, 0);

	FUNC2(device, 0x4188b0, FUNC1(device, 0x100cc4));
	FUNC2(device, 0x4188b4, FUNC1(device, 0x100cc8));
	FUNC2(device, 0x4188b8, FUNC1(device, 0x100ccc));

	FUNC2(device, 0x4188ac, FUNC1(device, 0x100800));
}
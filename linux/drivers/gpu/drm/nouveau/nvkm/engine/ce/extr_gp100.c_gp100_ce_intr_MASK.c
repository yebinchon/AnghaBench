#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct nvkm_subdev {int index; struct nvkm_device* device; } ;
struct nvkm_engine {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int NVKM_ENGINE_CE0 ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_engine*,int const) ; 
 int FUNC1 (struct nvkm_device*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int const,int) ; 

void
FUNC4(struct nvkm_engine *ce)
{
	const u32 base = (ce->subdev.index - NVKM_ENGINE_CE0) * 0x80;
	struct nvkm_subdev *subdev = &ce->subdev;
	struct nvkm_device *device = subdev->device;
	u32 mask = FUNC1(device, 0x10440c + base);
	u32 intr = FUNC1(device, 0x104410 + base) & mask;
	if (intr & 0x00000001) { //XXX: guess
		FUNC2(subdev, "BLOCKPIPE\n");
		FUNC3(device, 0x104410 + base, 0x00000001);
		intr &= ~0x00000001;
	}
	if (intr & 0x00000002) { //XXX: guess
		FUNC2(subdev, "NONBLOCKPIPE\n");
		FUNC3(device, 0x104410 + base, 0x00000002);
		intr &= ~0x00000002;
	}
	if (intr & 0x00000004) {
		FUNC0(ce, base);
		FUNC3(device, 0x104410 + base, 0x00000004);
		intr &= ~0x00000004;
	}
	if (intr) {
		FUNC2(subdev, "intr %08x\n", intr);
		FUNC3(device, 0x104410 + base, intr);
	}
}
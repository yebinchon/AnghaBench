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
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_sec2 {scalar_t__ addr; int /*<<< orphan*/  work; } ;
struct nvkm_engine {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,int) ; 
 int FUNC1 (struct nvkm_device*,scalar_t__) ; 
 struct nvkm_sec2* FUNC2 (struct nvkm_engine*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct nvkm_engine *engine)
{
	struct nvkm_sec2 *sec2 = FUNC2(engine);
	struct nvkm_subdev *subdev = &engine->subdev;
	struct nvkm_device *device = subdev->device;
	u32 disp = FUNC1(device, sec2->addr + 0x01c);
	u32 intr = FUNC1(device, sec2->addr + 0x008) & disp & ~(disp >> 16);

	if (intr & 0x00000040) {
		FUNC4(&sec2->work);
		FUNC3(device, sec2->addr + 0x004, 0x00000040);
		intr &= ~0x00000040;
	}

	if (intr) {
		FUNC0(subdev, "unhandled intr %08x\n", intr);
		FUNC3(device, sec2->addr + 0x004, intr);

	}
}
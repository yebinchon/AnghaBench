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
struct nvkm_gpio {int /*<<< orphan*/  subdev; } ;
struct nvkm_device {struct nvkm_gpio* gpio; } ;
struct nvkm_bus {struct nvkm_subdev subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int,int) ; 
 int FUNC2 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nvkm_bus *bus)
{
	struct nvkm_subdev *subdev = &bus->subdev;
	struct nvkm_device *device = subdev->device;
	u32 stat = FUNC2(device, 0x001100) & FUNC2(device, 0x001140);

	if (stat & 0x00000001) {
		FUNC0(subdev, "BUS ERROR\n");
		stat &= ~0x00000001;
		FUNC4(device, 0x001100, 0x00000001);
	}

	if (stat & 0x00000110) {
		struct nvkm_gpio *gpio = device->gpio;
		if (gpio)
			FUNC3(&gpio->subdev);
		stat &= ~0x00000110;
		FUNC4(device, 0x001100, 0x00000110);
	}

	if (stat) {
		FUNC0(subdev, "intr %08x\n", stat);
		FUNC1(device, 0x001140, stat, 0x00000000);
	}
}
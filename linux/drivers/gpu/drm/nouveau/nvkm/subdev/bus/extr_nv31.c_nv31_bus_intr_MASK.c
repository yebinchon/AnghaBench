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
struct nvkm_therm {int /*<<< orphan*/  subdev; } ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_gpio {int /*<<< orphan*/  subdev; } ;
struct nvkm_device {struct nvkm_therm* therm; struct nvkm_gpio* gpio; } ;
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
	u32 gpio = FUNC2(device, 0x001104) & FUNC2(device, 0x001144);

	if (gpio) {
		struct nvkm_gpio *gpio = device->gpio;
		if (gpio)
			FUNC3(&gpio->subdev);
	}

	if (stat & 0x00000008) {  /* NV41- */
		u32 addr = FUNC2(device, 0x009084);
		u32 data = FUNC2(device, 0x009088);

		FUNC0(subdev, "MMIO %s of %08x FAULT at %06x\n",
			   (addr & 0x00000002) ? "write" : "read", data,
			   (addr & 0x00fffffc));

		stat &= ~0x00000008;
		FUNC4(device, 0x001100, 0x00000008);
	}

	if (stat & 0x00070000) {
		struct nvkm_therm *therm = device->therm;
		if (therm)
			FUNC3(&therm->subdev);
		stat &= ~0x00070000;
		FUNC4(device, 0x001100, 0x00070000);
	}

	if (stat) {
		FUNC0(subdev, "intr %08x\n", stat);
		FUNC1(device, 0x001140, stat, 0x00000000);
	}
}
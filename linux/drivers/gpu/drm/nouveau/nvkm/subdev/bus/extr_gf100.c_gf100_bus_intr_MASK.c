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
struct nvkm_device {int dummy; } ;
struct nvkm_bus {struct nvkm_subdev subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int,int) ; 
 int FUNC2 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct nvkm_bus *bus)
{
	struct nvkm_subdev *subdev = &bus->subdev;
	struct nvkm_device *device = subdev->device;
	u32 stat = FUNC2(device, 0x001100) & FUNC2(device, 0x001140);

	if (stat & 0x0000000e) {
		u32 addr = FUNC2(device, 0x009084);
		u32 data = FUNC2(device, 0x009088);

		FUNC0(subdev,
			   "MMIO %s of %08x FAULT at %06x [ %s%s%s]\n",
			   (addr & 0x00000002) ? "write" : "read", data,
			   (addr & 0x00fffffc),
			   (stat & 0x00000002) ? "!ENGINE " : "",
			   (stat & 0x00000004) ? "IBUS " : "",
			   (stat & 0x00000008) ? "TIMEOUT " : "");

		FUNC3(device, 0x009084, 0x00000000);
		FUNC3(device, 0x001100, (stat & 0x0000000e));
		stat &= ~0x0000000e;
	}

	if (stat) {
		FUNC0(subdev, "intr %08x\n", stat);
		FUNC1(device, 0x001140, stat, 0x00000000);
	}
}
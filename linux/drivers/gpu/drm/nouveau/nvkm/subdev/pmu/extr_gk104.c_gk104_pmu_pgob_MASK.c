#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_pmu {TYPE_1__ subdev; } ;
struct nvkm_device {int chipset; int /*<<< orphan*/  cfgopt; int /*<<< orphan*/  fuse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int) ; 

__attribute__((used)) static void
FUNC6(struct nvkm_pmu *pmu, bool enable)
{
	struct nvkm_device *device = pmu->subdev.device;

	if (!(FUNC3(device->fuse, 0x31c) & 0x00000001))
		return;

	FUNC4(device, 0x000200, 0x00001000, 0x00000000);
	FUNC5(device, 0x000200);
	FUNC4(device, 0x000200, 0x08000000, 0x08000000);
	FUNC1(50);

	FUNC4(device, 0x10a78c, 0x00000002, 0x00000002);
	FUNC4(device, 0x10a78c, 0x00000001, 0x00000001);
	FUNC4(device, 0x10a78c, 0x00000001, 0x00000000);

	FUNC4(device, 0x020004, 0xc0000000, enable ? 0xc0000000 : 0x40000000);
	FUNC1(50);

	FUNC4(device, 0x10a78c, 0x00000002, 0x00000000);
	FUNC4(device, 0x10a78c, 0x00000001, 0x00000001);
	FUNC4(device, 0x10a78c, 0x00000001, 0x00000000);

	FUNC4(device, 0x000200, 0x08000000, 0x00000000);
	FUNC4(device, 0x000200, 0x00001000, 0x00001000);
	FUNC5(device, 0x000200);

	if (FUNC2(device->cfgopt, "War00C800_0", true)) {
		switch (device->chipset) {
		case 0xe4:
			FUNC0(device, 0x04000000);
			FUNC0(device, 0x06000000);
			FUNC0(device, 0x0c000000);
			FUNC0(device, 0x0e000000);
			break;
		case 0xe6:
			FUNC0(device, 0x02000000);
			FUNC0(device, 0x04000000);
			FUNC0(device, 0x0a000000);
			break;
		case 0xe7:
			FUNC0(device, 0x02000000);
			break;
		default:
			break;
		}
	}
}
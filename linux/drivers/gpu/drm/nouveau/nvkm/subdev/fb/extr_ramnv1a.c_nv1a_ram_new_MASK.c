#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct nvkm_ram {int dummy; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_fb {TYPE_2__ subdev; } ;
struct TYPE_3__ {int chipset; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  NVKM_RAM_TYPE_STOLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv04_ram_func ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct nvkm_fb*,int /*<<< orphan*/ ,int,struct nvkm_ram**) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,int*) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct nvkm_fb *fb, struct nvkm_ram **pram)
{
	struct pci_dev *bridge;
	u32 mem, mib;
	int domain = 0;
	struct pci_dev *pdev = NULL;

	if (FUNC1(fb->subdev.device->dev))
		pdev = FUNC7(fb->subdev.device->dev);

	if (pdev)
		domain = FUNC4(pdev->bus);

	bridge = FUNC5(domain, 0, FUNC0(0, 1));
	if (!bridge) {
		FUNC2(&fb->subdev, "no bridge device\n");
		return -ENODEV;
	}

	if (fb->subdev.device->chipset == 0x1a) {
		FUNC6(bridge, 0x7c, &mem);
		mib = ((mem >> 6) & 31) + 1;
	} else {
		FUNC6(bridge, 0x84, &mem);
		mib = ((mem >> 4) & 127) + 1;
	}

	return FUNC3(&nv04_ram_func, fb, NVKM_RAM_TYPE_STOLEN,
			     mib * 1024 * 1024, pram);
}
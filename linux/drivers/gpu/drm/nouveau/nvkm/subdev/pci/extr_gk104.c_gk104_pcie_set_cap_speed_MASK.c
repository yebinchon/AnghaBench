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
struct nvkm_pci {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;
typedef  enum nvkm_pcie_speed { ____Placeholder_nvkm_pcie_speed } nvkm_pcie_speed ;

/* Variables and functions */
#define  NVKM_PCIE_SPEED_2_5 130 
#define  NVKM_PCIE_SPEED_5_0 129 
#define  NVKM_PCIE_SPEED_8_0 128 
 int /*<<< orphan*/  FUNC0 (struct nvkm_pci*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nvkm_pci *pci, enum nvkm_pcie_speed speed)
{
	struct nvkm_device *device = pci->subdev.device;

	switch (speed) {
	case NVKM_PCIE_SPEED_2_5:
		FUNC0(pci, false);
		FUNC1(device, 0x8c1c0, 0x30000, 0x10000);
		break;
	case NVKM_PCIE_SPEED_5_0:
		FUNC0(pci, true);
		FUNC1(device, 0x8c1c0, 0x30000, 0x20000);
		break;
	case NVKM_PCIE_SPEED_8_0:
		FUNC0(pci, true);
		FUNC1(device, 0x8c1c0, 0x30000, 0x30000);
		break;
	}
}
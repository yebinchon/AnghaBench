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
typedef  int /*<<< orphan*/  u8 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_pci {struct nvkm_subdev subdev; } ;
typedef  enum nvkm_pcie_speed { ____Placeholder_nvkm_pcie_speed } nvkm_pcie_speed ;

/* Variables and functions */
 int FUNC0 (struct nvkm_pci*) ; 
 int FUNC1 (struct nvkm_pci*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_pci*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_subdev*,char*) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_pci *pci, enum nvkm_pcie_speed speed, u8 width)
{
	struct nvkm_subdev *subdev = &pci->subdev;
	enum nvkm_pcie_speed lnk_ctl_speed = FUNC1(pci);
	enum nvkm_pcie_speed lnk_cap_speed = FUNC0(pci);

	if (speed > lnk_cap_speed) {
		speed = lnk_cap_speed;
		FUNC3(subdev, "dropping requested speed due too low cap"
			  " speed\n");
	}

	if (speed > lnk_ctl_speed) {
		speed = lnk_ctl_speed;
		FUNC3(subdev, "dropping requested speed due too low"
			  " lnkctl speed\n");
	}

	FUNC2(pci, speed);
	return 0;
}
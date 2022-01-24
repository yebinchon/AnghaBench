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
struct nvkm_subdev {int dummy; } ;
struct nvkm_pci {struct nvkm_subdev subdev; } ;
typedef  enum nvkm_pcie_speed { ____Placeholder_nvkm_pcie_speed } nvkm_pcie_speed ;

/* Variables and functions */
 int FUNC0 (struct nvkm_pci*) ; 
 int FUNC1 (struct nvkm_pci*) ; 
 int FUNC2 (struct nvkm_pci*) ; 
 int FUNC3 (struct nvkm_pci*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_pci*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_pci*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_subdev*,char*) ; 

__attribute__((used)) static int
FUNC10(struct nvkm_pci * pci)
{
	enum nvkm_pcie_speed lnkctl_speed, max_speed, cap_speed;
	struct nvkm_subdev *subdev = &pci->subdev;

	if (FUNC0(pci) < 2)
		return 0;

	lnkctl_speed = FUNC2(pci);
	max_speed = FUNC3(pci);
	cap_speed = FUNC1(pci);

	if (cap_speed != max_speed) {
		FUNC8(subdev, "adjusting cap to max speed\n");
		FUNC4(pci, max_speed);
		cap_speed = FUNC1(pci);
		if (cap_speed != max_speed)
			FUNC9(subdev, "failed to adjust cap speed\n");
	}

	if (lnkctl_speed != max_speed) {
		FUNC6(subdev, "adjusting lnkctl to max speed\n");
		FUNC5(pci, max_speed);
		lnkctl_speed = FUNC2(pci);
		if (lnkctl_speed != max_speed)
			FUNC7(subdev, "failed to adjust lnkctl speed\n");
	}

	return 0;
}
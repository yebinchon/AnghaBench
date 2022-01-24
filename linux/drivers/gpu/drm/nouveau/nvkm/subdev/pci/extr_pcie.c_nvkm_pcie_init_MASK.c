#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvkm_subdev {int dummy; } ;
struct TYPE_6__ {int speed; int /*<<< orphan*/  width; } ;
struct nvkm_pci {TYPE_3__ pcie; TYPE_2__* func; struct nvkm_subdev subdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* init ) (struct nvkm_pci*) ;} ;
struct TYPE_5__ {TYPE_1__ pcie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,int) ; 
 int FUNC1 (struct nvkm_pci*) ; 
 int FUNC2 (struct nvkm_pci*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_pci*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nvkm_pci*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_pci*) ; 

int
FUNC6(struct nvkm_pci *pci)
{
	struct nvkm_subdev *subdev = &pci->subdev;
	int ret;

	/* raise pcie version first */
	ret = FUNC2(pci);
	if (ret > 0) {
		int max_version = FUNC1(pci);
		if (max_version > 0 && max_version > ret)
			ret = FUNC4(pci, max_version);

		if (ret < max_version)
			FUNC0(subdev, "couldn't raise version: %i\n", ret);
	}

	if (pci->func->pcie.init)
		pci->func->pcie.init(pci);

	if (pci->pcie.speed != -1)
		FUNC3(pci, pci->pcie.speed, pci->pcie.width);

	return 0;
}
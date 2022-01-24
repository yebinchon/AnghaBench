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
struct nvkm_subdev {int dummy; } ;
struct TYPE_3__ {scalar_t__ bridge; } ;
struct nvkm_pci {TYPE_2__* func; scalar_t__ msi; int /*<<< orphan*/  pdev; TYPE_1__ agp; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* msi_rearm ) (struct nvkm_pci*) ;int /*<<< orphan*/  (* init ) (struct nvkm_pci*) ;} ;

/* Variables and functions */
 int FUNC0 (struct nvkm_pci*) ; 
 struct nvkm_pci* FUNC1 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_pci*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_pci*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_pci*) ; 

__attribute__((used)) static int
FUNC6(struct nvkm_subdev *subdev)
{
	struct nvkm_pci *pci = FUNC1(subdev);
	int ret;

	if (pci->agp.bridge) {
		ret = FUNC0(pci);
		if (ret)
			return ret;
	} else if (FUNC3(pci->pdev)) {
		FUNC2(pci);
	}

	if (pci->func->init)
		pci->func->init(pci);

	/* Ensure MSI interrupts are armed, for the case where there are
	 * already interrupts pending (for whatever reason) at load time.
	 */
	if (pci->msi)
		pci->func->msi_rearm(pci);

	return 0;
}
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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_pci {int /*<<< orphan*/  irq; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 struct nvkm_pci* FUNC0 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  nvkm_pci_intr ; 
 int FUNC1 (struct nvkm_pci*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct nvkm_pci*) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_subdev *subdev)
{
	struct nvkm_pci *pci = FUNC0(subdev);
	struct pci_dev *pdev = pci->pdev;
	int ret;

	if (FUNC2(pci->pdev)) {
		ret = FUNC1(pci);
		if (ret)
			return ret;
	}

	ret = FUNC3(pdev->irq, nvkm_pci_intr, IRQF_SHARED, "nvkm", pci);
	if (ret)
		return ret;

	pci->irq = pdev->irq;
	return 0;
}
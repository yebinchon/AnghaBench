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
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma; scalar_t__ va; int /*<<< orphan*/  size; } ;
struct hisi_qm {int /*<<< orphan*/  io_base; TYPE_1__ qdma; scalar_t__ use_dma_api; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_qm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hisi_qm*) ; 

void FUNC8(struct hisi_qm *qm)
{
	struct pci_dev *pdev = qm->pdev;
	struct device *dev = &pdev->dev;

	if (qm->use_dma_api && qm->qdma.va) {
		FUNC1(qm);
		FUNC0(dev, qm->qdma.size,
				  qm->qdma.va, qm->qdma.dma);
		FUNC3(&qm->qdma, 0, sizeof(qm->qdma));
	}

	FUNC7(qm);
	FUNC5(pdev);
	FUNC2(qm->io_base);
	FUNC6(pdev);
	FUNC4(pdev);
}
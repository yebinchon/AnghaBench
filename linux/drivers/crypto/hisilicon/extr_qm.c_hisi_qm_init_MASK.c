#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct pci_dev {scalar_t__ is_physfn; struct device dev; } ;
struct hisi_qm {int ver; int /*<<< orphan*/  io_base; scalar_t__ use_dma_api; int /*<<< orphan*/  qps_lock; int /*<<< orphan*/  mailbox_lock; TYPE_1__* ops; struct pci_dev* pdev; int /*<<< orphan*/  dev_name; } ;
struct TYPE_3__ {unsigned int (* get_irq_num ) (struct hisi_qm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  PCI_BAR_2 ; 
 int /*<<< orphan*/  PCI_IRQ_MSI ; 
#define  QM_HW_V1 129 
#define  QM_HW_V2 128 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct pci_dev*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 TYPE_1__ qm_hw_ops_v1 ; 
 TYPE_1__ qm_hw_ops_v2 ; 
 int FUNC16 (struct hisi_qm*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC18 (struct hisi_qm*) ; 

int FUNC19(struct hisi_qm *qm)
{
	struct pci_dev *pdev = qm->pdev;
	struct device *dev = &pdev->dev;
	unsigned int num_vec;
	int ret;

	switch (qm->ver) {
	case QM_HW_V1:
		qm->ops = &qm_hw_ops_v1;
		break;
	case QM_HW_V2:
		qm->ops = &qm_hw_ops_v2;
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC9(pdev);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Failed to enable device mem!\n");
		return ret;
	}

	ret = FUNC12(pdev, qm->dev_name);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Failed to request mem regions!\n");
		goto err_disable_pcidev;
	}

	qm->io_base = FUNC4(FUNC14(pdev, PCI_BAR_2),
			      FUNC13(qm->pdev, PCI_BAR_2));
	if (!qm->io_base) {
		ret = -EIO;
		goto err_release_mem_regions;
	}

	ret = FUNC3(dev, FUNC0(64));
	if (ret < 0)
		goto err_iounmap;
	FUNC15(pdev);

	if (!qm->ops->get_irq_num) {
		ret = -EOPNOTSUPP;
		goto err_iounmap;
	}
	num_vec = qm->ops->get_irq_num(qm);
	ret = FUNC7(pdev, num_vec, num_vec, PCI_IRQ_MSI);
	if (ret < 0) {
		FUNC2(dev, "Failed to enable MSI vectors!\n");
		goto err_iounmap;
	}

	ret = FUNC16(qm);
	if (ret)
		goto err_free_irq_vectors;

	FUNC6(&qm->mailbox_lock);
	FUNC17(&qm->qps_lock);

	FUNC1(dev, "init qm %s with %s\n", pdev->is_physfn ? "pf" : "vf",
		qm->use_dma_api ? "dma api" : "iommu api");

	return 0;

err_free_irq_vectors:
	FUNC10(pdev);
err_iounmap:
	FUNC5(qm->io_base);
err_release_mem_regions:
	FUNC11(pdev);
err_disable_pcidev:
	FUNC8(pdev);

	return ret;
}
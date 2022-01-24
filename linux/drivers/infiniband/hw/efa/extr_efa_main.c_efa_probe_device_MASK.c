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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  msix_vector_idx; } ;
struct TYPE_3__ {int /*<<< orphan*/  msix_vector_idx; } ;
struct efa_com_dev {int /*<<< orphan*/  reg_bar; TYPE_2__ aenq; TYPE_1__ aq; int /*<<< orphan*/ * dmadev; struct efa_dev* efa_dev; } ;
struct efa_dev {int /*<<< orphan*/  ibdev; int /*<<< orphan*/  admin_msix_vector_idx; void* reg_bar_len; void* reg_bar_addr; void* mem_bar_len; void* mem_bar_addr; struct pci_dev* pdev; struct efa_com_dev edev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_MODULE_NAME ; 
 int EFAULT ; 
 int EFA_BASE_BAR_MASK ; 
 int /*<<< orphan*/  EFA_MEM_BAR ; 
 int /*<<< orphan*/  EFA_REG_BAR ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 struct efa_dev* FUNC0 (int) ; 
 int ETIME ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  aenq_handlers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct efa_com_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct efa_com_dev*) ; 
 int FUNC6 (struct efa_com_dev*) ; 
 int /*<<< orphan*/  efa_dev ; 
 int FUNC7 (struct efa_com_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct efa_dev*) ; 
 int FUNC9 (struct efa_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct efa_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct efa_dev*,int) ; 
 int FUNC12 (struct efa_dev*) ; 
 struct efa_dev* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ibdev ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int FUNC16 (struct pci_dev*) ; 
 int FUNC17 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 void* FUNC18 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC19 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*,struct efa_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*) ; 

__attribute__((used)) static struct efa_dev *FUNC23(struct pci_dev *pdev)
{
	struct efa_com_dev *edev;
	struct efa_dev *dev;
	int bars;
	int err;

	err = FUNC16(pdev);
	if (err) {
		FUNC1(&pdev->dev, "pci_enable_device_mem() failed!\n");
		return FUNC0(err);
	}

	FUNC22(pdev);

	dev = FUNC13(efa_dev, ibdev);
	if (!dev) {
		FUNC1(&pdev->dev, "Device alloc failed\n");
		err = -ENOMEM;
		goto err_disable_device;
	}

	FUNC21(pdev, dev);
	edev = &dev->edev;
	edev->efa_dev = dev;
	edev->dmadev = &pdev->dev;
	dev->pdev = pdev;

	bars = FUNC20(pdev, IORESOURCE_MEM) & EFA_BASE_BAR_MASK;
	err = FUNC17(pdev, bars, DRV_MODULE_NAME);
	if (err) {
		FUNC1(&pdev->dev, "pci_request_selected_regions failed %d\n",
			err);
		goto err_ibdev_destroy;
	}

	dev->reg_bar_addr = FUNC19(pdev, EFA_REG_BAR);
	dev->reg_bar_len = FUNC18(pdev, EFA_REG_BAR);
	dev->mem_bar_addr = FUNC19(pdev, EFA_MEM_BAR);
	dev->mem_bar_len = FUNC18(pdev, EFA_MEM_BAR);

	edev->reg_bar = FUNC2(&pdev->dev,
				     dev->reg_bar_addr,
				     dev->reg_bar_len);
	if (!edev->reg_bar) {
		FUNC1(&pdev->dev, "Failed to remap register bar\n");
		err = -EFAULT;
		goto err_release_bars;
	}

	err = FUNC6(edev);
	if (err) {
		FUNC1(&pdev->dev, "Failed to init readless MMIO\n");
		goto err_iounmap;
	}

	err = FUNC7(edev, pdev);
	if (err) {
		FUNC1(&pdev->dev, "EFA device init failed\n");
		if (err == -ETIME)
			err = -EPROBE_DEFER;
		goto err_reg_read_destroy;
	}

	err = FUNC9(dev);
	if (err)
		goto err_reg_read_destroy;

	edev->aq.msix_vector_idx = dev->admin_msix_vector_idx;
	edev->aenq.msix_vector_idx = dev->admin_msix_vector_idx;

	err = FUNC12(dev);
	if (err)
		goto err_disable_msix;

	err = FUNC4(edev, &aenq_handlers);
	if (err)
		goto err_free_mgmnt_irq;

	return dev;

err_free_mgmnt_irq:
	FUNC10(dev);
err_disable_msix:
	FUNC8(dev);
err_reg_read_destroy:
	FUNC5(edev);
err_iounmap:
	FUNC3(&pdev->dev, edev->reg_bar);
err_release_bars:
	FUNC11(dev, EFA_BASE_BAR_MASK);
err_ibdev_destroy:
	FUNC14(&dev->ibdev);
err_disable_device:
	FUNC15(pdev);
	return FUNC0(err);
}
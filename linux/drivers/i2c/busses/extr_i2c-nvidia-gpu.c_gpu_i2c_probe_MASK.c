#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {TYPE_1__ dev; int /*<<< orphan*/ * quirks; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct gpu_i2c_dev {TYPE_2__ adapter; int /*<<< orphan*/  regs; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_IRQ_MSI ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct gpu_i2c_dev*) ; 
 struct gpu_i2c_dev* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gpu_i2c_dev*) ; 
 int /*<<< orphan*/  gpu_i2c_algorithm ; 
 int /*<<< orphan*/  gpu_i2c_quirks ; 
 int FUNC4 (struct gpu_i2c_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct gpu_i2c_dev*) ; 
 int FUNC8 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct gpu_i2c_dev *i2cd;
	int status;

	i2cd = FUNC2(&pdev->dev, sizeof(*i2cd), GFP_KERNEL);
	if (!i2cd)
		return -ENOMEM;

	i2cd->dev = &pdev->dev;
	FUNC1(&pdev->dev, i2cd);

	status = FUNC11(pdev);
	if (status < 0) {
		FUNC0(&pdev->dev, "pcim_enable_device failed %d\n", status);
		return status;
	}

	FUNC10(pdev);

	i2cd->regs = FUNC12(pdev, 0, 0);
	if (!i2cd->regs) {
		FUNC0(&pdev->dev, "pcim_iomap failed\n");
		return -ENOMEM;
	}

	status = FUNC8(pdev, 1, 1, PCI_IRQ_MSI);
	if (status < 0) {
		FUNC0(&pdev->dev, "pci_alloc_irq_vectors err %d\n", status);
		return status;
	}

	FUNC3(i2cd);

	FUNC7(&i2cd->adapter, i2cd);
	i2cd->adapter.owner = THIS_MODULE;
	FUNC17(i2cd->adapter.name, "NVIDIA GPU I2C adapter",
		sizeof(i2cd->adapter.name));
	i2cd->adapter.algo = &gpu_i2c_algorithm;
	i2cd->adapter.quirks = &gpu_i2c_quirks;
	i2cd->adapter.dev.parent = &pdev->dev;
	status = FUNC5(&i2cd->adapter);
	if (status < 0)
		goto free_irq_vectors;

	status = FUNC4(i2cd, pdev->irq);
	if (status < 0) {
		FUNC0(&pdev->dev, "gpu_populate_client failed %d\n", status);
		goto del_adapter;
	}

	FUNC15(&pdev->dev, 3000);
	FUNC16(&pdev->dev);
	FUNC14(&pdev->dev);
	FUNC13(&pdev->dev);

	return 0;

del_adapter:
	FUNC6(&i2cd->adapter);
free_irq_vectors:
	FUNC9(pdev);
	return status;
}
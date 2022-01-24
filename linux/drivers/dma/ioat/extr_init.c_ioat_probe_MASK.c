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
typedef  int /*<<< orphan*/  u64 ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct dma_device {int /*<<< orphan*/  chancnt; struct device* dev; int /*<<< orphan*/  cap_mask; } ;
struct ioatdma_device {int /*<<< orphan*/  completion_pool; struct pci_dev* pdev; struct dma_device dma_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SMP_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ioatdma_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ioatdma_device*) ; 
 int FUNC6 (struct ioatdma_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ioatdma_device*) ; 

__attribute__((used)) static int FUNC8(struct ioatdma_device *ioat_dma)
{
	int err = -ENODEV;
	struct dma_device *dma = &ioat_dma->dma_dev;
	struct pci_dev *pdev = ioat_dma->pdev;
	struct device *dev = &pdev->dev;

	ioat_dma->completion_pool = FUNC2("completion_pool", dev,
						    sizeof(u64),
						    SMP_CACHE_BYTES,
						    SMP_CACHE_BYTES);

	if (!ioat_dma->completion_pool) {
		err = -ENOMEM;
		goto err_out;
	}

	FUNC7(ioat_dma);

	FUNC1(DMA_MEMCPY, dma->cap_mask);
	dma->dev = &pdev->dev;

	if (!dma->chancnt) {
		FUNC0(dev, "channel enumeration error\n");
		goto err_setup_interrupts;
	}

	err = FUNC6(ioat_dma);
	if (err)
		goto err_setup_interrupts;

	err = FUNC4(ioat_dma);
	if (err)
		goto err_self_test;

	return 0;

err_self_test:
	FUNC5(ioat_dma);
err_setup_interrupts:
	FUNC3(ioat_dma->completion_pool);
err_out:
	return err;
}
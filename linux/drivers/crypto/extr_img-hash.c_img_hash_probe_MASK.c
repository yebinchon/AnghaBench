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
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct img_hash_dev {int /*<<< orphan*/  dma_task; int /*<<< orphan*/  done_task; void* hash_clk; void* sys_clk; int /*<<< orphan*/  dma_lch; int /*<<< orphan*/  list; int /*<<< orphan*/  bus_addr; void* cpu_addr; void* io_base; int /*<<< orphan*/  queue; struct device* dev; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IMG_HASH_QUEUE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 void* FUNC10 (struct device*,char*) ; 
 void* FUNC11 (struct device*,struct resource*) ; 
 struct img_hash_dev* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct img_hash_dev*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_1__ img_hash ; 
 int FUNC17 (struct img_hash_dev*) ; 
 int /*<<< orphan*/  img_hash_dma_task ; 
 int /*<<< orphan*/  img_hash_done_task ; 
 int /*<<< orphan*/  img_irq_handler ; 
 int FUNC18 (struct img_hash_dev*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC22 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,struct img_hash_dev*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct img_hash_dev *hdev;
	struct device *dev = &pdev->dev;
	struct resource *hash_res;
	int	irq;
	int err;

	hdev = FUNC12(dev, sizeof(*hdev), GFP_KERNEL);
	if (hdev == NULL)
		return -ENOMEM;

	FUNC25(&hdev->lock);

	hdev->dev = dev;

	FUNC23(pdev, hdev);

	FUNC0(&hdev->list);

	FUNC27(&hdev->done_task, img_hash_done_task, (unsigned long)hdev);
	FUNC27(&hdev->dma_task, img_hash_dma_task, (unsigned long)hdev);

	FUNC5(&hdev->queue, IMG_HASH_QUEUE_LENGTH);

	/* Register bank */
	hdev->io_base = FUNC13(pdev, 0);
	if (FUNC1(hdev->io_base)) {
		err = FUNC2(hdev->io_base);
		FUNC7(dev, "can't ioremap, returned %d\n", err);

		goto res_err;
	}

	/* Write port (DMA or CPU) */
	hash_res = FUNC22(pdev, IORESOURCE_MEM, 1);
	hdev->cpu_addr = FUNC11(dev, hash_res);
	if (FUNC1(hdev->cpu_addr)) {
		FUNC7(dev, "can't ioremap write port\n");
		err = FUNC2(hdev->cpu_addr);
		goto res_err;
	}
	hdev->bus_addr = hash_res->start;

	irq = FUNC21(pdev, 0);
	if (irq < 0) {
		err = irq;
		goto res_err;
	}

	err = FUNC14(dev, irq, img_irq_handler, 0,
			       FUNC9(dev), hdev);
	if (err) {
		FUNC7(dev, "unable to request irq\n");
		goto res_err;
	}
	FUNC6(dev, "using IRQ channel %d\n", irq);

	hdev->hash_clk = FUNC10(&pdev->dev, "hash");
	if (FUNC1(hdev->hash_clk)) {
		FUNC7(dev, "clock initialization failed.\n");
		err = FUNC2(hdev->hash_clk);
		goto res_err;
	}

	hdev->sys_clk = FUNC10(&pdev->dev, "sys");
	if (FUNC1(hdev->sys_clk)) {
		FUNC7(dev, "clock initialization failed.\n");
		err = FUNC2(hdev->sys_clk);
		goto res_err;
	}

	err = FUNC4(hdev->hash_clk);
	if (err)
		goto res_err;

	err = FUNC4(hdev->sys_clk);
	if (err)
		goto clk_err;

	err = FUNC17(hdev);
	if (err)
		goto dma_err;

	FUNC6(dev, "using %s for DMA transfers\n",
		FUNC15(hdev->dma_lch));

	FUNC24(&img_hash.lock);
	FUNC19(&hdev->list, &img_hash.dev_list);
	FUNC26(&img_hash.lock);

	err = FUNC18(hdev);
	if (err)
		goto err_algs;
	FUNC8(dev, "Img MD5/SHA1/SHA224/SHA256 Hardware accelerator initialized\n");

	return 0;

err_algs:
	FUNC24(&img_hash.lock);
	FUNC20(&hdev->list);
	FUNC26(&img_hash.lock);
	FUNC16(hdev->dma_lch);
dma_err:
	FUNC3(hdev->sys_clk);
clk_err:
	FUNC3(hdev->hash_clk);
res_err:
	FUNC28(&hdev->done_task);
	FUNC28(&hdev->dma_task);

	return err;
}
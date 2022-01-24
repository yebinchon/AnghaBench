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
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct crypto_platform_data* platform_data; } ;
struct platform_device {struct device dev; } ;
struct crypto_platform_data {int /*<<< orphan*/  dma_slave; } ;
struct TYPE_5__ {scalar_t__ has_dma; scalar_t__ has_sha_384_512; scalar_t__ has_sha224; } ;
struct TYPE_4__ {int /*<<< orphan*/  chan; } ;
struct atmel_sha_dev {int irq; int /*<<< orphan*/  done_task; int /*<<< orphan*/  queue_task; struct crypto_platform_data* iclk; TYPE_2__ caps; int /*<<< orphan*/  list; TYPE_1__ dma_lch_in; struct crypto_platform_data* io_base; int /*<<< orphan*/  phys_base; int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; struct device* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_SHA_QUEUE_LENGTH ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (struct crypto_platform_data*) ; 
 int FUNC2 (struct crypto_platform_data*) ; 
 TYPE_3__ atmel_sha ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_sha_dev*) ; 
 int FUNC4 (struct atmel_sha_dev*,struct crypto_platform_data*) ; 
 int /*<<< orphan*/  atmel_sha_done_task ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_sha_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct atmel_sha_dev*) ; 
 int /*<<< orphan*/  atmel_sha_irq ; 
 struct crypto_platform_data* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  atmel_sha_queue_task ; 
 int FUNC8 (struct atmel_sha_dev*) ; 
 int FUNC9 (struct crypto_platform_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct crypto_platform_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,char*,char*,...) ; 
 struct crypto_platform_data* FUNC14 (struct device*,char*) ; 
 struct crypto_platform_data* FUNC15 (struct device*,struct resource*) ; 
 struct atmel_sha_dev* FUNC16 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct atmel_sha_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC22 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,struct atmel_sha_dev*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct atmel_sha_dev *sha_dd;
	struct crypto_platform_data	*pdata;
	struct device *dev = &pdev->dev;
	struct resource *sha_res;
	int err;

	sha_dd = FUNC16(&pdev->dev, sizeof(*sha_dd), GFP_KERNEL);
	if (sha_dd == NULL) {
		err = -ENOMEM;
		goto sha_dd_err;
	}

	sha_dd->dev = dev;

	FUNC23(pdev, sha_dd);

	FUNC0(&sha_dd->list);
	FUNC25(&sha_dd->lock);

	FUNC27(&sha_dd->done_task, atmel_sha_done_task,
					(unsigned long)sha_dd);
	FUNC27(&sha_dd->queue_task, atmel_sha_queue_task,
					(unsigned long)sha_dd);

	FUNC11(&sha_dd->queue, ATMEL_SHA_QUEUE_LENGTH);

	/* Get the base address */
	sha_res = FUNC22(pdev, IORESOURCE_MEM, 0);
	if (!sha_res) {
		FUNC12(dev, "no MEM resource info\n");
		err = -ENODEV;
		goto res_err;
	}
	sha_dd->phys_base = sha_res->start;

	/* Get the IRQ */
	sha_dd->irq = FUNC21(pdev,  0);
	if (sha_dd->irq < 0) {
		err = sha_dd->irq;
		goto res_err;
	}

	err = FUNC17(&pdev->dev, sha_dd->irq, atmel_sha_irq,
			       IRQF_SHARED, "atmel-sha", sha_dd);
	if (err) {
		FUNC12(dev, "unable to request sha irq.\n");
		goto res_err;
	}

	/* Initializing the clock */
	sha_dd->iclk = FUNC14(&pdev->dev, "sha_clk");
	if (FUNC1(sha_dd->iclk)) {
		FUNC12(dev, "clock initialization failed.\n");
		err = FUNC2(sha_dd->iclk);
		goto res_err;
	}

	sha_dd->io_base = FUNC15(&pdev->dev, sha_res);
	if (FUNC1(sha_dd->io_base)) {
		FUNC12(dev, "can't ioremap\n");
		err = FUNC2(sha_dd->io_base);
		goto res_err;
	}

	err = FUNC9(sha_dd->iclk);
	if (err)
		goto res_err;

	FUNC6(sha_dd);

	FUNC5(sha_dd);

	if (sha_dd->caps.has_dma) {
		pdata = pdev->dev.platform_data;
		if (!pdata) {
			pdata = FUNC7(pdev);
			if (FUNC1(pdata)) {
				FUNC12(&pdev->dev, "platform data not available\n");
				err = FUNC2(pdata);
				goto iclk_unprepare;
			}
		}
		if (!pdata->dma_slave) {
			err = -ENXIO;
			goto iclk_unprepare;
		}
		err = FUNC4(sha_dd, pdata);
		if (err)
			goto err_sha_dma;

		FUNC13(dev, "using %s for DMA transfers\n",
				FUNC18(sha_dd->dma_lch_in.chan));
	}

	FUNC24(&atmel_sha.lock);
	FUNC19(&sha_dd->list, &atmel_sha.dev_list);
	FUNC26(&atmel_sha.lock);

	err = FUNC8(sha_dd);
	if (err)
		goto err_algs;

	FUNC13(dev, "Atmel SHA1/SHA256%s%s\n",
			sha_dd->caps.has_sha224 ? "/SHA224" : "",
			sha_dd->caps.has_sha_384_512 ? "/SHA384/SHA512" : "");

	return 0;

err_algs:
	FUNC24(&atmel_sha.lock);
	FUNC20(&sha_dd->list);
	FUNC26(&atmel_sha.lock);
	if (sha_dd->caps.has_dma)
		FUNC3(sha_dd);
err_sha_dma:
iclk_unprepare:
	FUNC10(sha_dd->iclk);
res_err:
	FUNC28(&sha_dd->queue_task);
	FUNC28(&sha_dd->done_task);
sha_dd_err:
	FUNC12(dev, "initialization failed.\n");

	return err;
}
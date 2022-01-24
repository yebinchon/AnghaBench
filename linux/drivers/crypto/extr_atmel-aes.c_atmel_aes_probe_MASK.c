#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct crypto_platform_data* platform_data; } ;
struct platform_device {struct device dev; } ;
struct crypto_platform_data {int /*<<< orphan*/  dma_slave; } ;
struct TYPE_7__ {int /*<<< orphan*/  chan; } ;
struct TYPE_6__ {int /*<<< orphan*/  chan; } ;
struct TYPE_5__ {scalar_t__ has_authenc; } ;
struct atmel_aes_dev {int irq; int /*<<< orphan*/  queue_task; int /*<<< orphan*/  done_task; struct crypto_platform_data* iclk; int /*<<< orphan*/  list; TYPE_3__ dst; TYPE_2__ src; TYPE_1__ caps; struct crypto_platform_data* io_base; int /*<<< orphan*/  phys_base; int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; struct device* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_AES_QUEUE_LENGTH ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (struct crypto_platform_data*) ; 
 int FUNC2 (struct crypto_platform_data*) ; 
 TYPE_4__ atmel_aes ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_aes_dev*) ; 
 int FUNC4 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_aes_dev*) ; 
 int FUNC6 (struct atmel_aes_dev*,struct crypto_platform_data*) ; 
 int /*<<< orphan*/  atmel_aes_done_task ; 
 int /*<<< orphan*/  FUNC7 (struct atmel_aes_dev*) ; 
 int FUNC8 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  atmel_aes_irq ; 
 struct crypto_platform_data* FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  atmel_aes_queue_task ; 
 int FUNC10 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (struct crypto_platform_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct crypto_platform_data*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_platform_data* FUNC17 (struct device*,char*) ; 
 struct crypto_platform_data* FUNC18 (struct device*,struct resource*) ; 
 struct atmel_aes_dev* FUNC19 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC25 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct platform_device*,struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC32(struct platform_device *pdev)
{
	struct atmel_aes_dev *aes_dd;
	struct crypto_platform_data *pdata;
	struct device *dev = &pdev->dev;
	struct resource *aes_res;
	int err;

	pdata = pdev->dev.platform_data;
	if (!pdata) {
		pdata = FUNC9(pdev);
		if (FUNC1(pdata)) {
			err = FUNC2(pdata);
			goto aes_dd_err;
		}
	}

	if (!pdata->dma_slave) {
		err = -ENXIO;
		goto aes_dd_err;
	}

	aes_dd = FUNC19(&pdev->dev, sizeof(*aes_dd), GFP_KERNEL);
	if (aes_dd == NULL) {
		err = -ENOMEM;
		goto aes_dd_err;
	}

	aes_dd->dev = dev;

	FUNC26(pdev, aes_dd);

	FUNC0(&aes_dd->list);
	FUNC28(&aes_dd->lock);

	FUNC30(&aes_dd->done_task, atmel_aes_done_task,
					(unsigned long)aes_dd);
	FUNC30(&aes_dd->queue_task, atmel_aes_queue_task,
					(unsigned long)aes_dd);

	FUNC14(&aes_dd->queue, ATMEL_AES_QUEUE_LENGTH);

	/* Get the base address */
	aes_res = FUNC25(pdev, IORESOURCE_MEM, 0);
	if (!aes_res) {
		FUNC15(dev, "no MEM resource info\n");
		err = -ENODEV;
		goto res_err;
	}
	aes_dd->phys_base = aes_res->start;

	/* Get the IRQ */
	aes_dd->irq = FUNC24(pdev,  0);
	if (aes_dd->irq < 0) {
		err = aes_dd->irq;
		goto res_err;
	}

	err = FUNC20(&pdev->dev, aes_dd->irq, atmel_aes_irq,
			       IRQF_SHARED, "atmel-aes", aes_dd);
	if (err) {
		FUNC15(dev, "unable to request aes irq.\n");
		goto res_err;
	}

	/* Initializing the clock */
	aes_dd->iclk = FUNC17(&pdev->dev, "aes_clk");
	if (FUNC1(aes_dd->iclk)) {
		FUNC15(dev, "clock initialization failed.\n");
		err = FUNC2(aes_dd->iclk);
		goto res_err;
	}

	aes_dd->io_base = FUNC18(&pdev->dev, aes_res);
	if (FUNC1(aes_dd->io_base)) {
		FUNC15(dev, "can't ioremap\n");
		err = FUNC2(aes_dd->io_base);
		goto res_err;
	}

	err = FUNC12(aes_dd->iclk);
	if (err)
		goto res_err;

	err = FUNC8(aes_dd);
	if (err)
		goto iclk_unprepare;

	FUNC7(aes_dd);

#ifdef CONFIG_CRYPTO_DEV_ATMEL_AUTHENC
	if (aes_dd->caps.has_authenc && !atmel_sha_authenc_is_ready()) {
		err = -EPROBE_DEFER;
		goto iclk_unprepare;
	}
#endif

	err = FUNC4(aes_dd);
	if (err)
		goto err_aes_buff;

	err = FUNC6(aes_dd, pdata);
	if (err)
		goto err_aes_dma;

	FUNC27(&atmel_aes.lock);
	FUNC22(&aes_dd->list, &atmel_aes.dev_list);
	FUNC29(&atmel_aes.lock);

	err = FUNC10(aes_dd);
	if (err)
		goto err_algs;

	FUNC16(dev, "Atmel AES - Using %s, %s for DMA transfers\n",
			FUNC21(aes_dd->src.chan),
			FUNC21(aes_dd->dst.chan));

	return 0;

err_algs:
	FUNC27(&atmel_aes.lock);
	FUNC23(&aes_dd->list);
	FUNC29(&atmel_aes.lock);
	FUNC5(aes_dd);
err_aes_dma:
	FUNC3(aes_dd);
err_aes_buff:
iclk_unprepare:
	FUNC13(aes_dd->iclk);
res_err:
	FUNC31(&aes_dd->done_task);
	FUNC31(&aes_dd->queue_task);
aes_dd_err:
	if (err != -EPROBE_DEFER)
		FUNC15(dev, "initialization failed.\n");

	return err;
}
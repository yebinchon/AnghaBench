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
struct TYPE_7__ {scalar_t__ has_dma; } ;
struct TYPE_6__ {int /*<<< orphan*/  chan; } ;
struct TYPE_5__ {int /*<<< orphan*/  chan; } ;
struct atmel_tdes_dev {int irq; int /*<<< orphan*/  queue_task; int /*<<< orphan*/  done_task; TYPE_3__ caps; int /*<<< orphan*/  list; TYPE_2__ dma_lch_out; TYPE_1__ dma_lch_in; struct crypto_platform_data* io_base; struct crypto_platform_data* iclk; int /*<<< orphan*/  phys_base; int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; struct device* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_TDES_QUEUE_LENGTH ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (struct crypto_platform_data*) ; 
 int FUNC2 (struct crypto_platform_data*) ; 
 TYPE_4__ atmel_tdes ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_tdes_dev*) ; 
 int FUNC4 (struct atmel_tdes_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_tdes_dev*) ; 
 int FUNC6 (struct atmel_tdes_dev*,struct crypto_platform_data*) ; 
 int /*<<< orphan*/  atmel_tdes_done_task ; 
 int /*<<< orphan*/  FUNC7 (struct atmel_tdes_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct atmel_tdes_dev*) ; 
 int /*<<< orphan*/  atmel_tdes_irq ; 
 struct crypto_platform_data* FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  atmel_tdes_queue_task ; 
 int FUNC10 (struct atmel_tdes_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,char*,...) ; 
 struct crypto_platform_data* FUNC14 (struct device*,char*) ; 
 struct crypto_platform_data* FUNC15 (struct device*,struct resource*) ; 
 struct atmel_tdes_dev* FUNC16 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct atmel_tdes_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC22 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,struct atmel_tdes_dev*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct atmel_tdes_dev *tdes_dd;
	struct crypto_platform_data	*pdata;
	struct device *dev = &pdev->dev;
	struct resource *tdes_res;
	int err;

	tdes_dd = FUNC16(&pdev->dev, sizeof(*tdes_dd), GFP_KERNEL);
	if (tdes_dd == NULL) {
		err = -ENOMEM;
		goto tdes_dd_err;
	}

	tdes_dd->dev = dev;

	FUNC23(pdev, tdes_dd);

	FUNC0(&tdes_dd->list);
	FUNC25(&tdes_dd->lock);

	FUNC27(&tdes_dd->done_task, atmel_tdes_done_task,
					(unsigned long)tdes_dd);
	FUNC27(&tdes_dd->queue_task, atmel_tdes_queue_task,
					(unsigned long)tdes_dd);

	FUNC11(&tdes_dd->queue, ATMEL_TDES_QUEUE_LENGTH);

	/* Get the base address */
	tdes_res = FUNC22(pdev, IORESOURCE_MEM, 0);
	if (!tdes_res) {
		FUNC12(dev, "no MEM resource info\n");
		err = -ENODEV;
		goto res_err;
	}
	tdes_dd->phys_base = tdes_res->start;

	/* Get the IRQ */
	tdes_dd->irq = FUNC21(pdev,  0);
	if (tdes_dd->irq < 0) {
		err = tdes_dd->irq;
		goto res_err;
	}

	err = FUNC17(&pdev->dev, tdes_dd->irq, atmel_tdes_irq,
			       IRQF_SHARED, "atmel-tdes", tdes_dd);
	if (err) {
		FUNC12(dev, "unable to request tdes irq.\n");
		goto res_err;
	}

	/* Initializing the clock */
	tdes_dd->iclk = FUNC14(&pdev->dev, "tdes_clk");
	if (FUNC1(tdes_dd->iclk)) {
		FUNC12(dev, "clock initialization failed.\n");
		err = FUNC2(tdes_dd->iclk);
		goto res_err;
	}

	tdes_dd->io_base = FUNC15(&pdev->dev, tdes_res);
	if (FUNC1(tdes_dd->io_base)) {
		FUNC12(dev, "can't ioremap\n");
		err = FUNC2(tdes_dd->io_base);
		goto res_err;
	}

	FUNC8(tdes_dd);

	FUNC7(tdes_dd);

	err = FUNC4(tdes_dd);
	if (err)
		goto err_tdes_buff;

	if (tdes_dd->caps.has_dma) {
		pdata = pdev->dev.platform_data;
		if (!pdata) {
			pdata = FUNC9(pdev);
			if (FUNC1(pdata)) {
				FUNC12(&pdev->dev, "platform data not available\n");
				err = FUNC2(pdata);
				goto err_pdata;
			}
		}
		if (!pdata->dma_slave) {
			err = -ENXIO;
			goto err_pdata;
		}
		err = FUNC6(tdes_dd, pdata);
		if (err)
			goto err_tdes_dma;

		FUNC13(dev, "using %s, %s for DMA transfers\n",
				FUNC18(tdes_dd->dma_lch_in.chan),
				FUNC18(tdes_dd->dma_lch_out.chan));
	}

	FUNC24(&atmel_tdes.lock);
	FUNC19(&tdes_dd->list, &atmel_tdes.dev_list);
	FUNC26(&atmel_tdes.lock);

	err = FUNC10(tdes_dd);
	if (err)
		goto err_algs;

	FUNC13(dev, "Atmel DES/TDES\n");

	return 0;

err_algs:
	FUNC24(&atmel_tdes.lock);
	FUNC20(&tdes_dd->list);
	FUNC26(&atmel_tdes.lock);
	if (tdes_dd->caps.has_dma)
		FUNC5(tdes_dd);
err_tdes_dma:
err_pdata:
	FUNC3(tdes_dd);
err_tdes_buff:
res_err:
	FUNC28(&tdes_dd->done_task);
	FUNC28(&tdes_dd->queue_task);
tdes_dd_err:
	FUNC12(dev, "initialization failed.\n");

	return err;
}
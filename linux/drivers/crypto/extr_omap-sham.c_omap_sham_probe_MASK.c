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
typedef  int u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  kobj; scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct omap_sham_reqctx {int dummy; } ;
struct omap_sham_dev {int polling_mode; int /*<<< orphan*/  dma_lch; TYPE_3__* pdata; int /*<<< orphan*/  list; int /*<<< orphan*/  fallback_sz; int /*<<< orphan*/  flags; int /*<<< orphan*/  irq; int /*<<< orphan*/  phys_base; int /*<<< orphan*/  io_base; int /*<<< orphan*/  queue; int /*<<< orphan*/  done_task; int /*<<< orphan*/  lock; struct device* dev; } ;
struct TYPE_5__ {scalar_t__ statesize; } ;
struct ahash_alg {TYPE_1__ halg; int /*<<< orphan*/  import; int /*<<< orphan*/  export; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_list; } ;
struct TYPE_7__ {int major_mask; int major_shift; int minor_mask; int minor_shift; int algs_info_size; TYPE_2__* algs_info; int /*<<< orphan*/  flags; int /*<<< orphan*/  intr_hdlr; } ;
struct TYPE_6__ {int size; int registered; struct ahash_alg* algs_list; } ;

/* Variables and functions */
 scalar_t__ BUFLEN ; 
 int /*<<< orphan*/  DEFAULT_AUTOSUSPEND_DELAY ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OMAP_SHAM_QUEUE_LENGTH ; 
 int /*<<< orphan*/  OMAP_SHA_DMA_THRESHOLD ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_sham_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ahash_alg*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahash_alg*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,struct resource*) ; 
 struct omap_sham_dev* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct omap_sham_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  omap_sham_attr_group ; 
 int /*<<< orphan*/  omap_sham_done_task ; 
 int /*<<< orphan*/  omap_sham_export ; 
 int FUNC19 (struct omap_sham_dev*,struct device*,struct resource*) ; 
 int FUNC20 (struct omap_sham_dev*,struct platform_device*,struct resource*) ; 
 int /*<<< orphan*/  omap_sham_import ; 
 int FUNC21 (struct omap_sham_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct omap_sham_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct device*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int /*<<< orphan*/  FUNC28 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct device*) ; 
 TYPE_4__ sham ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC35(struct platform_device *pdev)
{
	struct omap_sham_dev *dd;
	struct device *dev = &pdev->dev;
	struct resource res;
	dma_cap_mask_t mask;
	int err, i, j;
	u32 rev;

	dd = FUNC12(dev, sizeof(struct omap_sham_dev), GFP_KERNEL);
	if (dd == NULL) {
		FUNC8(dev, "unable to alloc data struct.\n");
		err = -ENOMEM;
		goto data_err;
	}
	dd->dev = dev;
	FUNC22(pdev, dd);

	FUNC0(&dd->list);
	FUNC31(&dd->lock);
	FUNC34(&dd->done_task, omap_sham_done_task, (unsigned long)dd);
	FUNC4(&dd->queue, OMAP_SHAM_QUEUE_LENGTH);

	err = (dev->of_node) ? FUNC19(dd, dev, &res) :
			       FUNC20(dd, pdev, &res);
	if (err)
		goto data_err;

	dd->io_base = FUNC11(dev, &res);
	if (FUNC1(dd->io_base)) {
		err = FUNC2(dd->io_base);
		goto data_err;
	}
	dd->phys_base = res.start;

	err = FUNC13(dev, dd->irq, dd->pdata->intr_hdlr,
			       IRQF_TRIGGER_NONE, FUNC10(dev), dd);
	if (err) {
		FUNC8(dev, "unable to request irq %d, err = %d\n",
			dd->irq, err);
		goto data_err;
	}

	FUNC15(mask);
	FUNC14(DMA_SLAVE, mask);

	dd->dma_lch = FUNC17(dev, "rx");
	if (FUNC1(dd->dma_lch)) {
		err = FUNC2(dd->dma_lch);
		if (err == -EPROBE_DEFER)
			goto data_err;

		dd->polling_mode = 1;
		FUNC7(dev, "using polling mode instead of dma\n");
	}

	dd->flags |= dd->pdata->flags;

	FUNC29(dev);
	FUNC28(dev, DEFAULT_AUTOSUSPEND_DELAY);

	dd->fallback_sz = OMAP_SHA_DMA_THRESHOLD;

	FUNC24(dev);
	FUNC26(dev);

	err = FUNC25(dev);
	if (err < 0) {
		FUNC8(dev, "failed to get sync: %d\n", err);
		goto err_pm;
	}

	rev = FUNC21(dd, FUNC3(dd));
	FUNC27(&pdev->dev);

	FUNC9(dev, "hw accel on OMAP rev %u.%u\n",
		(rev & dd->pdata->major_mask) >> dd->pdata->major_shift,
		(rev & dd->pdata->minor_mask) >> dd->pdata->minor_shift);

	FUNC30(&sham.lock);
	FUNC18(&dd->list, &sham.dev_list);
	FUNC32(&sham.lock);

	for (i = 0; i < dd->pdata->algs_info_size; i++) {
		for (j = 0; j < dd->pdata->algs_info[i].size; j++) {
			struct ahash_alg *alg;

			alg = &dd->pdata->algs_info[i].algs_list[j];
			alg->export = omap_sham_export;
			alg->import = omap_sham_import;
			alg->halg.statesize = sizeof(struct omap_sham_reqctx) +
					      BUFLEN;
			err = FUNC5(alg);
			if (err)
				goto err_algs;

			dd->pdata->algs_info[i].registered++;
		}
	}

	err = FUNC33(&dev->kobj, &omap_sham_attr_group);
	if (err) {
		FUNC8(dev, "could not create sysfs device attrs\n");
		goto err_algs;
	}

	return 0;

err_algs:
	for (i = dd->pdata->algs_info_size - 1; i >= 0; i--)
		for (j = dd->pdata->algs_info[i].registered - 1; j >= 0; j--)
			FUNC6(
					&dd->pdata->algs_info[i].algs_list[j]);
err_pm:
	FUNC23(dev);
	if (!dd->polling_mode)
		FUNC16(dd->dma_lch);
data_err:
	FUNC8(dev, "initialization failed.\n");

	return err;
}
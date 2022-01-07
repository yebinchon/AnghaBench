
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct device {int kobj; scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct omap_sham_reqctx {int dummy; } ;
struct omap_sham_dev {int polling_mode; int dma_lch; TYPE_3__* pdata; int list; int fallback_sz; int flags; int irq; int phys_base; int io_base; int queue; int done_task; int lock; struct device* dev; } ;
struct TYPE_5__ {scalar_t__ statesize; } ;
struct ahash_alg {TYPE_1__ halg; int import; int export; } ;
typedef int dma_cap_mask_t ;
struct TYPE_8__ {int lock; int dev_list; } ;
struct TYPE_7__ {int major_mask; int major_shift; int minor_mask; int minor_shift; int algs_info_size; TYPE_2__* algs_info; int flags; int intr_hdlr; } ;
struct TYPE_6__ {int size; int registered; struct ahash_alg* algs_list; } ;


 scalar_t__ BUFLEN ;
 int DEFAULT_AUTOSUSPEND_DELAY ;
 int DMA_SLAVE ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_TRIGGER_NONE ;
 scalar_t__ IS_ERR (int ) ;
 int OMAP_SHAM_QUEUE_LENGTH ;
 int OMAP_SHA_DMA_THRESHOLD ;
 int PTR_ERR (int ) ;
 int SHA_REG_REV (struct omap_sham_dev*) ;
 int crypto_init_queue (int *,int ) ;
 int crypto_register_ahash (struct ahash_alg*) ;
 int crypto_unregister_ahash (struct ahash_alg*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int,int) ;
 int dev_name (struct device*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct omap_sham_dev* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct omap_sham_dev*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_release_channel (int ) ;
 int dma_request_chan (struct device*,char*) ;
 int list_add_tail (int *,int *) ;
 int omap_sham_attr_group ;
 int omap_sham_done_task ;
 int omap_sham_export ;
 int omap_sham_get_res_of (struct omap_sham_dev*,struct device*,struct resource*) ;
 int omap_sham_get_res_pdev (struct omap_sham_dev*,struct platform_device*,struct resource*) ;
 int omap_sham_import ;
 int omap_sham_read (struct omap_sham_dev*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct omap_sham_dev*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_irq_safe (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 TYPE_4__ sham ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int sysfs_create_group (int *,int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int omap_sham_probe(struct platform_device *pdev)
{
 struct omap_sham_dev *dd;
 struct device *dev = &pdev->dev;
 struct resource res;
 dma_cap_mask_t mask;
 int err, i, j;
 u32 rev;

 dd = devm_kzalloc(dev, sizeof(struct omap_sham_dev), GFP_KERNEL);
 if (dd == ((void*)0)) {
  dev_err(dev, "unable to alloc data struct.\n");
  err = -ENOMEM;
  goto data_err;
 }
 dd->dev = dev;
 platform_set_drvdata(pdev, dd);

 INIT_LIST_HEAD(&dd->list);
 spin_lock_init(&dd->lock);
 tasklet_init(&dd->done_task, omap_sham_done_task, (unsigned long)dd);
 crypto_init_queue(&dd->queue, OMAP_SHAM_QUEUE_LENGTH);

 err = (dev->of_node) ? omap_sham_get_res_of(dd, dev, &res) :
          omap_sham_get_res_pdev(dd, pdev, &res);
 if (err)
  goto data_err;

 dd->io_base = devm_ioremap_resource(dev, &res);
 if (IS_ERR(dd->io_base)) {
  err = PTR_ERR(dd->io_base);
  goto data_err;
 }
 dd->phys_base = res.start;

 err = devm_request_irq(dev, dd->irq, dd->pdata->intr_hdlr,
          IRQF_TRIGGER_NONE, dev_name(dev), dd);
 if (err) {
  dev_err(dev, "unable to request irq %d, err = %d\n",
   dd->irq, err);
  goto data_err;
 }

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);

 dd->dma_lch = dma_request_chan(dev, "rx");
 if (IS_ERR(dd->dma_lch)) {
  err = PTR_ERR(dd->dma_lch);
  if (err == -EPROBE_DEFER)
   goto data_err;

  dd->polling_mode = 1;
  dev_dbg(dev, "using polling mode instead of dma\n");
 }

 dd->flags |= dd->pdata->flags;

 pm_runtime_use_autosuspend(dev);
 pm_runtime_set_autosuspend_delay(dev, DEFAULT_AUTOSUSPEND_DELAY);

 dd->fallback_sz = OMAP_SHA_DMA_THRESHOLD;

 pm_runtime_enable(dev);
 pm_runtime_irq_safe(dev);

 err = pm_runtime_get_sync(dev);
 if (err < 0) {
  dev_err(dev, "failed to get sync: %d\n", err);
  goto err_pm;
 }

 rev = omap_sham_read(dd, SHA_REG_REV(dd));
 pm_runtime_put_sync(&pdev->dev);

 dev_info(dev, "hw accel on OMAP rev %u.%u\n",
  (rev & dd->pdata->major_mask) >> dd->pdata->major_shift,
  (rev & dd->pdata->minor_mask) >> dd->pdata->minor_shift);

 spin_lock(&sham.lock);
 list_add_tail(&dd->list, &sham.dev_list);
 spin_unlock(&sham.lock);

 for (i = 0; i < dd->pdata->algs_info_size; i++) {
  for (j = 0; j < dd->pdata->algs_info[i].size; j++) {
   struct ahash_alg *alg;

   alg = &dd->pdata->algs_info[i].algs_list[j];
   alg->export = omap_sham_export;
   alg->import = omap_sham_import;
   alg->halg.statesize = sizeof(struct omap_sham_reqctx) +
           BUFLEN;
   err = crypto_register_ahash(alg);
   if (err)
    goto err_algs;

   dd->pdata->algs_info[i].registered++;
  }
 }

 err = sysfs_create_group(&dev->kobj, &omap_sham_attr_group);
 if (err) {
  dev_err(dev, "could not create sysfs device attrs\n");
  goto err_algs;
 }

 return 0;

err_algs:
 for (i = dd->pdata->algs_info_size - 1; i >= 0; i--)
  for (j = dd->pdata->algs_info[i].registered - 1; j >= 0; j--)
   crypto_unregister_ahash(
     &dd->pdata->algs_info[i].algs_list[j]);
err_pm:
 pm_runtime_disable(dev);
 if (!dd->polling_mode)
  dma_release_channel(dd->dma_lch);
data_err:
 dev_err(dev, "initialization failed.\n");

 return err;
}

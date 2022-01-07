
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int start; } ;
struct device {struct crypto_platform_data* platform_data; } ;
struct platform_device {struct device dev; } ;
struct crypto_platform_data {int dma_slave; } ;
struct TYPE_7__ {scalar_t__ has_dma; } ;
struct TYPE_6__ {int chan; } ;
struct TYPE_5__ {int chan; } ;
struct atmel_tdes_dev {int irq; int queue_task; int done_task; TYPE_3__ caps; int list; TYPE_2__ dma_lch_out; TYPE_1__ dma_lch_in; struct crypto_platform_data* io_base; struct crypto_platform_data* iclk; int phys_base; int queue; int lock; struct device* dev; } ;
struct TYPE_8__ {int lock; int dev_list; } ;


 int ATMEL_TDES_QUEUE_LENGTH ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct crypto_platform_data*) ;
 int PTR_ERR (struct crypto_platform_data*) ;
 TYPE_4__ atmel_tdes ;
 int atmel_tdes_buff_cleanup (struct atmel_tdes_dev*) ;
 int atmel_tdes_buff_init (struct atmel_tdes_dev*) ;
 int atmel_tdes_dma_cleanup (struct atmel_tdes_dev*) ;
 int atmel_tdes_dma_init (struct atmel_tdes_dev*,struct crypto_platform_data*) ;
 int atmel_tdes_done_task ;
 int atmel_tdes_get_cap (struct atmel_tdes_dev*) ;
 int atmel_tdes_hw_version_init (struct atmel_tdes_dev*) ;
 int atmel_tdes_irq ;
 struct crypto_platform_data* atmel_tdes_of_init (struct platform_device*) ;
 int atmel_tdes_queue_task ;
 int atmel_tdes_register_algs (struct atmel_tdes_dev*) ;
 int crypto_init_queue (int *,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,...) ;
 struct crypto_platform_data* devm_clk_get (struct device*,char*) ;
 struct crypto_platform_data* devm_ioremap_resource (struct device*,struct resource*) ;
 struct atmel_tdes_dev* devm_kmalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct atmel_tdes_dev*) ;
 int dma_chan_name (int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct atmel_tdes_dev*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int atmel_tdes_probe(struct platform_device *pdev)
{
 struct atmel_tdes_dev *tdes_dd;
 struct crypto_platform_data *pdata;
 struct device *dev = &pdev->dev;
 struct resource *tdes_res;
 int err;

 tdes_dd = devm_kmalloc(&pdev->dev, sizeof(*tdes_dd), GFP_KERNEL);
 if (tdes_dd == ((void*)0)) {
  err = -ENOMEM;
  goto tdes_dd_err;
 }

 tdes_dd->dev = dev;

 platform_set_drvdata(pdev, tdes_dd);

 INIT_LIST_HEAD(&tdes_dd->list);
 spin_lock_init(&tdes_dd->lock);

 tasklet_init(&tdes_dd->done_task, atmel_tdes_done_task,
     (unsigned long)tdes_dd);
 tasklet_init(&tdes_dd->queue_task, atmel_tdes_queue_task,
     (unsigned long)tdes_dd);

 crypto_init_queue(&tdes_dd->queue, ATMEL_TDES_QUEUE_LENGTH);


 tdes_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!tdes_res) {
  dev_err(dev, "no MEM resource info\n");
  err = -ENODEV;
  goto res_err;
 }
 tdes_dd->phys_base = tdes_res->start;


 tdes_dd->irq = platform_get_irq(pdev, 0);
 if (tdes_dd->irq < 0) {
  err = tdes_dd->irq;
  goto res_err;
 }

 err = devm_request_irq(&pdev->dev, tdes_dd->irq, atmel_tdes_irq,
          IRQF_SHARED, "atmel-tdes", tdes_dd);
 if (err) {
  dev_err(dev, "unable to request tdes irq.\n");
  goto res_err;
 }


 tdes_dd->iclk = devm_clk_get(&pdev->dev, "tdes_clk");
 if (IS_ERR(tdes_dd->iclk)) {
  dev_err(dev, "clock initialization failed.\n");
  err = PTR_ERR(tdes_dd->iclk);
  goto res_err;
 }

 tdes_dd->io_base = devm_ioremap_resource(&pdev->dev, tdes_res);
 if (IS_ERR(tdes_dd->io_base)) {
  dev_err(dev, "can't ioremap\n");
  err = PTR_ERR(tdes_dd->io_base);
  goto res_err;
 }

 atmel_tdes_hw_version_init(tdes_dd);

 atmel_tdes_get_cap(tdes_dd);

 err = atmel_tdes_buff_init(tdes_dd);
 if (err)
  goto err_tdes_buff;

 if (tdes_dd->caps.has_dma) {
  pdata = pdev->dev.platform_data;
  if (!pdata) {
   pdata = atmel_tdes_of_init(pdev);
   if (IS_ERR(pdata)) {
    dev_err(&pdev->dev, "platform data not available\n");
    err = PTR_ERR(pdata);
    goto err_pdata;
   }
  }
  if (!pdata->dma_slave) {
   err = -ENXIO;
   goto err_pdata;
  }
  err = atmel_tdes_dma_init(tdes_dd, pdata);
  if (err)
   goto err_tdes_dma;

  dev_info(dev, "using %s, %s for DMA transfers\n",
    dma_chan_name(tdes_dd->dma_lch_in.chan),
    dma_chan_name(tdes_dd->dma_lch_out.chan));
 }

 spin_lock(&atmel_tdes.lock);
 list_add_tail(&tdes_dd->list, &atmel_tdes.dev_list);
 spin_unlock(&atmel_tdes.lock);

 err = atmel_tdes_register_algs(tdes_dd);
 if (err)
  goto err_algs;

 dev_info(dev, "Atmel DES/TDES\n");

 return 0;

err_algs:
 spin_lock(&atmel_tdes.lock);
 list_del(&tdes_dd->list);
 spin_unlock(&atmel_tdes.lock);
 if (tdes_dd->caps.has_dma)
  atmel_tdes_dma_cleanup(tdes_dd);
err_tdes_dma:
err_pdata:
 atmel_tdes_buff_cleanup(tdes_dd);
err_tdes_buff:
res_err:
 tasklet_kill(&tdes_dd->done_task);
 tasklet_kill(&tdes_dd->queue_task);
tdes_dd_err:
 dev_err(dev, "initialization failed.\n");

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_hash_dev {int clk; scalar_t__ dma_lch; int list; int engine; int dma_mode; struct device* dev; int rst; int phys_base; int io_base; } ;
struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int lock; int dev_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HASH_AUTOSUSPEND_DELAY ;
 int HASH_HWCFGR ;
 int HASH_VER ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int crypto_engine_alloc_init (struct device*,int) ;
 int crypto_engine_exit (int ) ;
 int crypto_engine_start (int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ,int ) ;
 int dev_name (struct device*) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct stm32_hash_dev* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int ,int ,int ,int ,struct stm32_hash_dev*) ;
 int devm_reset_control_get (struct device*,int *) ;
 int dma_release_channel (scalar_t__) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct stm32_hash_dev*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__ stm32_hash ;
 int stm32_hash_dma_init (struct stm32_hash_dev*) ;
 int stm32_hash_get_of_match (struct stm32_hash_dev*,struct device*) ;
 int stm32_hash_irq_handler ;
 int stm32_hash_irq_thread ;
 int stm32_hash_read (struct stm32_hash_dev*,int ) ;
 int stm32_hash_register_algs (struct stm32_hash_dev*) ;
 int udelay (int) ;

__attribute__((used)) static int stm32_hash_probe(struct platform_device *pdev)
{
 struct stm32_hash_dev *hdev;
 struct device *dev = &pdev->dev;
 struct resource *res;
 int ret, irq;

 hdev = devm_kzalloc(dev, sizeof(*hdev), GFP_KERNEL);
 if (!hdev)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 hdev->io_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(hdev->io_base))
  return PTR_ERR(hdev->io_base);

 hdev->phys_base = res->start;

 ret = stm32_hash_get_of_match(hdev, dev);
 if (ret)
  return ret;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 ret = devm_request_threaded_irq(dev, irq, stm32_hash_irq_handler,
     stm32_hash_irq_thread, IRQF_ONESHOT,
     dev_name(dev), hdev);
 if (ret) {
  dev_err(dev, "Cannot grab IRQ\n");
  return ret;
 }

 hdev->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(hdev->clk)) {
  dev_err(dev, "failed to get clock for hash (%lu)\n",
   PTR_ERR(hdev->clk));
  return PTR_ERR(hdev->clk);
 }

 ret = clk_prepare_enable(hdev->clk);
 if (ret) {
  dev_err(dev, "failed to enable hash clock (%d)\n", ret);
  return ret;
 }

 pm_runtime_set_autosuspend_delay(dev, HASH_AUTOSUSPEND_DELAY);
 pm_runtime_use_autosuspend(dev);

 pm_runtime_get_noresume(dev);
 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);

 hdev->rst = devm_reset_control_get(&pdev->dev, ((void*)0));
 if (!IS_ERR(hdev->rst)) {
  reset_control_assert(hdev->rst);
  udelay(2);
  reset_control_deassert(hdev->rst);
 }

 hdev->dev = dev;

 platform_set_drvdata(pdev, hdev);

 ret = stm32_hash_dma_init(hdev);
 if (ret)
  dev_dbg(dev, "DMA mode not available\n");

 spin_lock(&stm32_hash.lock);
 list_add_tail(&hdev->list, &stm32_hash.dev_list);
 spin_unlock(&stm32_hash.lock);


 hdev->engine = crypto_engine_alloc_init(dev, 1);
 if (!hdev->engine) {
  ret = -ENOMEM;
  goto err_engine;
 }

 ret = crypto_engine_start(hdev->engine);
 if (ret)
  goto err_engine_start;

 hdev->dma_mode = stm32_hash_read(hdev, HASH_HWCFGR);


 ret = stm32_hash_register_algs(hdev);
 if (ret)
  goto err_algs;

 dev_info(dev, "Init HASH done HW ver %x DMA mode %u\n",
   stm32_hash_read(hdev, HASH_VER), hdev->dma_mode);

 pm_runtime_put_sync(dev);

 return 0;

err_algs:
err_engine_start:
 crypto_engine_exit(hdev->engine);
err_engine:
 spin_lock(&stm32_hash.lock);
 list_del(&hdev->list);
 spin_unlock(&stm32_hash.lock);

 if (hdev->dma_lch)
  dma_release_channel(hdev->dma_lch);

 pm_runtime_disable(dev);
 pm_runtime_put_noidle(dev);

 clk_disable_unprepare(hdev->clk);

 return ret;
}

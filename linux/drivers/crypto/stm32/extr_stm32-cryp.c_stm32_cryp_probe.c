
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_cryp {struct reset_control* clk; int list; int engine; struct device* dev; struct reset_control* regs; int caps; } ;
struct reset_control {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int lock; int dev_list; } ;


 int ARRAY_SIZE (int ) ;
 int CRYP_AUTOSUSPEND_DELAY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (struct reset_control*) ;
 int PTR_ERR (struct reset_control*) ;
 int aead_algs ;
 int clk_disable_unprepare (struct reset_control*) ;
 int clk_prepare_enable (struct reset_control*) ;
 TYPE_1__ cryp_list ;
 int crypto_algs ;
 int crypto_engine_alloc_init (struct device*,int) ;
 int crypto_engine_exit (int ) ;
 int crypto_engine_start (int ) ;
 int crypto_register_aeads (int ,int ) ;
 int crypto_register_algs (int ,int ) ;
 int crypto_unregister_algs (int ,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int dev_name (struct device*) ;
 struct reset_control* devm_clk_get (struct device*,int *) ;
 struct stm32_cryp* devm_kzalloc (struct device*,int,int ) ;
 struct reset_control* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_threaded_irq (struct device*,int,int ,int ,int ,int ,struct stm32_cryp*) ;
 struct reset_control* devm_reset_control_get (struct device*,int *) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int of_device_get_match_data (struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct stm32_cryp*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int reset_control_assert (struct reset_control*) ;
 int reset_control_deassert (struct reset_control*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stm32_cryp_irq ;
 int stm32_cryp_irq_thread ;
 int udelay (int) ;

__attribute__((used)) static int stm32_cryp_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct stm32_cryp *cryp;
 struct reset_control *rst;
 int irq, ret;

 cryp = devm_kzalloc(dev, sizeof(*cryp), GFP_KERNEL);
 if (!cryp)
  return -ENOMEM;

 cryp->caps = of_device_get_match_data(dev);
 if (!cryp->caps)
  return -ENODEV;

 cryp->dev = dev;

 cryp->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(cryp->regs))
  return PTR_ERR(cryp->regs);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 ret = devm_request_threaded_irq(dev, irq, stm32_cryp_irq,
     stm32_cryp_irq_thread, IRQF_ONESHOT,
     dev_name(dev), cryp);
 if (ret) {
  dev_err(dev, "Cannot grab IRQ\n");
  return ret;
 }

 cryp->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(cryp->clk)) {
  dev_err(dev, "Could not get clock\n");
  return PTR_ERR(cryp->clk);
 }

 ret = clk_prepare_enable(cryp->clk);
 if (ret) {
  dev_err(cryp->dev, "Failed to enable clock\n");
  return ret;
 }

 pm_runtime_set_autosuspend_delay(dev, CRYP_AUTOSUSPEND_DELAY);
 pm_runtime_use_autosuspend(dev);

 pm_runtime_get_noresume(dev);
 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);

 rst = devm_reset_control_get(dev, ((void*)0));
 if (!IS_ERR(rst)) {
  reset_control_assert(rst);
  udelay(2);
  reset_control_deassert(rst);
 }

 platform_set_drvdata(pdev, cryp);

 spin_lock(&cryp_list.lock);
 list_add(&cryp->list, &cryp_list.dev_list);
 spin_unlock(&cryp_list.lock);


 cryp->engine = crypto_engine_alloc_init(dev, 1);
 if (!cryp->engine) {
  dev_err(dev, "Could not init crypto engine\n");
  ret = -ENOMEM;
  goto err_engine1;
 }

 ret = crypto_engine_start(cryp->engine);
 if (ret) {
  dev_err(dev, "Could not start crypto engine\n");
  goto err_engine2;
 }

 ret = crypto_register_algs(crypto_algs, ARRAY_SIZE(crypto_algs));
 if (ret) {
  dev_err(dev, "Could not register algs\n");
  goto err_algs;
 }

 ret = crypto_register_aeads(aead_algs, ARRAY_SIZE(aead_algs));
 if (ret)
  goto err_aead_algs;

 dev_info(dev, "Initialized\n");

 pm_runtime_put_sync(dev);

 return 0;

err_aead_algs:
 crypto_unregister_algs(crypto_algs, ARRAY_SIZE(crypto_algs));
err_algs:
err_engine2:
 crypto_engine_exit(cryp->engine);
err_engine1:
 spin_lock(&cryp_list.lock);
 list_del(&cryp->list);
 spin_unlock(&cryp_list.lock);

 pm_runtime_disable(dev);
 pm_runtime_put_noidle(dev);
 pm_runtime_disable(dev);
 pm_runtime_put_noidle(dev);

 clk_disable_unprepare(cryp->clk);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int irq; int busy; int done_task; int queue_task; int enqueue; int unload_data; int load_data; int disable_clk; int enable_clk; int queue; struct device* dev; void* dmaclk; void* sclk; void* hclk; void* aclk; void* reg; int lock; void* rst; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int crypto_init_queue (int *,int) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int devm_add_action_or_reset (struct device*,int ,struct rk_crypto_info*) ;
 void* devm_clk_get (struct device*,char*) ;
 struct rk_crypto_info* devm_kzalloc (struct device*,int,int ) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct platform_device*) ;
 void* devm_reset_control_get (struct device*,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rk_crypto_info*) ;
 int reset_control_assert (void*) ;
 int reset_control_deassert (void*) ;
 int rk_crypto_action ;
 int rk_crypto_disable_clk ;
 int rk_crypto_done_task_cb ;
 int rk_crypto_enable_clk ;
 int rk_crypto_enqueue ;
 int rk_crypto_irq_handle ;
 int rk_crypto_queue_task_cb ;
 int rk_crypto_register (struct rk_crypto_info*) ;
 int rk_load_data ;
 int rk_unload_data ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tasklet_kill (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rk_crypto_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rk_crypto_info *crypto_info;
 int err = 0;

 crypto_info = devm_kzalloc(&pdev->dev,
       sizeof(*crypto_info), GFP_KERNEL);
 if (!crypto_info) {
  err = -ENOMEM;
  goto err_crypto;
 }

 crypto_info->rst = devm_reset_control_get(dev, "crypto-rst");
 if (IS_ERR(crypto_info->rst)) {
  err = PTR_ERR(crypto_info->rst);
  goto err_crypto;
 }

 reset_control_assert(crypto_info->rst);
 usleep_range(10, 20);
 reset_control_deassert(crypto_info->rst);

 err = devm_add_action_or_reset(dev, rk_crypto_action, crypto_info);
 if (err)
  goto err_crypto;

 spin_lock_init(&crypto_info->lock);

 crypto_info->reg = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(crypto_info->reg)) {
  err = PTR_ERR(crypto_info->reg);
  goto err_crypto;
 }

 crypto_info->aclk = devm_clk_get(&pdev->dev, "aclk");
 if (IS_ERR(crypto_info->aclk)) {
  err = PTR_ERR(crypto_info->aclk);
  goto err_crypto;
 }

 crypto_info->hclk = devm_clk_get(&pdev->dev, "hclk");
 if (IS_ERR(crypto_info->hclk)) {
  err = PTR_ERR(crypto_info->hclk);
  goto err_crypto;
 }

 crypto_info->sclk = devm_clk_get(&pdev->dev, "sclk");
 if (IS_ERR(crypto_info->sclk)) {
  err = PTR_ERR(crypto_info->sclk);
  goto err_crypto;
 }

 crypto_info->dmaclk = devm_clk_get(&pdev->dev, "apb_pclk");
 if (IS_ERR(crypto_info->dmaclk)) {
  err = PTR_ERR(crypto_info->dmaclk);
  goto err_crypto;
 }

 crypto_info->irq = platform_get_irq(pdev, 0);
 if (crypto_info->irq < 0) {
  dev_warn(crypto_info->dev,
    "control Interrupt is not available.\n");
  err = crypto_info->irq;
  goto err_crypto;
 }

 err = devm_request_irq(&pdev->dev, crypto_info->irq,
          rk_crypto_irq_handle, IRQF_SHARED,
          "rk-crypto", pdev);

 if (err) {
  dev_err(crypto_info->dev, "irq request failed.\n");
  goto err_crypto;
 }

 crypto_info->dev = &pdev->dev;
 platform_set_drvdata(pdev, crypto_info);

 tasklet_init(&crypto_info->queue_task,
       rk_crypto_queue_task_cb, (unsigned long)crypto_info);
 tasklet_init(&crypto_info->done_task,
       rk_crypto_done_task_cb, (unsigned long)crypto_info);
 crypto_init_queue(&crypto_info->queue, 50);

 crypto_info->enable_clk = rk_crypto_enable_clk;
 crypto_info->disable_clk = rk_crypto_disable_clk;
 crypto_info->load_data = rk_load_data;
 crypto_info->unload_data = rk_unload_data;
 crypto_info->enqueue = rk_crypto_enqueue;
 crypto_info->busy = 0;

 err = rk_crypto_register(crypto_info);
 if (err) {
  dev_err(dev, "err in register alg");
  goto err_register_alg;
 }

 dev_info(dev, "Crypto Accelerator successfully registered\n");
 return 0;

err_register_alg:
 tasklet_kill(&crypto_info->queue_task);
 tasklet_kill(&crypto_info->done_task);
err_crypto:
 return err;
}

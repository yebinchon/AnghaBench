
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_crc {int clk; int list; struct device* dev; int regs; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int lock; int dev_list; } ;


 int ARRAY_SIZE (int ) ;
 int CRC_AUTOSUSPEND_DELAY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int algs ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 TYPE_1__ crc_list ;
 int crypto_register_shashes (int ,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int devm_clk_get (struct device*,int *) ;
 struct stm32_crc* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int list_add (int *,int *) ;
 int platform_set_drvdata (struct platform_device*,struct stm32_crc*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int stm32_crc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct stm32_crc *crc;
 int ret;

 crc = devm_kzalloc(dev, sizeof(*crc), GFP_KERNEL);
 if (!crc)
  return -ENOMEM;

 crc->dev = dev;

 crc->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(crc->regs)) {
  dev_err(dev, "Cannot map CRC IO\n");
  return PTR_ERR(crc->regs);
 }

 crc->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(crc->clk)) {
  dev_err(dev, "Could not get clock\n");
  return PTR_ERR(crc->clk);
 }

 ret = clk_prepare_enable(crc->clk);
 if (ret) {
  dev_err(crc->dev, "Failed to enable clock\n");
  return ret;
 }

 pm_runtime_set_autosuspend_delay(dev, CRC_AUTOSUSPEND_DELAY);
 pm_runtime_use_autosuspend(dev);

 pm_runtime_get_noresume(dev);
 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);

 platform_set_drvdata(pdev, crc);

 spin_lock(&crc_list.lock);
 list_add(&crc->list, &crc_list.dev_list);
 spin_unlock(&crc_list.lock);

 ret = crypto_register_shashes(algs, ARRAY_SIZE(algs));
 if (ret) {
  dev_err(dev, "Failed to register\n");
  clk_disable_unprepare(crc->clk);
  return ret;
 }

 dev_info(dev, "Initialized\n");

 pm_runtime_put_sync(dev);

 return 0;
}

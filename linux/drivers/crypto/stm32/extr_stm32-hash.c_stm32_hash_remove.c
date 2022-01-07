
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_hash_dev {int clk; int dev; scalar_t__ dma_lch; int list; int engine; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int ENODEV ;
 int clk_disable_unprepare (int ) ;
 int crypto_engine_exit (int ) ;
 int dma_release_channel (scalar_t__) ;
 int list_del (int *) ;
 struct stm32_hash_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__ stm32_hash ;
 int stm32_hash_unregister_algs (struct stm32_hash_dev*) ;

__attribute__((used)) static int stm32_hash_remove(struct platform_device *pdev)
{
 struct stm32_hash_dev *hdev;
 int ret;

 hdev = platform_get_drvdata(pdev);
 if (!hdev)
  return -ENODEV;

 ret = pm_runtime_get_sync(hdev->dev);
 if (ret < 0)
  return ret;

 stm32_hash_unregister_algs(hdev);

 crypto_engine_exit(hdev->engine);

 spin_lock(&stm32_hash.lock);
 list_del(&hdev->list);
 spin_unlock(&stm32_hash.lock);

 if (hdev->dma_lch)
  dma_release_channel(hdev->dma_lch);

 pm_runtime_disable(hdev->dev);
 pm_runtime_put_noidle(hdev->dev);

 clk_disable_unprepare(hdev->clk);

 return 0;
}

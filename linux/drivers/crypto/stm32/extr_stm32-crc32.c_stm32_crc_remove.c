
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_crc {int clk; int dev; int list; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int ARRAY_SIZE (int ) ;
 int algs ;
 int clk_disable_unprepare (int ) ;
 TYPE_1__ crc_list ;
 int crypto_unregister_shashes (int ,int ) ;
 int list_del (int *) ;
 struct stm32_crc* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int stm32_crc_remove(struct platform_device *pdev)
{
 struct stm32_crc *crc = platform_get_drvdata(pdev);
 int ret = pm_runtime_get_sync(crc->dev);

 if (ret < 0)
  return ret;

 spin_lock(&crc_list.lock);
 list_del(&crc->list);
 spin_unlock(&crc_list.lock);

 crypto_unregister_shashes(algs, ARRAY_SIZE(algs));

 pm_runtime_disable(crc->dev);
 pm_runtime_put_noidle(crc->dev);

 clk_disable_unprepare(crc->clk);

 return 0;
}

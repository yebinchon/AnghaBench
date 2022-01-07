
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_cryp {int clk; int dev; int list; int engine; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int aead_algs ;
 int clk_disable_unprepare (int ) ;
 TYPE_1__ cryp_list ;
 int crypto_algs ;
 int crypto_engine_exit (int ) ;
 int crypto_unregister_aeads (int ,int ) ;
 int crypto_unregister_algs (int ,int ) ;
 int list_del (int *) ;
 struct stm32_cryp* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int stm32_cryp_remove(struct platform_device *pdev)
{
 struct stm32_cryp *cryp = platform_get_drvdata(pdev);
 int ret;

 if (!cryp)
  return -ENODEV;

 ret = pm_runtime_get_sync(cryp->dev);
 if (ret < 0)
  return ret;

 crypto_unregister_aeads(aead_algs, ARRAY_SIZE(aead_algs));
 crypto_unregister_algs(crypto_algs, ARRAY_SIZE(crypto_algs));

 crypto_engine_exit(cryp->engine);

 spin_lock(&cryp_list.lock);
 list_del(&cryp->list);
 spin_unlock(&cryp_list.lock);

 pm_runtime_disable(cryp->dev);
 pm_runtime_put_noidle(cryp->dev);

 clk_disable_unprepare(cryp->clk);

 return 0;
}

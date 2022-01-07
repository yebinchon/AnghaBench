
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct omap_aes_dev {int dev; int done_task; int engine; TYPE_3__* pdata; int list; } ;
struct aead_alg {int dummy; } ;
struct TYPE_6__ {int algs_info_size; TYPE_2__* aead_algs_info; TYPE_1__* algs_info; } ;
struct TYPE_5__ {int size; struct aead_alg* algs_list; } ;
struct TYPE_4__ {int registered; int * algs_list; } ;


 int ENODEV ;
 int crypto_engine_exit (int ) ;
 int crypto_unregister_aead (struct aead_alg*) ;
 int crypto_unregister_alg (int *) ;
 int list_del (int *) ;
 int list_lock ;
 int omap_aes_dma_cleanup (struct omap_aes_dev*) ;
 struct omap_aes_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int omap_aes_remove(struct platform_device *pdev)
{
 struct omap_aes_dev *dd = platform_get_drvdata(pdev);
 struct aead_alg *aalg;
 int i, j;

 if (!dd)
  return -ENODEV;

 spin_lock(&list_lock);
 list_del(&dd->list);
 spin_unlock(&list_lock);

 for (i = dd->pdata->algs_info_size - 1; i >= 0; i--)
  for (j = dd->pdata->algs_info[i].registered - 1; j >= 0; j--)
   crypto_unregister_alg(
     &dd->pdata->algs_info[i].algs_list[j]);

 for (i = dd->pdata->aead_algs_info->size - 1; i >= 0; i--) {
  aalg = &dd->pdata->aead_algs_info->algs_list[i];
  crypto_unregister_aead(aalg);
 }

 crypto_engine_exit(dd->engine);

 tasklet_kill(&dd->done_task);
 omap_aes_dma_cleanup(dd);
 pm_runtime_disable(dd->dev);
 dd = ((void*)0);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct omap_des_dev {int dev; int done_task; TYPE_2__* pdata; int list; } ;
struct TYPE_4__ {int algs_info_size; TYPE_1__* algs_info; } ;
struct TYPE_3__ {int registered; int * algs_list; } ;


 int ENODEV ;
 int crypto_unregister_alg (int *) ;
 int list_del (int *) ;
 int list_lock ;
 int omap_des_dma_cleanup (struct omap_des_dev*) ;
 struct omap_des_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int omap_des_remove(struct platform_device *pdev)
{
 struct omap_des_dev *dd = platform_get_drvdata(pdev);
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

 tasklet_kill(&dd->done_task);
 omap_des_dma_cleanup(dd);
 pm_runtime_disable(dd->dev);
 dd = ((void*)0);

 return 0;
}

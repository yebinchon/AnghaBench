
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct omap_sham_dev {int dma_lch; int polling_mode; int done_task; TYPE_2__* pdata; int list; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int algs_info_size; TYPE_1__* algs_info; } ;
struct TYPE_4__ {int registered; int * algs_list; } ;


 int ENODEV ;
 int crypto_unregister_ahash (int *) ;
 int dma_release_channel (int ) ;
 int list_del (int *) ;
 struct omap_sham_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 TYPE_3__ sham ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int omap_sham_remove(struct platform_device *pdev)
{
 struct omap_sham_dev *dd;
 int i, j;

 dd = platform_get_drvdata(pdev);
 if (!dd)
  return -ENODEV;
 spin_lock(&sham.lock);
 list_del(&dd->list);
 spin_unlock(&sham.lock);
 for (i = dd->pdata->algs_info_size - 1; i >= 0; i--)
  for (j = dd->pdata->algs_info[i].registered - 1; j >= 0; j--)
   crypto_unregister_ahash(
     &dd->pdata->algs_info[i].algs_list[j]);
 tasklet_kill(&dd->done_task);
 pm_runtime_disable(&pdev->dev);

 if (!dd->polling_mode)
  dma_release_channel(dd->dma_lch);

 return 0;
}

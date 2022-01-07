
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ has_dma; } ;
struct atmel_sha_dev {int iclk; TYPE_1__ caps; int done_task; int queue_task; int list; } ;
struct TYPE_4__ {int lock; } ;


 int ENODEV ;
 TYPE_2__ atmel_sha ;
 int atmel_sha_dma_cleanup (struct atmel_sha_dev*) ;
 int atmel_sha_unregister_algs (struct atmel_sha_dev*) ;
 int clk_unprepare (int ) ;
 int list_del (int *) ;
 struct atmel_sha_dev* platform_get_drvdata (struct platform_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int atmel_sha_remove(struct platform_device *pdev)
{
 struct atmel_sha_dev *sha_dd;

 sha_dd = platform_get_drvdata(pdev);
 if (!sha_dd)
  return -ENODEV;
 spin_lock(&atmel_sha.lock);
 list_del(&sha_dd->list);
 spin_unlock(&atmel_sha.lock);

 atmel_sha_unregister_algs(sha_dd);

 tasklet_kill(&sha_dd->queue_task);
 tasklet_kill(&sha_dd->done_task);

 if (sha_dd->caps.has_dma)
  atmel_sha_dma_cleanup(sha_dd);

 clk_unprepare(sha_dd->iclk);

 return 0;
}

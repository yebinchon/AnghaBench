
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct atmel_aes_dev {int iclk; int queue_task; int done_task; int list; } ;
struct TYPE_2__ {int lock; } ;


 int ENODEV ;
 TYPE_1__ atmel_aes ;
 int atmel_aes_buff_cleanup (struct atmel_aes_dev*) ;
 int atmel_aes_dma_cleanup (struct atmel_aes_dev*) ;
 int atmel_aes_unregister_algs (struct atmel_aes_dev*) ;
 int clk_unprepare (int ) ;
 int list_del (int *) ;
 struct atmel_aes_dev* platform_get_drvdata (struct platform_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int atmel_aes_remove(struct platform_device *pdev)
{
 struct atmel_aes_dev *aes_dd;

 aes_dd = platform_get_drvdata(pdev);
 if (!aes_dd)
  return -ENODEV;
 spin_lock(&atmel_aes.lock);
 list_del(&aes_dd->list);
 spin_unlock(&atmel_aes.lock);

 atmel_aes_unregister_algs(aes_dd);

 tasklet_kill(&aes_dd->done_task);
 tasklet_kill(&aes_dd->queue_task);

 atmel_aes_dma_cleanup(aes_dd);
 atmel_aes_buff_cleanup(aes_dd);

 clk_unprepare(aes_dd->iclk);

 return 0;
}

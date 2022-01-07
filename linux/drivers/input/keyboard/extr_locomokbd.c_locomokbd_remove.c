
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomokbd {int input; int timer; } ;
struct locomo_dev {int length; scalar_t__ mapbase; int * irq; } ;


 int del_timer_sync (int *) ;
 int free_irq (int ,struct locomokbd*) ;
 int input_unregister_device (int ) ;
 int kfree (struct locomokbd*) ;
 struct locomokbd* locomo_get_drvdata (struct locomo_dev*) ;
 int locomo_set_drvdata (struct locomo_dev*,int *) ;
 int release_mem_region (unsigned long,int ) ;

__attribute__((used)) static int locomokbd_remove(struct locomo_dev *dev)
{
 struct locomokbd *locomokbd = locomo_get_drvdata(dev);

 free_irq(dev->irq[0], locomokbd);

 del_timer_sync(&locomokbd->timer);

 input_unregister_device(locomokbd->input);
 locomo_set_drvdata(dev, ((void*)0));

 release_mem_region((unsigned long) dev->mapbase, dev->length);

 kfree(locomokbd);

 return 0;
}

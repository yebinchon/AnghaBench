
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int wait_barrier; int resync_lock; scalar_t__ array_frozen; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void unfreeze_array(struct r1conf *conf)
{

 spin_lock_irq(&conf->resync_lock);
 conf->array_frozen = 0;
 spin_unlock_irq(&conf->resync_lock);
 wake_up(&conf->wait_barrier);
}

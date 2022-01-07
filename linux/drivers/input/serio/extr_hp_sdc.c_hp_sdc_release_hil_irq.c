
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hp_sdc_irqhook ;
struct TYPE_2__ {int im; int set_im; int task; int hook_lock; int * cooked; int * hil; } ;


 int EINVAL ;
 int HP_SDC_IM_HIL ;
 int HP_SDC_IM_RESET ;
 TYPE_1__ hp_sdc ;
 int tasklet_schedule (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

int hp_sdc_release_hil_irq(hp_sdc_irqhook *callback)
{
 write_lock_irq(&hp_sdc.hook_lock);
 if ((callback != hp_sdc.hil) ||
     (hp_sdc.hil == ((void*)0))) {
  write_unlock_irq(&hp_sdc.hook_lock);
  return -EINVAL;
 }

 hp_sdc.hil = ((void*)0);

 if(hp_sdc.cooked == ((void*)0)) {
  hp_sdc.im |= (HP_SDC_IM_HIL | HP_SDC_IM_RESET);
  hp_sdc.set_im = 1;
 }
 write_unlock_irq(&hp_sdc.hook_lock);
 tasklet_schedule(&hp_sdc.task);

 return 0;
}

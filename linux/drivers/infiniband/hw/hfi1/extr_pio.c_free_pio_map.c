
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int * kernel_send_context; int pio_map_lock; int pio_map; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int kfree (int *) ;
 int pio_map_free (scalar_t__) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int synchronize_rcu () ;

void free_pio_map(struct hfi1_devdata *dd)
{

 if (rcu_access_pointer(dd->pio_map)) {
  spin_lock_irq(&dd->pio_map_lock);
  pio_map_free(rcu_access_pointer(dd->pio_map));
  RCU_INIT_POINTER(dd->pio_map, ((void*)0));
  spin_unlock_irq(&dd->pio_map_lock);
  synchronize_rcu();
 }
 kfree(dd->kernel_send_context);
 dd->kernel_send_context = ((void*)0);
}

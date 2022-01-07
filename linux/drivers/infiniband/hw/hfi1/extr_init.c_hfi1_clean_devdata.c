
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rdi; } ;
struct hfi1_devdata {TYPE_1__ verbs_dev; int num_sdma; int * comp_vect; int * tx_opstats; int * send_schedule; int * rcv_limit; int * int_counter; int unit; } ;
struct hfi1_asic_data {int dummy; } ;


 int __xa_erase (int *,int ) ;
 int finalize_asic_data (struct hfi1_devdata*,struct hfi1_asic_data*) ;
 int free_percpu (int *) ;
 int free_platform_config (struct hfi1_devdata*) ;
 int hfi1_dev_table ;
 int kfree (int *) ;
 int rcu_barrier () ;
 struct hfi1_asic_data* release_asic_data (struct hfi1_devdata*) ;
 int rvt_dealloc_device (int *) ;
 int sdma_clean (struct hfi1_devdata*,int ) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hfi1_clean_devdata(struct hfi1_devdata *dd)
{
 struct hfi1_asic_data *ad;
 unsigned long flags;

 xa_lock_irqsave(&hfi1_dev_table, flags);
 __xa_erase(&hfi1_dev_table, dd->unit);
 ad = release_asic_data(dd);
 xa_unlock_irqrestore(&hfi1_dev_table, flags);

 finalize_asic_data(dd, ad);
 free_platform_config(dd);
 rcu_barrier();
 free_percpu(dd->int_counter);
 free_percpu(dd->rcv_limit);
 free_percpu(dd->send_schedule);
 free_percpu(dd->tx_opstats);
 dd->int_counter = ((void*)0);
 dd->rcv_limit = ((void*)0);
 dd->send_schedule = ((void*)0);
 dd->tx_opstats = ((void*)0);
 kfree(dd->comp_vect);
 dd->comp_vect = ((void*)0);
 sdma_clean(dd, dd->num_sdma);
 rvt_dealloc_device(&dd->verbs_dev.rdi);
}

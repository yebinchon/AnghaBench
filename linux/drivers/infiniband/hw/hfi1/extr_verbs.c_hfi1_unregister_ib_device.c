
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ibdev {int mem_timer; int memwait; int txwait; int rdi; } ;
struct hfi1_devdata {struct hfi1_ibdev verbs_dev; } ;


 scalar_t__ cntr_names_initialized ;
 int cntr_names_lock ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int del_timer_sync (int *) ;
 int * dev_cntr_names ;
 int hfi1_verbs_unregister_sysfs (struct hfi1_devdata*) ;
 int kfree (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * port_cntr_names ;
 int rvt_unregister_device (int *) ;
 int verbs_txreq_exit (struct hfi1_ibdev*) ;

void hfi1_unregister_ib_device(struct hfi1_devdata *dd)
{
 struct hfi1_ibdev *dev = &dd->verbs_dev;

 hfi1_verbs_unregister_sysfs(dd);

 rvt_unregister_device(&dd->verbs_dev.rdi);

 if (!list_empty(&dev->txwait))
  dd_dev_err(dd, "txwait list not empty!\n");
 if (!list_empty(&dev->memwait))
  dd_dev_err(dd, "memwait list not empty!\n");

 del_timer_sync(&dev->mem_timer);
 verbs_txreq_exit(dev);

 mutex_lock(&cntr_names_lock);
 kfree(dev_cntr_names);
 kfree(port_cntr_names);
 dev_cntr_names = ((void*)0);
 port_cntr_names = ((void*)0);
 cntr_names_initialized = 0;
 mutex_unlock(&cntr_names_lock);
}

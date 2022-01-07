
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int addr_wq ;
 int destroy_workqueue (int ) ;
 int list_empty (int *) ;
 int nb ;
 int req_list ;
 int unregister_netevent_notifier (int *) ;

void addr_cleanup(void)
{
 unregister_netevent_notifier(&nb);
 destroy_workqueue(addr_wq);
 WARN_ON(!list_empty(&req_list));
}

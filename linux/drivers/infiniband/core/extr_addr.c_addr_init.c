
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int addr_wq ;
 int alloc_ordered_workqueue (char*,int ) ;
 int nb ;
 int register_netevent_notifier (int *) ;

int addr_init(void)
{
 addr_wq = alloc_ordered_workqueue("ib_addr", 0);
 if (!addr_wq)
  return -ENOMEM;

 register_netevent_notifier(&nb);

 return 0;
}

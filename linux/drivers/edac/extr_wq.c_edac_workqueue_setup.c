
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ) ;
 int wq ;

int edac_workqueue_setup(void)
{
 wq = alloc_ordered_workqueue("edac-poller", WQ_MEM_RECLAIM);
 if (!wq)
  return -ENODEV;
 else
  return 0;
}

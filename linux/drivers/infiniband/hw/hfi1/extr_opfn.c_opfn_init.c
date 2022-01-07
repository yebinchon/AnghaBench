
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int HFI1_MAX_ACTIVE_WORKQUEUE_ENTRIES ;
 int WQ_CPU_INTENSIVE ;
 int WQ_HIGHPRI ;
 int WQ_MEM_RECLAIM ;
 int WQ_SYSFS ;
 int alloc_workqueue (char*,int,int ) ;
 int opfn_wq ;

int opfn_init(void)
{
 opfn_wq = alloc_workqueue("hfi_opfn",
      WQ_SYSFS | WQ_HIGHPRI | WQ_CPU_INTENSIVE |
      WQ_MEM_RECLAIM,
      HFI1_MAX_ACTIVE_WORKQUEUE_ENTRIES);
 if (!opfn_wq)
  return -ENOMEM;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct mm_struct {int pinned_vm; } ;
struct hfi1_devdata {unsigned int num_rcv_contexts; unsigned int first_dyn_alloc_ctxt; } ;


 int CAP_IPC_LOCK ;
 unsigned long DIV_ROUND_UP (unsigned long,int ) ;
 int PAGE_SIZE ;
 int RLIMIT_MEMLOCK ;
 unsigned long atomic64_read (int *) ;
 unsigned long cache_size ;
 int capable (int ) ;
 unsigned long rlimit (int ) ;

bool hfi1_can_pin_pages(struct hfi1_devdata *dd, struct mm_struct *mm,
   u32 nlocked, u32 npages)
{
 unsigned long ulimit = rlimit(RLIMIT_MEMLOCK), pinned, cache_limit,
  size = (cache_size * (1UL << 20));
 unsigned int usr_ctxts =
   dd->num_rcv_contexts - dd->first_dyn_alloc_ctxt;
 bool can_lock = capable(CAP_IPC_LOCK);






 cache_limit = (ulimit / usr_ctxts) / 4;


 if (ulimit != (-1UL) && size > cache_limit)
  size = cache_limit;


 size = DIV_ROUND_UP(size, PAGE_SIZE);

 pinned = atomic64_read(&mm->pinned_vm);


 if (pinned + npages >= ulimit && !can_lock)
  return 0;

 return ((nlocked + npages) <= size) || can_lock;
}

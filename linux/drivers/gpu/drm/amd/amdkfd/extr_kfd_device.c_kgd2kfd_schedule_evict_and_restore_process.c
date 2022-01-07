
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct kfd_process {scalar_t__ last_eviction_seqno; unsigned long last_restore_timestamp; int eviction_work; } ;
struct dma_fence {scalar_t__ seqno; } ;


 int EINVAL ;
 int ENODEV ;
 int PROCESS_ACTIVE_TIME_MS ;
 scalar_t__ dma_fence_is_signaled (struct dma_fence*) ;
 unsigned long get_jiffies_64 () ;
 struct kfd_process* kfd_lookup_process_by_mm (struct mm_struct*) ;
 int kfd_unref_process (struct kfd_process*) ;
 unsigned long msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,unsigned long) ;

int kgd2kfd_schedule_evict_and_restore_process(struct mm_struct *mm,
            struct dma_fence *fence)
{
 struct kfd_process *p;
 unsigned long active_time;
 unsigned long delay_jiffies = msecs_to_jiffies(PROCESS_ACTIVE_TIME_MS);

 if (!fence)
  return -EINVAL;

 if (dma_fence_is_signaled(fence))
  return 0;

 p = kfd_lookup_process_by_mm(mm);
 if (!p)
  return -ENODEV;

 if (fence->seqno == p->last_eviction_seqno)
  goto out;

 p->last_eviction_seqno = fence->seqno;




 active_time = get_jiffies_64() - p->last_restore_timestamp;
 if (delay_jiffies > active_time)
  delay_jiffies -= active_time;
 else
  delay_jiffies = 0;




 schedule_delayed_work(&p->eviction_work, delay_jiffies);
out:
 kfd_unref_process(p);
 return 0;
}

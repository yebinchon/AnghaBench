
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iova_fq {int lock; TYPE_1__* entries; } ;
struct iova_domain {int fq_timer; int fq_timer_on; int fq_flush_start_cnt; int fq; } ;
struct TYPE_2__ {unsigned long iova_pfn; unsigned long pages; unsigned long data; int counter; } ;


 int IOVA_FQ_TIMEOUT ;
 int atomic64_read (int *) ;
 int atomic_cmpxchg (int *,int ,int) ;
 int atomic_read (int *) ;
 scalar_t__ fq_full (struct iova_fq*) ;
 unsigned int fq_ring_add (struct iova_fq*) ;
 int fq_ring_free (struct iova_domain*,struct iova_fq*) ;
 int iova_domain_flush (struct iova_domain*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct iova_fq* raw_cpu_ptr (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void queue_iova(struct iova_domain *iovad,
  unsigned long pfn, unsigned long pages,
  unsigned long data)
{
 struct iova_fq *fq = raw_cpu_ptr(iovad->fq);
 unsigned long flags;
 unsigned idx;

 spin_lock_irqsave(&fq->lock, flags);






 fq_ring_free(iovad, fq);

 if (fq_full(fq)) {
  iova_domain_flush(iovad);
  fq_ring_free(iovad, fq);
 }

 idx = fq_ring_add(fq);

 fq->entries[idx].iova_pfn = pfn;
 fq->entries[idx].pages = pages;
 fq->entries[idx].data = data;
 fq->entries[idx].counter = atomic64_read(&iovad->fq_flush_start_cnt);

 spin_unlock_irqrestore(&fq->lock, flags);


 if (!atomic_read(&iovad->fq_timer_on) &&
     !atomic_cmpxchg(&iovad->fq_timer_on, 0, 1))
  mod_timer(&iovad->fq_timer,
     jiffies + msecs_to_jiffies(IOVA_FQ_TIMEOUT));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_kcopyd_throttle {unsigned int last_jiffies; scalar_t__ io_period; scalar_t__ total_period; int num_io_jobs; int throttle; } ;


 int READ_ONCE (int ) ;
 unsigned int jiffies ;
 scalar_t__ likely (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int throttle_spinlock ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void io_job_finish(struct dm_kcopyd_throttle *t)
{
 unsigned long flags;

 if (unlikely(!t))
  return;

 spin_lock_irqsave(&throttle_spinlock, flags);

 t->num_io_jobs--;

 if (likely(READ_ONCE(t->throttle) >= 100))
  goto skip_limit;

 if (!t->num_io_jobs) {
  unsigned now, difference;

  now = jiffies;
  difference = now - t->last_jiffies;
  t->last_jiffies = now;

  t->io_period += difference;
  t->total_period += difference;




  if (unlikely(t->io_period > t->total_period))
   t->io_period = t->total_period;
 }

skip_limit:
 spin_unlock_irqrestore(&throttle_spinlock, flags);
}

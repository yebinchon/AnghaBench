
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r5l_log {scalar_t__ max_free_space; int io_mutex; scalar_t__ last_checkpoint; int io_list_lock; int iounit_wait; TYPE_2__* rdev; int finished_ios; int flushing_ios; int io_end_ios; int running_ios; int no_space_stripes; int reclaim_target; } ;
struct r5conf {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_4__ {TYPE_1__* mddev; } ;
struct TYPE_3__ {int thread; struct r5conf* private; } ;


 scalar_t__ list_empty (int *) ;
 int md_wakeup_thread (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ r5c_calculate_new_cp (struct r5conf*) ;
 int r5c_update_log_state (struct r5l_log*) ;
 scalar_t__ r5l_reclaimable_space (struct r5l_log*) ;
 int r5l_run_no_space_stripes (struct r5l_log*) ;
 int r5l_write_super_and_discard_space (struct r5l_log*,scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_lock_irq (int ,int,int ) ;
 scalar_t__ xchg (int *,int ) ;

__attribute__((used)) static void r5l_do_reclaim(struct r5l_log *log)
{
 struct r5conf *conf = log->rdev->mddev->private;
 sector_t reclaim_target = xchg(&log->reclaim_target, 0);
 sector_t reclaimable;
 sector_t next_checkpoint;
 bool write_super;

 spin_lock_irq(&log->io_list_lock);
 write_super = r5l_reclaimable_space(log) > log->max_free_space ||
  reclaim_target != 0 || !list_empty(&log->no_space_stripes);





 while (1) {
  reclaimable = r5l_reclaimable_space(log);
  if (reclaimable >= reclaim_target ||
      (list_empty(&log->running_ios) &&
       list_empty(&log->io_end_ios) &&
       list_empty(&log->flushing_ios) &&
       list_empty(&log->finished_ios)))
   break;

  md_wakeup_thread(log->rdev->mddev->thread);
  wait_event_lock_irq(log->iounit_wait,
        r5l_reclaimable_space(log) > reclaimable,
        log->io_list_lock);
 }

 next_checkpoint = r5c_calculate_new_cp(conf);
 spin_unlock_irq(&log->io_list_lock);

 if (reclaimable == 0 || !write_super)
  return;






 r5l_write_super_and_discard_space(log, next_checkpoint);

 mutex_lock(&log->io_mutex);
 log->last_checkpoint = next_checkpoint;
 r5c_update_log_state(log);
 mutex_unlock(&log->io_mutex);

 r5l_run_no_space_stripes(log);
}

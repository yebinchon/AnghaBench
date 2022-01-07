
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r5l_log {scalar_t__ max_free_space; int iounit_wait; int io_list_lock; TYPE_2__* rdev; } ;
struct r5l_io_unit {struct r5l_log* log; } ;
struct r5conf {int cache_state; } ;
struct TYPE_4__ {TYPE_1__* mddev; } ;
struct TYPE_3__ {struct r5conf* private; } ;


 int IO_UNIT_STRIPE_END ;
 int R5C_LOG_TIGHT ;
 int __r5l_set_io_unit_state (struct r5l_io_unit*,int ) ;
 int r5l_complete_finished_ios (struct r5l_log*) ;
 scalar_t__ r5l_reclaimable_space (struct r5l_log*) ;
 int r5l_wake_reclaim (struct r5l_log*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void __r5l_stripe_write_finished(struct r5l_io_unit *io)
{
 struct r5l_log *log = io->log;
 struct r5conf *conf = log->rdev->mddev->private;
 unsigned long flags;

 spin_lock_irqsave(&log->io_list_lock, flags);
 __r5l_set_io_unit_state(io, IO_UNIT_STRIPE_END);

 if (!r5l_complete_finished_ios(log)) {
  spin_unlock_irqrestore(&log->io_list_lock, flags);
  return;
 }

 if (r5l_reclaimable_space(log) > log->max_free_space ||
     test_bit(R5C_LOG_TIGHT, &conf->cache_state))
  r5l_wake_reclaim(log, 0);

 spin_unlock_irqrestore(&log->io_list_lock, flags);
 wake_up(&log->iounit_wait);
}

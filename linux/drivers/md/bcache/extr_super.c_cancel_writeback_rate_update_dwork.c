
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct cached_dev {int writeback_rate_update; TYPE_1__ disk; } ;


 int BCACHE_DEV_RATE_DW_RUNNING ;
 int HZ ;
 int WRITEBACK_RATE_UPDATE_SECS_MAX ;
 int cancel_delayed_work_sync (int *) ;
 int pr_warn (char*) ;
 int schedule_timeout_interruptible (int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void cancel_writeback_rate_update_dwork(struct cached_dev *dc)
{
 int time_out = WRITEBACK_RATE_UPDATE_SECS_MAX * HZ;

 do {
  if (!test_bit(BCACHE_DEV_RATE_DW_RUNNING,
         &dc->disk.flags))
   break;
  time_out--;
  schedule_timeout_interruptible(1);
 } while (time_out > 0);

 if (time_out == 0)
  pr_warn("give up waiting for dc->writeback_write_update to quit");

 cancel_delayed_work_sync(&dc->writeback_rate_update);
}

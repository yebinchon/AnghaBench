
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_log {scalar_t__ r5c_journal_mode; int disable_writeback_work; } ;
struct r5conf {struct r5l_log* log; } ;
struct mddev {struct r5conf* private; } ;
struct md_rdev {int flags; } ;


 int Journal ;
 scalar_t__ R5C_JOURNAL_MODE_WRITE_BACK ;
 scalar_t__ raid5_calc_degraded (struct r5conf*) ;
 int schedule_work (int *) ;
 scalar_t__ test_bit (int ,int *) ;

void r5c_update_on_rdev_error(struct mddev *mddev, struct md_rdev *rdev)
{
 struct r5conf *conf = mddev->private;
 struct r5l_log *log = conf->log;

 if (!log)
  return;

 if ((raid5_calc_degraded(conf) > 0 ||
      test_bit(Journal, &rdev->flags)) &&
     conf->log->r5c_journal_mode == R5C_JOURNAL_MODE_WRITE_BACK)
  schedule_work(&log->disable_writeback_work);
}

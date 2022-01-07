
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5conf {TYPE_1__* log; } ;
struct mddev {struct r5conf* private; } ;
struct TYPE_2__ {int r5c_journal_mode; } ;


 int EINVAL ;
 int ENODEV ;
 int R5C_JOURNAL_MODE_WRITE_BACK ;
 int R5C_JOURNAL_MODE_WRITE_THROUGH ;
 int mddev_resume (struct mddev*) ;
 int mddev_suspend (struct mddev*) ;
 int mdname (struct mddev*) ;
 int pr_debug (char*,int ,int,int ) ;
 int * r5c_journal_mode_str ;
 scalar_t__ raid5_calc_degraded (struct r5conf*) ;

int r5c_journal_mode_set(struct mddev *mddev, int mode)
{
 struct r5conf *conf;

 if (mode < R5C_JOURNAL_MODE_WRITE_THROUGH ||
     mode > R5C_JOURNAL_MODE_WRITE_BACK)
  return -EINVAL;

 conf = mddev->private;
 if (!conf || !conf->log)
  return -ENODEV;

 if (raid5_calc_degraded(conf) > 0 &&
     mode == R5C_JOURNAL_MODE_WRITE_BACK)
  return -EINVAL;

 mddev_suspend(mddev);
 conf->log->r5c_journal_mode = mode;
 mddev_resume(mddev);

 pr_debug("md/raid:%s: setting r5c cache mode to %d: %s\n",
   mdname(mddev), mode, r5c_journal_mode_str[mode]);
 return 0;
}

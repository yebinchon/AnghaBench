
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5l_log {TYPE_1__* rdev; } ;
struct r5conf {int dummy; } ;
struct mddev {struct r5conf* private; } ;
struct TYPE_2__ {struct mddev* mddev; } ;


 int r5l_exit_log (struct r5conf*) ;
 int r5l_load_log (struct r5l_log*) ;

int r5l_start(struct r5l_log *log)
{
 int ret;

 if (!log)
  return 0;

 ret = r5l_load_log(log);
 if (ret) {
  struct mddev *mddev = log->rdev->mddev;
  struct r5conf *conf = mddev->private;

  r5l_exit_log(conf);
 }
 return ret;
}

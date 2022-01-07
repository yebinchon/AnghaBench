
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5conf {TYPE_1__* log; } ;
struct mddev {struct r5conf* private; } ;
typedef int ssize_t ;
struct TYPE_2__ {int r5c_journal_mode; } ;


 int PAGE_SIZE ;


 int mddev_lock (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;
 char** r5c_journal_mode_str ;
 int snprintf (char*,int ,char*,char*,char*) ;

__attribute__((used)) static ssize_t r5c_journal_mode_show(struct mddev *mddev, char *page)
{
 struct r5conf *conf;
 int ret;

 ret = mddev_lock(mddev);
 if (ret)
  return ret;

 conf = mddev->private;
 if (!conf || !conf->log) {
  mddev_unlock(mddev);
  return 0;
 }

 switch (conf->log->r5c_journal_mode) {
 case 128:
  ret = snprintf(
   page, PAGE_SIZE, "[%s] %s\n",
   r5c_journal_mode_str[128],
   r5c_journal_mode_str[129]);
  break;
 case 129:
  ret = snprintf(
   page, PAGE_SIZE, "%s [%s]\n",
   r5c_journal_mode_str[128],
   r5c_journal_mode_str[129]);
  break;
 default:
  ret = 0;
 }
 mddev_unlock(mddev);
 return ret;
}

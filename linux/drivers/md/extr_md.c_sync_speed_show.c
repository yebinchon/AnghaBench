
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ curr_resync; unsigned long curr_mark_cnt; unsigned long resync_mark; unsigned long resync_mark_cnt; int recovery_active; } ;
typedef int ssize_t ;


 unsigned long HZ ;
 unsigned long atomic_read (int *) ;
 unsigned long jiffies ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
sync_speed_show(struct mddev *mddev, char *page)
{
 unsigned long resync, dt, db;
 if (mddev->curr_resync == 0)
  return sprintf(page, "none\n");
 resync = mddev->curr_mark_cnt - atomic_read(&mddev->recovery_active);
 dt = (jiffies - mddev->resync_mark) / HZ;
 if (!dt) dt++;
 db = resync - mddev->resync_mark_cnt;
 return sprintf(page, "%lu\n", db/dt/2);
}

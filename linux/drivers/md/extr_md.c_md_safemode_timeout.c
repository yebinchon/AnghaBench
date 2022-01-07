
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mddev {int safemode; int thread; int sysfs_state; scalar_t__ external; } ;


 struct mddev* from_timer (int ,struct timer_list*,int ) ;
 int md_wakeup_thread (int ) ;
 struct mddev* mddev ;
 int safemode_timer ;
 int sysfs_notify_dirent_safe (int ) ;

__attribute__((used)) static void md_safemode_timeout(struct timer_list *t)
{
 struct mddev *mddev = from_timer(mddev, t, safemode_timer);

 mddev->safemode = 1;
 if (mddev->external)
  sysfs_notify_dirent_safe(mddev->sysfs_state);

 md_wakeup_thread(mddev->thread);
}

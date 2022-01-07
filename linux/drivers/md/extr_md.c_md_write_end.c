
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int safemode; scalar_t__ safemode_delay; int safemode_timer; int thread; int writes_pending; } ;


 int jiffies ;
 int md_wakeup_thread (int ) ;
 int mod_timer (int *,scalar_t__) ;
 int percpu_ref_put (int *) ;
 scalar_t__ roundup (int ,scalar_t__) ;

void md_write_end(struct mddev *mddev)
{
 percpu_ref_put(&mddev->writes_pending);

 if (mddev->safemode == 2)
  md_wakeup_thread(mddev->thread);
 else if (mddev->safemode_delay)



  mod_timer(&mddev->safemode_timer,
     roundup(jiffies, mddev->safemode_delay) +
     mddev->safemode_delay);
}

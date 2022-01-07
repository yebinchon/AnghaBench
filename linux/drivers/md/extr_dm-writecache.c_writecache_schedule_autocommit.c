
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {scalar_t__ autocommit_jiffies; int autocommit_timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer_pending (int *) ;

__attribute__((used)) static void writecache_schedule_autocommit(struct dm_writecache *wc)
{
 if (!timer_pending(&wc->autocommit_timer))
  mod_timer(&wc->autocommit_timer, jiffies + wc->autocommit_jiffies);
}

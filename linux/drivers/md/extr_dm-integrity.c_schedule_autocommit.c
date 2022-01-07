
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_integrity_c {scalar_t__ autocommit_jiffies; int autocommit_timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer_pending (int *) ;

__attribute__((used)) static void schedule_autocommit(struct dm_integrity_c *ic)
{
 if (!timer_pending(&ic->autocommit_timer))
  mod_timer(&ic->autocommit_timer, jiffies + ic->autocommit_jiffies);
}

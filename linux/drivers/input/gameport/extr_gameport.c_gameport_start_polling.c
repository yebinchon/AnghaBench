
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int timer_lock; int poll_interval; int poll_timer; int poll_handler; int poll_cnt; } ;


 int BUG_ON (int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void gameport_start_polling(struct gameport *gameport)
{
 spin_lock(&gameport->timer_lock);

 if (!gameport->poll_cnt++) {
  BUG_ON(!gameport->poll_handler);
  BUG_ON(!gameport->poll_interval);
  mod_timer(&gameport->poll_timer, jiffies + msecs_to_jiffies(gameport->poll_interval));
 }

 spin_unlock(&gameport->timer_lock);
}

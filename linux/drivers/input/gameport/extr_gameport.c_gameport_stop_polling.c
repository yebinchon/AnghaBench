
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int timer_lock; int poll_timer; int poll_cnt; } ;


 int del_timer (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void gameport_stop_polling(struct gameport *gameport)
{
 spin_lock(&gameport->timer_lock);

 if (!--gameport->poll_cnt)
  del_timer(&gameport->poll_timer);

 spin_unlock(&gameport->timer_lock);
}

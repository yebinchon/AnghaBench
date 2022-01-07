
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct gameport {int poll_interval; int poll_timer; scalar_t__ poll_cnt; int (* poll_handler ) (struct gameport*) ;} ;


 struct gameport* from_timer (int ,struct timer_list*,int ) ;
 struct gameport* gameport ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int poll_timer ;
 int stub1 (struct gameport*) ;

__attribute__((used)) static void gameport_run_poll_handler(struct timer_list *t)
{
 struct gameport *gameport = from_timer(gameport, t, poll_timer);

 gameport->poll_handler(gameport);
 if (gameport->poll_cnt)
  mod_timer(&gameport->poll_timer, jiffies + msecs_to_jiffies(gameport->poll_interval));
}

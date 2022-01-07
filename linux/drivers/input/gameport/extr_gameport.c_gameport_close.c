
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int (* close ) (struct gameport*) ;scalar_t__ poll_interval; int * poll_handler; int poll_timer; } ;


 int del_timer_sync (int *) ;
 int gameport_set_drv (struct gameport*,int *) ;
 int stub1 (struct gameport*) ;

void gameport_close(struct gameport *gameport)
{
 del_timer_sync(&gameport->poll_timer);
 gameport->poll_handler = ((void*)0);
 gameport->poll_interval = 0;
 gameport_set_drv(gameport, ((void*)0));
 if (gameport->close)
  gameport->close(gameport);
}

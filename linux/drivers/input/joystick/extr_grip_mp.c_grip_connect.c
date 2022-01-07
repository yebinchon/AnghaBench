
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grip_mp {TYPE_1__** port; struct gameport* gameport; } ;
struct gameport_driver {int dummy; } ;
struct gameport {int dummy; } ;
struct TYPE_2__ {int mode; } ;


 int ENODEV ;
 int ENOMEM ;
 int GAMEPORT_MODE_RAW ;
 int GFP_KERNEL ;
 int gameport_close (struct gameport*) ;
 int gameport_open (struct gameport*,struct gameport_driver*,int ) ;
 int gameport_set_drvdata (struct gameport*,struct grip_mp*) ;
 int gameport_set_poll_handler (struct gameport*,int ) ;
 int gameport_set_poll_interval (struct gameport*,int) ;
 int grip_poll ;
 int kfree (struct grip_mp*) ;
 struct grip_mp* kzalloc (int,int ) ;
 int multiport_init (struct grip_mp*) ;

__attribute__((used)) static int grip_connect(struct gameport *gameport, struct gameport_driver *drv)
{
 struct grip_mp *grip;
 int err;

 if (!(grip = kzalloc(sizeof(struct grip_mp), GFP_KERNEL)))
  return -ENOMEM;

 grip->gameport = gameport;

 gameport_set_drvdata(gameport, grip);

 err = gameport_open(gameport, drv, GAMEPORT_MODE_RAW);
 if (err)
  goto fail1;

 gameport_set_poll_handler(gameport, grip_poll);
 gameport_set_poll_interval(gameport, 20);

 if (!multiport_init(grip)) {
  err = -ENODEV;
  goto fail2;
 }

 if (!grip->port[0]->mode && !grip->port[1]->mode && !grip->port[2]->mode && !grip->port[3]->mode) {

  err = -ENODEV;
  goto fail2;
 }

 return 0;

fail2: gameport_close(gameport);
fail1: gameport_set_drvdata(gameport, ((void*)0));
 kfree(grip);
 return err;
}

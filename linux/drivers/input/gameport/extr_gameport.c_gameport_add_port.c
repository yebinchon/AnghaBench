
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gameport {int name; int phys; int dev; int speed; scalar_t__ io; int node; TYPE_1__* parent; } ;
struct TYPE_2__ {struct gameport* child; } ;


 int dev_err (int *,char*,int ,int ,int) ;
 int dev_info (int *,char*,int ,int ,int ,...) ;
 int device_add (int *) ;
 int gameport_list ;
 int gameport_measure_speed (struct gameport*) ;
 int list_add_tail (int *,int *) ;
 int old_gameport_measure_speed (struct gameport*) ;
 scalar_t__ use_ktime ;

__attribute__((used)) static void gameport_add_port(struct gameport *gameport)
{
 int error;

 if (gameport->parent)
  gameport->parent->child = gameport;

 gameport->speed = use_ktime ?
  gameport_measure_speed(gameport) :
  old_gameport_measure_speed(gameport);

 list_add_tail(&gameport->node, &gameport_list);

 if (gameport->io)
  dev_info(&gameport->dev, "%s is %s, io %#x, speed %dkHz\n",
    gameport->name, gameport->phys, gameport->io, gameport->speed);
 else
  dev_info(&gameport->dev, "%s is %s, speed %dkHz\n",
   gameport->name, gameport->phys, gameport->speed);

 error = device_add(&gameport->dev);
 if (error)
  dev_err(&gameport->dev,
   "device_add() failed for %s (%s), error: %d\n",
   gameport->phys, gameport->name, error);
}

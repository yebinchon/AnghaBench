
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw {int number; int * dev; } ;
struct gameport {int dummy; } ;


 int gameport_close (struct gameport*) ;
 struct sw* gameport_get_drvdata (struct gameport*) ;
 int gameport_set_drvdata (struct gameport*,int *) ;
 int input_unregister_device (int ) ;
 int kfree (struct sw*) ;

__attribute__((used)) static void sw_disconnect(struct gameport *gameport)
{
 struct sw *sw = gameport_get_drvdata(gameport);
 int i;

 for (i = 0; i < sw->number; i++)
  input_unregister_device(sw->dev[i]);
 gameport_close(gameport);
 gameport_set_drvdata(gameport, ((void*)0));
 kfree(sw);
}

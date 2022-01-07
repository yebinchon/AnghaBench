
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;
struct a3d {scalar_t__ adc; int dev; } ;


 int gameport_close (struct gameport*) ;
 struct a3d* gameport_get_drvdata (struct gameport*) ;
 int gameport_set_drvdata (struct gameport*,int *) ;
 int gameport_unregister_port (scalar_t__) ;
 int input_unregister_device (int ) ;
 int kfree (struct a3d*) ;

__attribute__((used)) static void a3d_disconnect(struct gameport *gameport)
{
 struct a3d *a3d = gameport_get_drvdata(gameport);

 input_unregister_device(a3d->dev);
 if (a3d->adc)
  gameport_unregister_port(a3d->adc);
 gameport_close(gameport);
 gameport_set_drvdata(gameport, ((void*)0));
 kfree(a3d);
}

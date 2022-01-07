
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gameport {int dummy; } ;
struct adi_port {TYPE_1__* adi; } ;
struct TYPE_2__ {scalar_t__ length; int dev; } ;


 int gameport_close (struct gameport*) ;
 struct adi_port* gameport_get_drvdata (struct gameport*) ;
 int gameport_set_drvdata (struct gameport*,int *) ;
 int input_unregister_device (int ) ;
 int kfree (struct adi_port*) ;

__attribute__((used)) static void adi_disconnect(struct gameport *gameport)
{
 int i;
 struct adi_port *port = gameport_get_drvdata(gameport);

 for (i = 0; i < 2; i++)
  if (port->adi[i].length > 0)
   input_unregister_device(port->adi[i].dev);
 gameport_close(gameport);
 gameport_set_drvdata(gameport, ((void*)0));
 kfree(port);
}

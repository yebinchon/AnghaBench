
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct walkera_dev {TYPE_1__* parport; int pardevice; int input_dev; } ;
struct parport {scalar_t__ number; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 int input_unregister_device (int ) ;
 int parport_unregister_device (int ) ;
 struct walkera_dev w_dev ;

__attribute__((used)) static void walkera0701_detach(struct parport *port)
{
 struct walkera_dev *w = &w_dev;

 if (!w->pardevice || w->parport->number != port->number)
  return;

 input_unregister_device(w->input_dev);
 parport_unregister_device(w->pardevice);
 w->parport = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {scalar_t__ number; } ;


 int parkbd_dev ;
 int * parkbd_port ;
 scalar_t__ parkbd_pp_no ;
 int parport_release (int ) ;
 int parport_unregister_device (int ) ;
 int serio_unregister_port (int *) ;

__attribute__((used)) static void parkbd_detach(struct parport *port)
{
 if (!parkbd_port || port->number != parkbd_pp_no)
  return;

 parport_release(parkbd_dev);
 serio_unregister_port(parkbd_port);
 parport_unregister_device(parkbd_dev);
 parkbd_port = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct gscps2port* port_data; } ;
struct gscps2port {int dummy; } ;


 int ENABLE ;
 int gscps2_enable (struct gscps2port*,int ) ;
 int gscps2_interrupt (int ,int *) ;
 int gscps2_reset (struct gscps2port*) ;

__attribute__((used)) static int gscps2_open(struct serio *port)
{
 struct gscps2port *ps2port = port->port_data;

 gscps2_reset(ps2port);


 gscps2_enable(ps2port, ENABLE);

 gscps2_interrupt(0, ((void*)0));

 return 0;
}

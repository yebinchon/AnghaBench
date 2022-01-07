
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dev; } ;
struct ps2mult_port {int sel; } ;
struct ps2mult {struct ps2mult_port* out_port; struct serio* mx_serio; } ;


 int dev_dbg (int *,char*,int ) ;
 int serio_write (struct serio*,int ) ;

__attribute__((used)) static void ps2mult_select_port(struct ps2mult *psm, struct ps2mult_port *port)
{
 struct serio *mx_serio = psm->mx_serio;

 serio_write(mx_serio, port->sel);
 psm->out_port = port;
 dev_dbg(&mx_serio->dev, "switched to sel %02x\n", port->sel);
}

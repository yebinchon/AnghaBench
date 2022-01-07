
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grip_port {int buttons; scalar_t__ dirty; int dev; int yaxes; int xaxes; } ;
struct grip_mp {struct grip_port** port; } ;


 int ABS_X ;
 int ABS_Y ;
 int * grip_btn_gp ;
 int input_report_abs (int ,int ,int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void report_slot(struct grip_mp *grip, int slot)
{
 struct grip_port *port = grip->port[slot];
 int i;



 for (i = 0; i < 8; i++)
  input_report_key(port->dev, grip_btn_gp[i], (port->buttons >> i) & 1);



 input_report_abs(port->dev, ABS_X, port->xaxes);
 input_report_abs(port->dev, ABS_Y, port->yaxes);



 input_sync(port->dev);

 port->dirty = 0;
}

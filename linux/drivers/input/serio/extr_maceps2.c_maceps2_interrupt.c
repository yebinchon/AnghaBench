
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {scalar_t__ port_data; } ;
struct maceps2_data {struct mace_ps2port* port; } ;
struct mace_ps2port {int status; unsigned long rx; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PS2_STATUS_RX_FULL ;
 int serio_interrupt (struct serio*,unsigned long,int ) ;

__attribute__((used)) static irqreturn_t maceps2_interrupt(int irq, void *dev_id)
{
 struct serio *dev = dev_id;
 struct mace_ps2port *port = ((struct maceps2_data *)dev->port_data)->port;
 unsigned long byte;

 if (port->status & PS2_STATUS_RX_FULL) {
  byte = port->rx;
  serio_interrupt(dev, byte & 0xff, 0);
        }

 return IRQ_HANDLED;
}

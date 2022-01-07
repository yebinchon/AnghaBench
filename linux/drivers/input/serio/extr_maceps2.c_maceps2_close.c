
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {scalar_t__ port_data; } ;
struct maceps2_data {int irq; TYPE_1__* port; } ;
struct TYPE_2__ {int control; } ;


 int PS2_CONTROL_RESET ;
 int PS2_CONTROL_TX_CLOCK_DISABLE ;
 int free_irq (int ,struct serio*) ;
 int udelay (int) ;

__attribute__((used)) static void maceps2_close(struct serio *dev)
{
 struct maceps2_data *data = (struct maceps2_data *)dev->port_data;

 data->port->control = PS2_CONTROL_TX_CLOCK_DISABLE | PS2_CONTROL_RESET;
 udelay(100);
 free_irq(data->irq, dev);
}

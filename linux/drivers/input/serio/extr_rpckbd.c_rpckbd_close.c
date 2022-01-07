
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct rpckbd_data* port_data; } ;
struct rpckbd_data {int tx_irq; int rx_irq; } ;


 int free_irq (int ,struct serio*) ;

__attribute__((used)) static void rpckbd_close(struct serio *port)
{
 struct rpckbd_data *rpckbd = port->port_data;

 free_irq(rpckbd->rx_irq, port);
 free_irq(rpckbd->tx_irq, port);
}

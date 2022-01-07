
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {scalar_t__ port_data; } ;
struct maceps2_data {struct mace_ps2port* port; } ;
struct mace_ps2port {int status; unsigned char tx; } ;


 unsigned int MACE_PS2_TIMEOUT ;
 int PS2_STATUS_TX_EMPTY ;
 int udelay (int) ;

__attribute__((used)) static int maceps2_write(struct serio *dev, unsigned char val)
{
 struct mace_ps2port *port = ((struct maceps2_data *)dev->port_data)->port;
 unsigned int timeout = MACE_PS2_TIMEOUT;

 do {
  if (port->status & PS2_STATUS_TX_EMPTY) {
   port->tx = val;
   return 0;
  }
  udelay(50);
 } while (timeout--);

 return -1;
}

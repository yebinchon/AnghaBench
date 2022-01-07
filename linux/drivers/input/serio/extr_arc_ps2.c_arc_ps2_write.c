
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dev; struct arc_ps2_port* port_data; } ;
struct arc_ps2_port {int data_addr; int status_addr; } ;


 int ETIMEDOUT ;
 unsigned int PS2_STAT_TX_ISNOT_FUL ;
 int STAT_TIMEOUT ;
 int cpu_relax () ;
 int dev_err (int *,char*) ;
 unsigned int ioread32 (int ) ;
 int iowrite32 (unsigned char,int ) ;

__attribute__((used)) static int arc_ps2_write(struct serio *io, unsigned char val)
{
 unsigned status;
 struct arc_ps2_port *port = io->port_data;
 int timeout = STAT_TIMEOUT;

 do {
  status = ioread32(port->status_addr);
  cpu_relax();

  if (status & PS2_STAT_TX_ISNOT_FUL) {
   iowrite32(val & 0xff, port->data_addr);
   return 0;
  }

 } while (--timeout);

 dev_err(&io->dev, "write timeout\n");
 return -ETIMEDOUT;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct arc_ps2_port* port_data; } ;
struct arc_ps2_port {int status_addr; } ;


 int PS2_STAT_RX_INT_EN ;
 int ioread32 (int ) ;
 int iowrite32 (int,int ) ;

__attribute__((used)) static void arc_ps2_close(struct serio *io)
{
 struct arc_ps2_port *port = io->port_data;

 iowrite32(ioread32(port->status_addr) & ~PS2_STAT_RX_INT_EN,
    port->status_addr);
}

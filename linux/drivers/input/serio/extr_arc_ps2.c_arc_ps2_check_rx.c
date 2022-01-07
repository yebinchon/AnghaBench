
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arc_ps2_port {TYPE_1__* io; int data_addr; int status_addr; } ;
struct arc_ps2_data {int buf_overflow; int frame_error; int total_int; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int PS2_STAT_RX_BUF_OVER ;
 unsigned int PS2_STAT_RX_FRM_ERR ;
 unsigned int PS2_STAT_RX_VAL ;
 unsigned int SERIO_FRAME ;
 unsigned int SERIO_PARITY ;
 int dev_err (int *,char*) ;
 int ioread32 (int ) ;
 int serio_interrupt (TYPE_1__*,unsigned char,unsigned int) ;

__attribute__((used)) static void arc_ps2_check_rx(struct arc_ps2_data *arc_ps2,
        struct arc_ps2_port *port)
{
 unsigned int timeout = 1000;
 unsigned int flag, status;
 unsigned char data;

 do {
  status = ioread32(port->status_addr);
  if (!(status & PS2_STAT_RX_VAL))
   return;

  data = ioread32(port->data_addr) & 0xff;

  flag = 0;
  arc_ps2->total_int++;
  if (status & PS2_STAT_RX_FRM_ERR) {
   arc_ps2->frame_error++;
   flag |= SERIO_PARITY;
  } else if (status & PS2_STAT_RX_BUF_OVER) {
   arc_ps2->buf_overflow++;
   flag |= SERIO_FRAME;
  }

  serio_interrupt(port->io, data, flag);
 } while (--timeout);

 dev_err(&port->io->dev, "PS/2 hardware stuck\n");
}

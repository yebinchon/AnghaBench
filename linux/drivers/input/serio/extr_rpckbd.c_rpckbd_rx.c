
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
typedef int irqreturn_t ;


 int IOMD_KARTRX ;
 int IOMD_KCTRL ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int iomd_readb (int ) ;
 int serio_interrupt (struct serio*,unsigned int,int ) ;

__attribute__((used)) static irqreturn_t rpckbd_rx(int irq, void *dev_id)
{
 struct serio *port = dev_id;
 unsigned int byte;
 int handled = IRQ_NONE;

 while (iomd_readb(IOMD_KCTRL) & (1 << 5)) {
  byte = iomd_readb(IOMD_KARTRX);

  serio_interrupt(port, byte, 0);
  handled = IRQ_HANDLED;
 }
 return handled;
}

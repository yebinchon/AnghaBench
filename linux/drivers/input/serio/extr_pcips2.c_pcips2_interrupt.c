
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcips2_data {int io; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 scalar_t__ PS2_DATA ;
 scalar_t__ PS2_STATUS ;
 unsigned char PS2_STAT_PARITY ;
 unsigned char PS2_STAT_RXFULL ;
 unsigned int SERIO_PARITY ;
 int hweight8 (unsigned char) ;
 unsigned char inb (scalar_t__) ;
 int serio_interrupt (int ,unsigned char,unsigned int) ;

__attribute__((used)) static irqreturn_t pcips2_interrupt(int irq, void *devid)
{
 struct pcips2_data *ps2if = devid;
 unsigned char status, scancode;
 int handled = 0;

 do {
  unsigned int flag;

  status = inb(ps2if->base + PS2_STATUS);
  if (!(status & PS2_STAT_RXFULL))
   break;
  handled = 1;
  scancode = inb(ps2if->base + PS2_DATA);
  if (status == 0xff && scancode == 0xff)
   break;

  flag = (status & PS2_STAT_PARITY) ? 0 : SERIO_PARITY;

  if (hweight8(scancode) & 1)
   flag ^= SERIO_PARITY;

  serio_interrupt(ps2if->io, scancode, flag);
 } while (1);
 return IRQ_RETVAL(handled);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {unsigned char sdr; int cra; } ;


 int IRQ_HANDLED ;
 int * amikbd_messages ;
 TYPE_1__ ciaa ;
 int input_report_key (struct input_dev*,unsigned char,unsigned char) ;
 int input_sync (struct input_dev*) ;
 int printk (int ) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t amikbd_interrupt(int irq, void *data)
{
 struct input_dev *dev = data;
 unsigned char scancode, down;

 scancode = ~ciaa.sdr;
 ciaa.cra |= 0x40;
 udelay(85);
 ciaa.cra &= ~0x40;

 down = !(scancode & 1);
 scancode >>= 1;

 if (scancode < 0x78) {
  if (scancode == 98) {
   input_report_key(dev, scancode, 1);
   input_report_key(dev, scancode, 0);
  } else {
   input_report_key(dev, scancode, down);
  }

  input_sync(dev);
 } else
  printk(amikbd_messages[scancode - 0x78]);

 return IRQ_HANDLED;
}

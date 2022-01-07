
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opencores_kbd {int addr; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int input_report_key (struct input_dev*,unsigned char,int) ;
 int input_sync (struct input_dev*) ;
 unsigned char readb (int ) ;

__attribute__((used)) static irqreturn_t opencores_kbd_isr(int irq, void *dev_id)
{
 struct opencores_kbd *opencores_kbd = dev_id;
 struct input_dev *input = opencores_kbd->input;
 unsigned char c;

 c = readb(opencores_kbd->addr);
 input_report_key(input, c & 0x7f, c & 0x80 ? 0 : 1);
 input_sync(input);

 return IRQ_HANDLED;
}

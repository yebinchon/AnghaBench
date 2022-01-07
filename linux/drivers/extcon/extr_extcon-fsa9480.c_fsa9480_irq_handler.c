
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsa9480_usbsw {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int fsa9480_detect_dev (struct fsa9480_usbsw*) ;
 int fsa9480_read_irq (struct fsa9480_usbsw*,int*) ;

__attribute__((used)) static irqreturn_t fsa9480_irq_handler(int irq, void *data)
{
 struct fsa9480_usbsw *usbsw = data;
 int intr = 0;


 fsa9480_read_irq(usbsw, &intr);
 if (!intr)
  return IRQ_NONE;


 fsa9480_detect_dev(usbsw);

 return IRQ_HANDLED;
}

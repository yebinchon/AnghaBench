
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct apbps2_priv {int io; TYPE_1__* regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int status; int data; } ;


 unsigned long APBPS2_STATUS_DR ;
 unsigned long APBPS2_STATUS_FE ;
 unsigned long APBPS2_STATUS_PE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long SERIO_FRAME ;
 unsigned long SERIO_PARITY ;
 unsigned long ioread32be (int *) ;
 int iowrite32be (int ,int *) ;
 int serio_interrupt (int ,unsigned long,unsigned long) ;

__attribute__((used)) static irqreturn_t apbps2_isr(int irq, void *dev_id)
{
 struct apbps2_priv *priv = dev_id;
 unsigned long status, data, rxflags;
 irqreturn_t ret = IRQ_NONE;

 while ((status = ioread32be(&priv->regs->status)) & APBPS2_STATUS_DR) {
  data = ioread32be(&priv->regs->data);
  rxflags = (status & APBPS2_STATUS_PE) ? SERIO_PARITY : 0;
  rxflags |= (status & APBPS2_STATUS_FE) ? SERIO_FRAME : 0;


  if (rxflags)
   iowrite32be(0, &priv->regs->status);

  serio_interrupt(priv->io, data, rxflags);

  ret = IRQ_HANDLED;
 }

 return ret;
}

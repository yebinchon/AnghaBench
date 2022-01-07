
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct saa7146_dev {scalar_t__ i2c_op; int name; int i2c_wq; int (* vv_callback ) (struct saa7146_dev*,int) ;scalar_t__ vv_data; TYPE_1__* ext; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int irq_mask; int (* irq_func ) (struct saa7146_dev*,int*) ;} ;


 int DEB_INT (char*,int) ;
 int ERR (char*,...) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR ;
 int MASK_16 ;
 int MASK_17 ;
 int MASK_27 ;
 int MASK_28 ;
 int PSR ;
 int SAA7146_IER_DISABLE (struct saa7146_dev*,int) ;
 int SSR ;
 int pr_warn (char*,int ,int,int,int) ;
 int saa7146_read (struct saa7146_dev*,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int stub1 (struct saa7146_dev*,int*) ;
 int stub2 (struct saa7146_dev*,int) ;
 int stub3 (struct saa7146_dev*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t interrupt_hw(int irq, void *dev_id)
{
 struct saa7146_dev *dev = dev_id;
 u32 isr;
 u32 ack_isr;


 ack_isr = isr = saa7146_read(dev, ISR);


 if ( 0 == isr ) {

  return IRQ_NONE;
 }

 if (dev->ext) {
  if (dev->ext->irq_mask & isr) {
   if (dev->ext->irq_func)
    dev->ext->irq_func(dev, &isr);
   isr &= ~dev->ext->irq_mask;
  }
 }
 if (0 != (isr & (MASK_27))) {
  DEB_INT("irq: RPS0 (0x%08x)\n", isr);
  if (dev->vv_data && dev->vv_callback)
   dev->vv_callback(dev,isr);
  isr &= ~MASK_27;
 }
 if (0 != (isr & (MASK_28))) {
  if (dev->vv_data && dev->vv_callback)
   dev->vv_callback(dev,isr);
  isr &= ~MASK_28;
 }
 if (0 != (isr & (MASK_16|MASK_17))) {
  SAA7146_IER_DISABLE(dev, MASK_16|MASK_17);

  if (0 != dev->i2c_op) {
   dev->i2c_op = 0;
   wake_up(&dev->i2c_wq);
  } else {
   u32 psr = saa7146_read(dev, PSR);
   u32 ssr = saa7146_read(dev, SSR);
   pr_warn("%s: unexpected i2c irq: isr %08x psr %08x ssr %08x\n",
    dev->name, isr, psr, ssr);
  }
  isr &= ~(MASK_16|MASK_17);
 }
 if( 0 != isr ) {
  ERR("warning: interrupt enabled, but not handled properly.(0x%08x)\n",
      isr);
  ERR("disabling interrupt source(s)!\n");
  SAA7146_IER_DISABLE(dev,isr);
 }
 saa7146_write(dev, ISR, ack_isr);
 return IRQ_HANDLED;
}

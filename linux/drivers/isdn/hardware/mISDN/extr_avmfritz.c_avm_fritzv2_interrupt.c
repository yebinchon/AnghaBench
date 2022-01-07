
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fritzcard {int ctrlreg; int lock; scalar_t__ addr; int name; int isac; int irqcnt; } ;
typedef int irqreturn_t ;


 int AVM_STATUS0_IRQ_HDLC ;
 int AVM_STATUS0_IRQ_ISAC ;
 int AVM_STATUS0_IRQ_MASK ;
 int AVM_STATUS0_IRQ_TIMER ;
 int AVM_STATUS0_RES_TIMER ;
 int HDLC_irq_main (struct fritzcard*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISACX_ISTA ;
 int ReadISAC_V2 (struct fritzcard*,int ) ;
 int inb (scalar_t__) ;
 int mISDNisac_irq (int *,int) ;
 int outb (int,scalar_t__) ;
 int pr_debug (char*,int ,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t
avm_fritzv2_interrupt(int intno, void *dev_id)
{
 struct fritzcard *fc = dev_id;
 u8 val;
 u8 sval;

 spin_lock(&fc->lock);
 sval = inb(fc->addr + 2);
 pr_debug("%s: irq stat0 %x\n", fc->name, sval);
 if (!(sval & AVM_STATUS0_IRQ_MASK)) {

  spin_unlock(&fc->lock);
  return IRQ_NONE;
 }
 fc->irqcnt++;

 if (sval & AVM_STATUS0_IRQ_HDLC)
  HDLC_irq_main(fc);
 if (sval & AVM_STATUS0_IRQ_ISAC) {
  val = ReadISAC_V2(fc, ISACX_ISTA);
  mISDNisac_irq(&fc->isac, val);
 }
 if (sval & AVM_STATUS0_IRQ_TIMER) {
  pr_debug("%s: timer irq\n", fc->name);
  outb(fc->ctrlreg | AVM_STATUS0_RES_TIMER, fc->addr + 2);
  udelay(1);
  outb(fc->ctrlreg, fc->addr + 2);
 }
 spin_unlock(&fc->lock);
 return IRQ_HANDLED;
}

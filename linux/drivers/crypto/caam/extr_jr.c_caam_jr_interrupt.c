
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct caam_drv_private_jr {int irqtask; TYPE_1__* rregs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int jrintstatus; int rconfig_lo; } ;


 int BUG () ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int JRCFG_IMSK ;
 int JRINT_JR_ERROR ;
 int clrsetbits_32 (int *,int ,int ) ;
 int dev_err (struct device*,char*,int) ;
 struct caam_drv_private_jr* dev_get_drvdata (struct device*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int rd_reg32 (int *) ;
 int tasklet_schedule (int *) ;
 int wr_reg32 (int *,int) ;

__attribute__((used)) static irqreturn_t caam_jr_interrupt(int irq, void *st_dev)
{
 struct device *dev = st_dev;
 struct caam_drv_private_jr *jrp = dev_get_drvdata(dev);
 u32 irqstate;





 irqstate = rd_reg32(&jrp->rregs->jrintstatus);
 if (!irqstate)
  return IRQ_NONE;






 if (irqstate & JRINT_JR_ERROR) {
  dev_err(dev, "job ring error: irqstate: %08x\n", irqstate);
  BUG();
 }


 clrsetbits_32(&jrp->rregs->rconfig_lo, 0, JRCFG_IMSK);


 wr_reg32(&jrp->rregs->jrintstatus, irqstate);

 preempt_disable();
 tasklet_schedule(&jrp->irqtask);
 preempt_enable();

 return IRQ_HANDLED;
}

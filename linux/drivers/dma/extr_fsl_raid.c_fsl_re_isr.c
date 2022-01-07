
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fsl_re_chan {int irqtask; TYPE_1__* jrregs; int dev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int jr_interrupt_status; int jr_status; } ;


 int FSL_RE_CLR_INTR ;
 int FSL_RE_ERROR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_err (int ,char*,int,int) ;
 struct fsl_re_chan* dev_get_drvdata (struct device*) ;
 int in_be32 (int *) ;
 int out_be32 (int *,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t fsl_re_isr(int irq, void *data)
{
 struct fsl_re_chan *re_chan;
 u32 irqstate, status;

 re_chan = dev_get_drvdata((struct device *)data);

 irqstate = in_be32(&re_chan->jrregs->jr_interrupt_status);
 if (!irqstate)
  return IRQ_NONE;






 if (irqstate & FSL_RE_ERROR) {
  status = in_be32(&re_chan->jrregs->jr_status);
  dev_err(re_chan->dev, "chan error irqstate: %x, status: %x\n",
   irqstate, status);
 }


 out_be32(&re_chan->jrregs->jr_interrupt_status, FSL_RE_CLR_INTR);

 tasklet_schedule(&re_chan->irqtask);

 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psp_device {int sev_int_rcvd; TYPE_1__* vdata; scalar_t__ io_regs; int sev_int_queue; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ intsts_reg; scalar_t__ cmdresp_reg; } ;


 int IRQ_HANDLED ;
 int PSP_CMDRESP_RESP ;
 unsigned int PSP_CMD_COMPLETE ;
 void* ioread32 (scalar_t__) ;
 int iowrite32 (unsigned int,scalar_t__) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t psp_irq_handler(int irq, void *data)
{
 struct psp_device *psp = data;
 unsigned int status;
 int reg;


 status = ioread32(psp->io_regs + psp->vdata->intsts_reg);


 if (!(status & PSP_CMD_COMPLETE))
  goto done;


 reg = ioread32(psp->io_regs + psp->vdata->cmdresp_reg);
 if (reg & PSP_CMDRESP_RESP) {
  psp->sev_int_rcvd = 1;
  wake_up(&psp->sev_int_queue);
 }

done:

 iowrite32(status, psp->io_regs + psp->vdata->intsts_reg);

 return IRQ_HANDLED;
}

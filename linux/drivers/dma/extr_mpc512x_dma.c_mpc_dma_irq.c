
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct TYPE_3__ {int chancnt; } ;
struct mpc_dma {int error_status; int tasklet; TYPE_2__* regs; TYPE_1__ dma; int error_status_lock; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int dmaerrl; int dmaintl; int dmaerrh; int dmainth; int dmaes; } ;


 int IRQ_HANDLED ;
 int MPC_DMA_DMAES_VLD ;
 int in_be32 (int *) ;
 int mpc_dma_irq_process (struct mpc_dma*,int,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t mpc_dma_irq(int irq, void *data)
{
 struct mpc_dma *mdma = data;
 uint es;


 es = in_be32(&mdma->regs->dmaes);
 spin_lock(&mdma->error_status_lock);
 if ((es & MPC_DMA_DMAES_VLD) && mdma->error_status == 0)
  mdma->error_status = es;
 spin_unlock(&mdma->error_status_lock);


 if (mdma->dma.chancnt > 32) {
  mpc_dma_irq_process(mdma, in_be32(&mdma->regs->dmainth),
     in_be32(&mdma->regs->dmaerrh), 32);
 }
 mpc_dma_irq_process(mdma, in_be32(&mdma->regs->dmaintl),
     in_be32(&mdma->regs->dmaerrl), 0);


 tasklet_schedule(&mdma->tasklet);

 return IRQ_HANDLED;
}

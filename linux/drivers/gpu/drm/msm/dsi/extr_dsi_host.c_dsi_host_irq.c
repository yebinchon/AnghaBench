
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_dsi_host {int dma_comp; int video_comp; int id; int intr_lock; int ctrl_base; } ;
typedef int irqreturn_t ;


 int DBG (char*,int,int ) ;
 int DSI_IRQ_CMD_DMA_DONE ;
 int DSI_IRQ_ERROR ;
 int DSI_IRQ_VIDEO_DONE ;
 int IRQ_HANDLED ;
 int REG_DSI_INTR_CTRL ;
 int complete (int *) ;
 int dsi_error (struct msm_dsi_host*) ;
 int dsi_read (struct msm_dsi_host*,int ) ;
 int dsi_write (struct msm_dsi_host*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t dsi_host_irq(int irq, void *ptr)
{
 struct msm_dsi_host *msm_host = ptr;
 u32 isr;
 unsigned long flags;

 if (!msm_host->ctrl_base)
  return IRQ_HANDLED;

 spin_lock_irqsave(&msm_host->intr_lock, flags);
 isr = dsi_read(msm_host, REG_DSI_INTR_CTRL);
 dsi_write(msm_host, REG_DSI_INTR_CTRL, isr);
 spin_unlock_irqrestore(&msm_host->intr_lock, flags);

 DBG("isr=0x%x, id=%d", isr, msm_host->id);

 if (isr & DSI_IRQ_ERROR)
  dsi_error(msm_host);

 if (isr & DSI_IRQ_VIDEO_DONE)
  complete(&msm_host->video_comp);

 if (isr & DSI_IRQ_CMD_DMA_DONE)
  complete(&msm_host->dma_comp);

 return IRQ_HANDLED;
}

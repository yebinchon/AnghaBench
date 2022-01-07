
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int crtc; } ;
struct pl111_drm_dev_private {scalar_t__ regs; TYPE_1__ pipe; } ;
typedef int irqreturn_t ;


 int CLCD_IRQ_NEXTBASE_UPDATE ;
 scalar_t__ CLCD_PL111_ICR ;
 scalar_t__ CLCD_PL111_MIS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int drm_crtc_handle_vblank (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

irqreturn_t pl111_irq(int irq, void *data)
{
 struct pl111_drm_dev_private *priv = data;
 u32 irq_stat;
 irqreturn_t status = IRQ_NONE;

 irq_stat = readl(priv->regs + CLCD_PL111_MIS);

 if (!irq_stat)
  return IRQ_NONE;

 if (irq_stat & CLCD_IRQ_NEXTBASE_UPDATE) {
  drm_crtc_handle_vblank(&priv->pipe.crtc);

  status = IRQ_HANDLED;
 }


 writel(irq_stat, priv->regs + CLCD_PL111_ICR);

 return status;
}

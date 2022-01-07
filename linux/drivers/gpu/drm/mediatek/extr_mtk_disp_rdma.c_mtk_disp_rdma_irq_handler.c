
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ddp_comp {scalar_t__ regs; } ;
struct mtk_disp_rdma {int crtc; struct mtk_ddp_comp ddp_comp; } ;
typedef int irqreturn_t ;


 scalar_t__ DISP_REG_RDMA_INT_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int mtk_crtc_ddp_irq (int ,struct mtk_ddp_comp*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mtk_disp_rdma_irq_handler(int irq, void *dev_id)
{
 struct mtk_disp_rdma *priv = dev_id;
 struct mtk_ddp_comp *rdma = &priv->ddp_comp;


 writel(0x0, rdma->regs + DISP_REG_RDMA_INT_STATUS);

 if (!priv->crtc)
  return IRQ_NONE;

 mtk_crtc_ddp_irq(priv->crtc, rdma);

 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hidma_lldev {int msi_support; scalar_t__ evca; } ;


 int ENABLE_IRQS ;
 scalar_t__ HIDMA_EVCA_INTCTRL_REG ;
 scalar_t__ HIDMA_EVCA_IRQ_CLR_REG ;
 scalar_t__ HIDMA_EVCA_IRQ_EN_REG ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void hidma_ll_setup_irq(struct hidma_lldev *lldev, bool msi)
{
 u32 val;

 lldev->msi_support = msi;


 writel(0, lldev->evca + HIDMA_EVCA_IRQ_CLR_REG);
 writel(0, lldev->evca + HIDMA_EVCA_IRQ_EN_REG);


 val = readl(lldev->evca + HIDMA_EVCA_INTCTRL_REG);
 val &= ~0xF;
 if (!lldev->msi_support)
  val = val | 0x1;
 writel(val, lldev->evca + HIDMA_EVCA_INTCTRL_REG);


 writel(ENABLE_IRQS, lldev->evca + HIDMA_EVCA_IRQ_CLR_REG);
 writel(ENABLE_IRQS, lldev->evca + HIDMA_EVCA_IRQ_EN_REG);
}

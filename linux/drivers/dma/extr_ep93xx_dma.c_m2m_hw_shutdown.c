
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_dma_chan {scalar_t__ regs; } ;


 scalar_t__ M2M_CONTROL ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void m2m_hw_shutdown(struct ep93xx_dma_chan *edmac)
{

 writel(0, edmac->regs + M2M_CONTROL);
}

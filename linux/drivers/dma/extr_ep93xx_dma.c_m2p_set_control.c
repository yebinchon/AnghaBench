
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ep93xx_dma_chan {scalar_t__ regs; } ;


 scalar_t__ M2P_CONTROL ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void m2p_set_control(struct ep93xx_dma_chan *edmac, u32 control)
{
 writel(control, edmac->regs + M2P_CONTROL);




 readl(edmac->regs + M2P_CONTROL);
}

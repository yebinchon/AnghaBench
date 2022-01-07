
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ep93xx_dma_chan {scalar_t__ regs; } ;


 scalar_t__ M2P_CONTROL ;
 int M2P_CONTROL_NFBINT ;
 int M2P_CONTROL_STALLINT ;
 scalar_t__ ep93xx_dma_advance_active (struct ep93xx_dma_chan*) ;
 int m2p_fill_desc (struct ep93xx_dma_chan*) ;
 int m2p_set_control (struct ep93xx_dma_chan*,int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void m2p_hw_submit(struct ep93xx_dma_chan *edmac)
{
 u32 control = readl(edmac->regs + M2P_CONTROL);

 m2p_fill_desc(edmac);
 control |= M2P_CONTROL_STALLINT;

 if (ep93xx_dma_advance_active(edmac)) {
  m2p_fill_desc(edmac);
  control |= M2P_CONTROL_NFBINT;
 }

 m2p_set_control(edmac, control);
}

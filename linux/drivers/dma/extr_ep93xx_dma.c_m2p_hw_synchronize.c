
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ep93xx_dma_chan {int lock; scalar_t__ regs; } ;


 scalar_t__ M2P_CONTROL ;
 int M2P_CONTROL_NFBINT ;
 int M2P_CONTROL_STALLINT ;
 scalar_t__ M2P_STATE_ON ;
 scalar_t__ m2p_channel_state (struct ep93xx_dma_chan*) ;
 int m2p_set_control (struct ep93xx_dma_chan*,int) ;
 int readl (scalar_t__) ;
 int schedule () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void m2p_hw_synchronize(struct ep93xx_dma_chan *edmac)
{
 unsigned long flags;
 u32 control;

 spin_lock_irqsave(&edmac->lock, flags);
 control = readl(edmac->regs + M2P_CONTROL);
 control &= ~(M2P_CONTROL_STALLINT | M2P_CONTROL_NFBINT);
 m2p_set_control(edmac, control);
 spin_unlock_irqrestore(&edmac->lock, flags);

 while (m2p_channel_state(edmac) >= M2P_STATE_ON)
  schedule();
}

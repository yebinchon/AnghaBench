
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ep93xx_dma_chan {scalar_t__ regs; } ;


 scalar_t__ M2P_STATUS ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 m2p_channel_state(struct ep93xx_dma_chan *edmac)
{
 return (readl(edmac->regs + M2P_STATUS) >> 4) & 0x3;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_dma_chan {int dummy; } ;


 scalar_t__ M2P_STATE_IDLE ;
 int chan2dev (struct ep93xx_dma_chan*) ;
 int dev_warn (int ,char*) ;
 scalar_t__ m2p_channel_state (struct ep93xx_dma_chan*) ;
 int m2p_set_control (struct ep93xx_dma_chan*,int ) ;

__attribute__((used)) static void m2p_hw_shutdown(struct ep93xx_dma_chan *edmac)
{
 m2p_set_control(edmac, 0);

 while (m2p_channel_state(edmac) != M2P_STATE_IDLE)
  dev_warn(chan2dev(edmac), "M2P: Not yet IDLE\n");
}

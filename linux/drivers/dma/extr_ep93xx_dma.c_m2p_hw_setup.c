
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ep93xx_dma_data {int port; } ;
struct TYPE_2__ {struct ep93xx_dma_data* private; } ;
struct ep93xx_dma_chan {scalar_t__ buffer; scalar_t__ regs; TYPE_1__ chan; } ;


 int M2P_CONTROL_CH_ERROR_INT ;
 int M2P_CONTROL_ENABLE ;
 int M2P_CONTROL_ICE ;
 scalar_t__ M2P_PPALLOC ;
 int m2p_set_control (struct ep93xx_dma_chan*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int m2p_hw_setup(struct ep93xx_dma_chan *edmac)
{
 struct ep93xx_dma_data *data = edmac->chan.private;
 u32 control;

 writel(data->port & 0xf, edmac->regs + M2P_PPALLOC);

 control = M2P_CONTROL_CH_ERROR_INT | M2P_CONTROL_ICE
  | M2P_CONTROL_ENABLE;
 m2p_set_control(edmac, control);

 edmac->buffer = 0;

 return 0;
}

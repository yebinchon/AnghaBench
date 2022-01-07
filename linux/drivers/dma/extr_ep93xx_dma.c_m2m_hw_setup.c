
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ep93xx_dma_data {int port; int direction; } ;
struct TYPE_2__ {struct ep93xx_dma_data* private; } ;
struct ep93xx_dma_chan {scalar_t__ regs; TYPE_1__ chan; } ;


 int DMA_MEM_TO_DEV ;
 int EINVAL ;


 scalar_t__ M2M_CONTROL ;
 int M2M_CONTROL_DAH ;
 int M2M_CONTROL_NO_HDSK ;
 int M2M_CONTROL_PWSC_SHIFT ;
 int M2M_CONTROL_PW_16 ;
 int M2M_CONTROL_RSS_IDE ;
 int M2M_CONTROL_RSS_SSPRX ;
 int M2M_CONTROL_RSS_SSPTX ;
 int M2M_CONTROL_SAH ;
 int M2M_CONTROL_TM_RX ;
 int M2M_CONTROL_TM_TX ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int m2m_hw_setup(struct ep93xx_dma_chan *edmac)
{
 const struct ep93xx_dma_data *data = edmac->chan.private;
 u32 control = 0;

 if (!data) {

  writel(control, edmac->regs + M2M_CONTROL);
  return 0;
 }

 switch (data->port) {
 case 128:





  control = (5 << M2M_CONTROL_PWSC_SHIFT);
  control |= M2M_CONTROL_NO_HDSK;

  if (data->direction == DMA_MEM_TO_DEV) {
   control |= M2M_CONTROL_DAH;
   control |= M2M_CONTROL_TM_TX;
   control |= M2M_CONTROL_RSS_SSPTX;
  } else {
   control |= M2M_CONTROL_SAH;
   control |= M2M_CONTROL_TM_RX;
   control |= M2M_CONTROL_RSS_SSPRX;
  }
  break;

 case 129:




  if (data->direction == DMA_MEM_TO_DEV) {

   control = (3 << M2M_CONTROL_PWSC_SHIFT);
   control |= M2M_CONTROL_DAH;
   control |= M2M_CONTROL_TM_TX;
  } else {
   control = (2 << M2M_CONTROL_PWSC_SHIFT);
   control |= M2M_CONTROL_SAH;
   control |= M2M_CONTROL_TM_RX;
  }

  control |= M2M_CONTROL_NO_HDSK;
  control |= M2M_CONTROL_RSS_IDE;
  control |= M2M_CONTROL_PW_16;
  break;

 default:
  return -EINVAL;
 }

 writel(control, edmac->regs + M2M_CONTROL);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ cookie; } ;
struct ep93xx_dma_desc {TYPE_1__ txd; } ;
struct TYPE_4__ {int private; } ;
struct ep93xx_dma_chan {scalar_t__ regs; TYPE_2__ chan; } ;


 int INTERRUPT_DONE ;
 int INTERRUPT_NEXT_BUFFER ;
 int INTERRUPT_UNKNOWN ;
 scalar_t__ M2M_CONTROL ;
 scalar_t__ M2M_CONTROL_DONEINT ;
 scalar_t__ M2M_CONTROL_ENABLE ;
 scalar_t__ M2M_CONTROL_NFBINT ;
 scalar_t__ M2M_CONTROL_START ;
 scalar_t__ M2M_INTERRUPT ;
 scalar_t__ M2M_INTERRUPT_MASK ;
 scalar_t__ M2M_STATUS ;
 scalar_t__ M2M_STATUS_BUF_MASK ;
 scalar_t__ M2M_STATUS_BUF_NO ;
 scalar_t__ M2M_STATUS_BUF_ON ;
 scalar_t__ M2M_STATUS_CTL_MASK ;
 scalar_t__ M2M_STATUS_CTL_STALL ;
 scalar_t__ M2M_STATUS_DONE ;
 scalar_t__ ep93xx_dma_advance_active (struct ep93xx_dma_chan*) ;
 struct ep93xx_dma_desc* ep93xx_dma_get_active (struct ep93xx_dma_chan*) ;
 int m2m_fill_desc (struct ep93xx_dma_chan*) ;
 scalar_t__ readl (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static int m2m_hw_interrupt(struct ep93xx_dma_chan *edmac)
{
 u32 status = readl(edmac->regs + M2M_STATUS);
 u32 ctl_fsm = status & M2M_STATUS_CTL_MASK;
 u32 buf_fsm = status & M2M_STATUS_BUF_MASK;
 bool done = status & M2M_STATUS_DONE;
 bool last_done;
 u32 control;
 struct ep93xx_dma_desc *desc;


 if (!(readl(edmac->regs + M2M_INTERRUPT) & M2M_INTERRUPT_MASK))
  return INTERRUPT_UNKNOWN;

 if (done) {

  writel(0, edmac->regs + M2M_INTERRUPT);
 }





 desc = ep93xx_dma_get_active(edmac);
 last_done = !desc || desc->txd.cookie;






 if (!last_done &&
     (buf_fsm == M2M_STATUS_BUF_NO ||
      buf_fsm == M2M_STATUS_BUF_ON)) {






  if (ep93xx_dma_advance_active(edmac)) {
   m2m_fill_desc(edmac);
   if (done && !edmac->chan.private) {

    control = readl(edmac->regs + M2M_CONTROL);
    control |= M2M_CONTROL_START;
    writel(control, edmac->regs + M2M_CONTROL);
   }
   return INTERRUPT_NEXT_BUFFER;
  } else {
   last_done = 1;
  }
 }





 if (last_done &&
     buf_fsm == M2M_STATUS_BUF_NO &&
     ctl_fsm == M2M_STATUS_CTL_STALL) {

  control = readl(edmac->regs + M2M_CONTROL);
  control &= ~(M2M_CONTROL_DONEINT | M2M_CONTROL_NFBINT
       | M2M_CONTROL_ENABLE);
  writel(control, edmac->regs + M2M_CONTROL);
  return INTERRUPT_DONE;
 }




 return INTERRUPT_NEXT_BUFFER;
}

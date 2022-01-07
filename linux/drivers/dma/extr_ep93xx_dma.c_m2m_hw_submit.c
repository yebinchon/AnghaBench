
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ep93xx_dma_data {int dummy; } ;
struct TYPE_2__ {struct ep93xx_dma_data* private; } ;
struct ep93xx_dma_chan {scalar_t__ regs; int runtime_ctrl; TYPE_1__ chan; } ;


 scalar_t__ M2M_CONTROL ;
 int M2M_CONTROL_DONEINT ;
 int M2M_CONTROL_ENABLE ;
 int M2M_CONTROL_NFBINT ;
 int M2M_CONTROL_PW_MASK ;
 int M2M_CONTROL_START ;
 scalar_t__ ep93xx_dma_advance_active (struct ep93xx_dma_chan*) ;
 int m2m_fill_desc (struct ep93xx_dma_chan*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void m2m_hw_submit(struct ep93xx_dma_chan *edmac)
{
 struct ep93xx_dma_data *data = edmac->chan.private;
 u32 control = readl(edmac->regs + M2M_CONTROL);






 control &= ~M2M_CONTROL_PW_MASK;
 control |= edmac->runtime_ctrl;

 m2m_fill_desc(edmac);
 control |= M2M_CONTROL_DONEINT;

 if (ep93xx_dma_advance_active(edmac)) {
  m2m_fill_desc(edmac);
  control |= M2M_CONTROL_NFBINT;
 }





 control |= M2M_CONTROL_ENABLE;
 writel(control, edmac->regs + M2M_CONTROL);

 if (!data) {




  control |= M2M_CONTROL_START;
  writel(control, edmac->regs + M2M_CONTROL);
 }
}

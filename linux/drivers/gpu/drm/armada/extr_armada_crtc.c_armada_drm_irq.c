
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct armada_crtc {int irq_ena; int crtc; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int DUMB_FRAMEDONE ;
 int GRA_FRAME_IRQ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ LCD_SPU_IRQ_ISR ;
 int VSYNC_IRQ ;
 int armada_drm_crtc_irq (struct armada_crtc*,int) ;
 int readl_relaxed (scalar_t__) ;
 int trace_armada_drm_irq (int *,int) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t armada_drm_irq(int irq, void *arg)
{
 struct armada_crtc *dcrtc = arg;
 u32 v, stat = readl_relaxed(dcrtc->base + LCD_SPU_IRQ_ISR);






 writel_relaxed(0, dcrtc->base + LCD_SPU_IRQ_ISR);

 trace_armada_drm_irq(&dcrtc->crtc, stat);


 v = stat & dcrtc->irq_ena;

 if (v & (VSYNC_IRQ|GRA_FRAME_IRQ|DUMB_FRAMEDONE)) {
  armada_drm_crtc_irq(dcrtc, stat);
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}

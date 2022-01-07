
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vc4_crtc {int dummy; } ;
typedef int irqreturn_t ;


 int CRTC_READ (int ) ;
 int CRTC_WRITE (int ,int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PV_INTSTAT ;
 int PV_INT_VFP_START ;
 int vc4_crtc_handle_vblank (struct vc4_crtc*) ;

__attribute__((used)) static irqreturn_t vc4_crtc_irq_handler(int irq, void *data)
{
 struct vc4_crtc *vc4_crtc = data;
 u32 stat = CRTC_READ(PV_INTSTAT);
 irqreturn_t ret = IRQ_NONE;

 if (stat & PV_INT_VFP_START) {
  CRTC_WRITE(PV_INTSTAT, PV_INT_VFP_START);
  vc4_crtc_handle_vblank(vc4_crtc);
  ret = IRQ_HANDLED;
 }

 return ret;
}

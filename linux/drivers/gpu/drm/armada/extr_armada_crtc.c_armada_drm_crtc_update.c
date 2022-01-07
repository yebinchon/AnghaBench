
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct armada_crtc {int cfg_dumb_ctrl; scalar_t__ base; } ;


 int CFG_DUMB_ENA ;
 int CFG_INV_CSYNC ;
 int CFG_INV_HSYNC ;
 int CFG_INV_VSYNC ;
 int DUMB24_RGB888_0 ;
 int DUMB_BLANK ;
 int DUMB_MASK ;
 scalar_t__ LCD_SPU_DUMB_CTRL ;
 int armada_updatel (int,int,scalar_t__) ;

__attribute__((used)) static void armada_drm_crtc_update(struct armada_crtc *dcrtc, bool enable)
{
 uint32_t dumb_ctrl;

 dumb_ctrl = dcrtc->cfg_dumb_ctrl;

 if (enable)
  dumb_ctrl |= CFG_DUMB_ENA;







 if (!enable && (dumb_ctrl & DUMB_MASK) == DUMB24_RGB888_0) {
  dumb_ctrl &= ~DUMB_MASK;
  dumb_ctrl |= DUMB_BLANK;
 }

 armada_updatel(dumb_ctrl,
         ~(CFG_INV_CSYNC | CFG_INV_HSYNC | CFG_INV_VSYNC),
         dcrtc->base + LCD_SPU_DUMB_CTRL);
}

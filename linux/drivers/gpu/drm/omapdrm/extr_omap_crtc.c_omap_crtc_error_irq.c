
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_crtc {int name; scalar_t__ ignore_digit_sync_lost; } ;
struct drm_crtc {int dummy; } ;


 int DISPC_IRQ_SYNC_LOST_DIGIT ;
 int DRM_ERROR_RATELIMITED (char*,int ,int ) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;

void omap_crtc_error_irq(struct drm_crtc *crtc, u32 irqstatus)
{
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);

 if (omap_crtc->ignore_digit_sync_lost) {
  irqstatus &= ~DISPC_IRQ_SYNC_LOST_DIGIT;
  if (!irqstatus)
   return;
 }

 DRM_ERROR_RATELIMITED("%s: errors: %08x\n", omap_crtc->name, irqstatus);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltdc_device {int regs; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int BCCR_BCBLACK ;
 int DRM_DEBUG_DRIVER (char*) ;
 int GCR_LTDCEN ;
 int IER_FUIE ;
 int IER_RRIE ;
 int IER_TERRIE ;
 int LTDC_BCCR ;
 int LTDC_GCR ;
 int LTDC_IER ;
 int LTDC_SRCR ;
 int SRCR_VBR ;
 struct ltdc_device* crtc_to_ltdc (struct drm_crtc*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int reg_set (int ,int ,int) ;
 int reg_write (int ,int ,int ) ;

__attribute__((used)) static void ltdc_crtc_atomic_enable(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 struct ltdc_device *ldev = crtc_to_ltdc(crtc);

 DRM_DEBUG_DRIVER("\n");


 reg_write(ldev->regs, LTDC_BCCR, BCCR_BCBLACK);


 reg_set(ldev->regs, LTDC_IER, IER_RRIE | IER_FUIE | IER_TERRIE);


 reg_set(ldev->regs, LTDC_SRCR, SRCR_VBR);


 reg_set(ldev->regs, LTDC_GCR, GCR_LTDCEN);

 drm_crtc_vblank_on(crtc);
}

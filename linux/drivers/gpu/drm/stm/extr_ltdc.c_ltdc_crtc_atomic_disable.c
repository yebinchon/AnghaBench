
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltdc_device {int regs; } ;
struct drm_device {int dev; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int GCR_LTDCEN ;
 int IER_FUIE ;
 int IER_RRIE ;
 int IER_TERRIE ;
 int LTDC_GCR ;
 int LTDC_IER ;
 int LTDC_SRCR ;
 int SRCR_IMR ;
 struct ltdc_device* crtc_to_ltdc (struct drm_crtc*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int pm_runtime_put_sync (int ) ;
 int reg_clear (int ,int ,int) ;
 int reg_set (int ,int ,int ) ;

__attribute__((used)) static void ltdc_crtc_atomic_disable(struct drm_crtc *crtc,
         struct drm_crtc_state *old_state)
{
 struct ltdc_device *ldev = crtc_to_ltdc(crtc);
 struct drm_device *ddev = crtc->dev;

 DRM_DEBUG_DRIVER("\n");

 drm_crtc_vblank_off(crtc);


 reg_clear(ldev->regs, LTDC_GCR, GCR_LTDCEN);


 reg_clear(ldev->regs, LTDC_IER, IER_RRIE | IER_FUIE | IER_TERRIE);


 reg_set(ldev->regs, LTDC_SRCR, SRCR_IMR);

 pm_runtime_put_sync(ddev->dev);
}

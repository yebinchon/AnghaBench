
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct malidp_hw_device {int pxlclk; TYPE_1__* hw; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* dev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* enter_config_mode ) (struct malidp_hw_device*) ;} ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int clk_disable_unprepare (int ) ;
 struct malidp_drm* crtc_to_malidp_device (struct drm_crtc*) ;
 int drm_atomic_helper_disable_planes_on_crtc (struct drm_crtc_state*,int) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int pm_runtime_put (int ) ;
 int stub1 (struct malidp_hw_device*) ;

__attribute__((used)) static void malidp_crtc_atomic_disable(struct drm_crtc *crtc,
           struct drm_crtc_state *old_state)
{
 struct malidp_drm *malidp = crtc_to_malidp_device(crtc);
 struct malidp_hw_device *hwdev = malidp->dev;
 int err;


 drm_atomic_helper_disable_planes_on_crtc(old_state, 0);

 drm_crtc_vblank_off(crtc);
 hwdev->hw->enter_config_mode(hwdev);

 clk_disable_unprepare(hwdev->pxlclk);

 err = pm_runtime_put(crtc->dev->dev);
 if (err < 0) {
  DRM_DEBUG_DRIVER("Failed to disable runtime power management: %d\n", err);
 }
}

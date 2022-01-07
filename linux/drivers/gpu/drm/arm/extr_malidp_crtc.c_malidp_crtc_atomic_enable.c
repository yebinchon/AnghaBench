
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct videomode {int dummy; } ;
struct malidp_hw_device {TYPE_3__* hw; int pxlclk; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* state; TYPE_1__* dev; } ;
struct TYPE_8__ {int crtc_clock; } ;
struct TYPE_7__ {int (* leave_config_mode ) (struct malidp_hw_device*) ;int (* modeset ) (struct malidp_hw_device*,struct videomode*) ;} ;
struct TYPE_6__ {TYPE_4__ adjusted_mode; } ;
struct TYPE_5__ {int dev; } ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 struct malidp_drm* crtc_to_malidp_device (struct drm_crtc*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int drm_display_mode_to_videomode (TYPE_4__*,struct videomode*) ;
 int pm_runtime_get_sync (int ) ;
 int stub1 (struct malidp_hw_device*,struct videomode*) ;
 int stub2 (struct malidp_hw_device*) ;

__attribute__((used)) static void malidp_crtc_atomic_enable(struct drm_crtc *crtc,
          struct drm_crtc_state *old_state)
{
 struct malidp_drm *malidp = crtc_to_malidp_device(crtc);
 struct malidp_hw_device *hwdev = malidp->dev;
 struct videomode vm;
 int err = pm_runtime_get_sync(crtc->dev->dev);

 if (err < 0) {
  DRM_DEBUG_DRIVER("Failed to enable runtime power management: %d\n", err);
  return;
 }

 drm_display_mode_to_videomode(&crtc->state->adjusted_mode, &vm);
 clk_prepare_enable(hwdev->pxlclk);


 clk_set_rate(hwdev->pxlclk, crtc->state->adjusted_mode.crtc_clock * 1000);

 hwdev->hw->modeset(hwdev, &vm);
 hwdev->hw->leave_config_mode(hwdev);
 drm_crtc_vblank_on(crtc);
}

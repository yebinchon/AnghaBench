
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct malidp_hw_device {int dummy; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct malidp_crtc_state {int gamma_coeffs; } ;
struct drm_crtc_state {TYPE_4__* gamma_lut; } ;
struct drm_crtc {TYPE_5__* state; } ;
struct TYPE_10__ {TYPE_2__* gamma_lut; int color_mgmt_changed; } ;
struct TYPE_8__ {scalar_t__ id; } ;
struct TYPE_9__ {TYPE_3__ base; } ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_7__ {TYPE_1__ base; } ;


 int MALIDP_DE_DISPLAY_FUNC ;
 int MALIDP_DISP_FUNC_GAMMA ;
 struct malidp_drm* crtc_to_malidp_device (struct drm_crtc*) ;
 int malidp_hw_clearbits (struct malidp_hw_device*,int ,int ) ;
 int malidp_hw_setbits (struct malidp_hw_device*,int ,int ) ;
 int malidp_write_gamma_table (struct malidp_hw_device*,int ) ;
 struct malidp_crtc_state* to_malidp_crtc_state (TYPE_5__*) ;

__attribute__((used)) static void malidp_atomic_commit_update_gamma(struct drm_crtc *crtc,
           struct drm_crtc_state *old_state)
{
 struct malidp_drm *malidp = crtc_to_malidp_device(crtc);
 struct malidp_hw_device *hwdev = malidp->dev;

 if (!crtc->state->color_mgmt_changed)
  return;

 if (!crtc->state->gamma_lut) {
  malidp_hw_clearbits(hwdev,
        MALIDP_DISP_FUNC_GAMMA,
        MALIDP_DE_DISPLAY_FUNC);
 } else {
  struct malidp_crtc_state *mc =
   to_malidp_crtc_state(crtc->state);

  if (!old_state->gamma_lut || (crtc->state->gamma_lut->base.id !=
           old_state->gamma_lut->base.id))
   malidp_write_gamma_table(hwdev, mc->gamma_coeffs);

  malidp_hw_setbits(hwdev, MALIDP_DISP_FUNC_GAMMA,
      MALIDP_DE_DISPLAY_FUNC);
 }
}

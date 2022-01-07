
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct malidp_crtc_state {int gamma_coeffs; } ;
struct drm_crtc_state {int mode_changed; TYPE_5__* gamma_lut; int state; int color_mgmt_changed; } ;
struct drm_crtc {int dev; TYPE_3__* state; } ;
struct drm_color_lut {scalar_t__ red; scalar_t__ green; scalar_t__ blue; } ;
struct TYPE_9__ {scalar_t__ id; } ;
struct TYPE_10__ {int length; scalar_t__ data; TYPE_4__ base; } ;
struct TYPE_8__ {TYPE_2__* gamma_lut; } ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_7__ {TYPE_1__ base; } ;


 int EINVAL ;
 size_t MALIDP_GAMMA_LUT_SIZE ;
 int drm_atomic_helper_check_modeset (int ,int ) ;
 int malidp_generate_gamma_table (TYPE_5__*,int ) ;
 struct malidp_crtc_state* to_malidp_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static int malidp_crtc_atomic_check_gamma(struct drm_crtc *crtc,
       struct drm_crtc_state *state)
{
 struct malidp_crtc_state *mc = to_malidp_crtc_state(state);
 struct drm_color_lut *lut;
 size_t lut_size;
 int i;

 if (!state->color_mgmt_changed || !state->gamma_lut)
  return 0;

 if (crtc->state->gamma_lut &&
     (crtc->state->gamma_lut->base.id == state->gamma_lut->base.id))
  return 0;

 if (state->gamma_lut->length % sizeof(struct drm_color_lut))
  return -EINVAL;

 lut_size = state->gamma_lut->length / sizeof(struct drm_color_lut);
 if (lut_size != MALIDP_GAMMA_LUT_SIZE)
  return -EINVAL;

 lut = (struct drm_color_lut *)state->gamma_lut->data;
 for (i = 0; i < lut_size; ++i)
  if (!((lut[i].red == lut[i].green) &&
        (lut[i].red == lut[i].blue)))
   return -EINVAL;

 if (!state->mode_changed) {
  int ret;

  state->mode_changed = 1;






  ret = drm_atomic_helper_check_modeset(crtc->dev, state->state);
  if (ret)
   return ret;
 }

 malidp_generate_gamma_table(state->gamma_lut, mc->gamma_coeffs);
 return 0;
}

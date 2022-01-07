
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_crtc_state {int manually_updated; int rotation; int zpos; } ;
struct drm_plane_state {int rotation; int zpos; } ;
struct drm_crtc_state {int state; TYPE_1__* gamma_lut; scalar_t__ color_mgmt_changed; } ;
struct drm_crtc {int primary; } ;
struct drm_color_lut {int dummy; } ;
struct TYPE_2__ {int length; } ;


 int EINVAL ;
 struct drm_plane_state* drm_atomic_get_new_plane_state (int ,int ) ;
 int omap_crtc_is_manually_updated (struct drm_crtc*) ;
 struct omap_crtc_state* to_omap_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static int omap_crtc_atomic_check(struct drm_crtc *crtc,
    struct drm_crtc_state *state)
{
 struct drm_plane_state *pri_state;

 if (state->color_mgmt_changed && state->gamma_lut) {
  unsigned int length = state->gamma_lut->length /
   sizeof(struct drm_color_lut);

  if (length < 2)
   return -EINVAL;
 }

 pri_state = drm_atomic_get_new_plane_state(state->state, crtc->primary);
 if (pri_state) {
  struct omap_crtc_state *omap_crtc_state =
   to_omap_crtc_state(state);


  omap_crtc_state->zpos = pri_state->zpos;
  omap_crtc_state->rotation = pri_state->rotation;


  omap_crtc_state->manually_updated = omap_crtc_is_manually_updated(crtc);
 }

 return 0;
}

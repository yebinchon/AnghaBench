
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int mode_changed; int active_changed; int planes_changed; int connectors_changed; int color_mgmt_changed; int zpos_changed; int async_flip; int self_refresh_active; int active; int * event; int * commit; scalar_t__ gamma_lut; scalar_t__ ctm; scalar_t__ degamma_lut; scalar_t__ mode_blob; } ;
struct drm_crtc {int state; } ;


 int drm_atomic_crtc_effectively_active (struct drm_crtc_state*) ;
 int drm_property_blob_get (scalar_t__) ;
 int memcpy (struct drm_crtc_state*,int ,int) ;

void __drm_atomic_helper_crtc_duplicate_state(struct drm_crtc *crtc,
           struct drm_crtc_state *state)
{
 memcpy(state, crtc->state, sizeof(*state));

 if (state->mode_blob)
  drm_property_blob_get(state->mode_blob);
 if (state->degamma_lut)
  drm_property_blob_get(state->degamma_lut);
 if (state->ctm)
  drm_property_blob_get(state->ctm);
 if (state->gamma_lut)
  drm_property_blob_get(state->gamma_lut);
 state->mode_changed = 0;
 state->active_changed = 0;
 state->planes_changed = 0;
 state->connectors_changed = 0;
 state->color_mgmt_changed = 0;
 state->zpos_changed = 0;
 state->commit = ((void*)0);
 state->event = ((void*)0);
 state->async_flip = 0;


 state->active = drm_atomic_crtc_effectively_active(state);
 state->self_refresh_active = 0;
}

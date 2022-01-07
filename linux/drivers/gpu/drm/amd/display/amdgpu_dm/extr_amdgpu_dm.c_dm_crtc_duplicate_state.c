
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int state; } ;
struct dm_crtc_state {struct drm_crtc_state base; int cm_is_degamma_srgb; int cm_has_degamma; int crc_src; int freesync_config; int vrr_supported; int abm_level; int vrr_infopacket; int vrr_params; int interrupts_enabled; int active_planes; scalar_t__ stream; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 int dc_stream_retain (scalar_t__) ;
 struct dm_crtc_state* kzalloc (int,int ) ;
 struct dm_crtc_state* to_dm_crtc_state (int ) ;

__attribute__((used)) static struct drm_crtc_state *
dm_crtc_duplicate_state(struct drm_crtc *crtc)
{
 struct dm_crtc_state *state, *cur;

 cur = to_dm_crtc_state(crtc->state);

 if (WARN_ON(!crtc->state))
  return ((void*)0);

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return ((void*)0);

 __drm_atomic_helper_crtc_duplicate_state(crtc, &state->base);

 if (cur->stream) {
  state->stream = cur->stream;
  dc_stream_retain(state->stream);
 }

 state->active_planes = cur->active_planes;
 state->interrupts_enabled = cur->interrupts_enabled;
 state->vrr_params = cur->vrr_params;
 state->vrr_infopacket = cur->vrr_infopacket;
 state->abm_level = cur->abm_level;
 state->vrr_supported = cur->vrr_supported;
 state->freesync_config = cur->freesync_config;
 state->crc_src = cur->crc_src;
 state->cm_has_degamma = cur->cm_has_degamma;
 state->cm_is_degamma_srgb = cur->cm_is_degamma_srgb;



 return &state->base;
}

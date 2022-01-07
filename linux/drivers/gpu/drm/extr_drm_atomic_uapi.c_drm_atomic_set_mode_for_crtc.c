
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode ;
struct drm_mode_modeinfo {int dummy; } ;
struct drm_display_mode {int name; } ;
struct drm_crtc_state {int enable; int mode; int * mode_blob; struct drm_crtc* crtc; } ;
struct TYPE_2__ {int id; } ;
struct drm_crtc {int name; TYPE_1__ base; int dev; } ;


 int DRM_DEBUG_ATOMIC (char*,int ,int ,struct drm_crtc_state*,...) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int drm_mode_convert_to_umode (struct drm_mode_modeinfo*,struct drm_display_mode const*) ;
 int drm_mode_copy (int *,struct drm_display_mode const*) ;
 int drm_property_blob_put (int *) ;
 int * drm_property_create_blob (int ,int,struct drm_mode_modeinfo*) ;
 scalar_t__ memcmp (int *,struct drm_display_mode const*,int) ;
 int memset (int *,int ,int) ;

int drm_atomic_set_mode_for_crtc(struct drm_crtc_state *state,
     const struct drm_display_mode *mode)
{
 struct drm_crtc *crtc = state->crtc;
 struct drm_mode_modeinfo umode;


 if (mode && memcmp(&state->mode, mode, sizeof(*mode)) == 0)
  return 0;

 drm_property_blob_put(state->mode_blob);
 state->mode_blob = ((void*)0);

 if (mode) {
  drm_mode_convert_to_umode(&umode, mode);
  state->mode_blob =
   drm_property_create_blob(state->crtc->dev,
                                   sizeof(umode),
                                   &umode);
  if (IS_ERR(state->mode_blob))
   return PTR_ERR(state->mode_blob);

  drm_mode_copy(&state->mode, mode);
  state->enable = 1;
  DRM_DEBUG_ATOMIC("Set [MODE:%s] for [CRTC:%d:%s] state %p\n",
     mode->name, crtc->base.id, crtc->name, state);
 } else {
  memset(&state->mode, 0, sizeof(state->mode));
  state->enable = 0;
  DRM_DEBUG_ATOMIC("Set [NOMODE] for [CRTC:%d:%s] state %p\n",
     crtc->base.id, crtc->name, state);
 }

 return 0;
}

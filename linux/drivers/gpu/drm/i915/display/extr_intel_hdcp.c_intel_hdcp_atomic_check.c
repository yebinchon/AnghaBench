
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct drm_crtc_state {int mode_changed; } ;
struct drm_connector_state {scalar_t__ content_protection; scalar_t__ hdcp_content_type; int crtc; int state; } ;
struct drm_connector {int dummy; } ;


 scalar_t__ DRM_MODE_CONTENT_PROTECTION_DESIRED ;
 scalar_t__ DRM_MODE_CONTENT_PROTECTION_ENABLED ;
 struct drm_crtc_state* drm_atomic_get_new_crtc_state (int ,int ) ;

void intel_hdcp_atomic_check(struct drm_connector *connector,
        struct drm_connector_state *old_state,
        struct drm_connector_state *new_state)
{
 u64 old_cp = old_state->content_protection;
 u64 new_cp = new_state->content_protection;
 struct drm_crtc_state *crtc_state;

 if (!new_state->crtc) {




  if (old_cp == DRM_MODE_CONTENT_PROTECTION_ENABLED)
   new_state->content_protection =
    DRM_MODE_CONTENT_PROTECTION_DESIRED;
  return;
 }





 if (old_cp == new_cp ||
     (old_cp == DRM_MODE_CONTENT_PROTECTION_DESIRED &&
      new_cp == DRM_MODE_CONTENT_PROTECTION_ENABLED)) {
  if (old_state->hdcp_content_type ==
    new_state->hdcp_content_type)
   return;
 }

 crtc_state = drm_atomic_get_new_crtc_state(new_state->state,
         new_state->crtc);
 crtc_state->mode_changed = 1;
}

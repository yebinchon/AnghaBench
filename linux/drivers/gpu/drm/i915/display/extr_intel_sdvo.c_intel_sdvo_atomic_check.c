
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo_connector_state {int tv; } ;
struct drm_crtc_state {int connectors_changed; } ;
struct drm_connector_state {scalar_t__ crtc; int tv; } ;
struct drm_connector {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 struct drm_connector_state* drm_atomic_get_new_connector_state (struct drm_atomic_state*,struct drm_connector*) ;
 struct drm_crtc_state* drm_atomic_get_new_crtc_state (struct drm_atomic_state*,scalar_t__) ;
 struct drm_connector_state* drm_atomic_get_old_connector_state (struct drm_atomic_state*,struct drm_connector*) ;
 int intel_digital_connector_atomic_check (struct drm_connector*,struct drm_atomic_state*) ;
 scalar_t__ memcmp (int *,int *,int) ;
 struct intel_sdvo_connector_state* to_intel_sdvo_connector_state (struct drm_connector_state*) ;

__attribute__((used)) static int intel_sdvo_atomic_check(struct drm_connector *conn,
       struct drm_atomic_state *state)
{
 struct drm_connector_state *new_conn_state =
  drm_atomic_get_new_connector_state(state, conn);
 struct drm_connector_state *old_conn_state =
  drm_atomic_get_old_connector_state(state, conn);
 struct intel_sdvo_connector_state *old_state =
  to_intel_sdvo_connector_state(old_conn_state);
 struct intel_sdvo_connector_state *new_state =
  to_intel_sdvo_connector_state(new_conn_state);

 if (new_conn_state->crtc &&
     (memcmp(&old_state->tv, &new_state->tv, sizeof(old_state->tv)) ||
      memcmp(&old_conn_state->tv, &new_conn_state->tv, sizeof(old_conn_state->tv)))) {
  struct drm_crtc_state *crtc_state =
   drm_atomic_get_new_crtc_state(state,
            new_conn_state->crtc);

  crtc_state->connectors_changed = 1;
 }

 return intel_digital_connector_atomic_check(conn, state);
}

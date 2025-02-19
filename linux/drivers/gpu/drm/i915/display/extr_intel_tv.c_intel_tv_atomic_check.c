
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_crtc_state {int connectors_changed; } ;
struct TYPE_3__ {scalar_t__ left; scalar_t__ right; scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_4__ {scalar_t__ mode; TYPE_1__ margins; } ;
struct drm_connector_state {TYPE_2__ tv; int crtc; } ;
struct drm_connector {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 struct drm_connector_state* drm_atomic_get_new_connector_state (struct drm_atomic_state*,struct drm_connector*) ;
 struct drm_crtc_state* drm_atomic_get_new_crtc_state (struct drm_atomic_state*,int ) ;
 struct drm_connector_state* drm_atomic_get_old_connector_state (struct drm_atomic_state*,struct drm_connector*) ;

__attribute__((used)) static int intel_tv_atomic_check(struct drm_connector *connector,
     struct drm_atomic_state *state)
{
 struct drm_connector_state *new_state;
 struct drm_crtc_state *new_crtc_state;
 struct drm_connector_state *old_state;

 new_state = drm_atomic_get_new_connector_state(state, connector);
 if (!new_state->crtc)
  return 0;

 old_state = drm_atomic_get_old_connector_state(state, connector);
 new_crtc_state = drm_atomic_get_new_crtc_state(state, new_state->crtc);

 if (old_state->tv.mode != new_state->tv.mode ||
     old_state->tv.margins.left != new_state->tv.margins.left ||
     old_state->tv.margins.right != new_state->tv.margins.right ||
     old_state->tv.margins.top != new_state->tv.margins.top ||
     old_state->tv.margins.bottom != new_state->tv.margins.bottom) {


  new_crtc_state->connectors_changed = 1;
 }

 return 0;
}

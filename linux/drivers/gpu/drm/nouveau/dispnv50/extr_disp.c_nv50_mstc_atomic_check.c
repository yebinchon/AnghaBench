
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv50_mstc {int port; TYPE_1__* mstm; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_crtc_state {scalar_t__ enable; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector_state {struct drm_crtc* crtc; } ;
struct drm_connector {int dummy; } ;
struct drm_atomic_state {int dummy; } ;
struct TYPE_2__ {struct drm_dp_mst_topology_mgr mgr; } ;


 int drm_atomic_crtc_needs_modeset (struct drm_crtc_state*) ;
 struct drm_connector_state* drm_atomic_get_new_connector_state (struct drm_atomic_state*,struct drm_connector*) ;
 struct drm_crtc_state* drm_atomic_get_new_crtc_state (struct drm_atomic_state*,struct drm_crtc*) ;
 struct drm_connector_state* drm_atomic_get_old_connector_state (struct drm_atomic_state*,struct drm_connector*) ;
 int drm_dp_atomic_release_vcpi_slots (struct drm_atomic_state*,struct drm_dp_mst_topology_mgr*,int ) ;
 struct nv50_mstc* nv50_mstc (struct drm_connector*) ;

__attribute__((used)) static int
nv50_mstc_atomic_check(struct drm_connector *connector,
         struct drm_atomic_state *state)
{
 struct nv50_mstc *mstc = nv50_mstc(connector);
 struct drm_dp_mst_topology_mgr *mgr = &mstc->mstm->mgr;
 struct drm_connector_state *new_conn_state =
  drm_atomic_get_new_connector_state(state, connector);
 struct drm_connector_state *old_conn_state =
  drm_atomic_get_old_connector_state(state, connector);
 struct drm_crtc_state *crtc_state;
 struct drm_crtc *new_crtc = new_conn_state->crtc;

 if (!old_conn_state->crtc)
  return 0;




 if (new_crtc) {
  crtc_state = drm_atomic_get_new_crtc_state(state, new_crtc);

  if (!crtc_state ||
      !drm_atomic_crtc_needs_modeset(crtc_state) ||
      crtc_state->enable)
   return 0;
 }

 return drm_dp_atomic_release_vcpi_slots(state, mgr, mstc->port);
}

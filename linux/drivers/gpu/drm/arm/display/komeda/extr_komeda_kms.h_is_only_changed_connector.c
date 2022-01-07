
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_crtc_state {int connector_mask; int crtc; int state; } ;
struct drm_connector {int dummy; } ;


 int BIT (int ) ;
 struct drm_crtc_state* drm_atomic_get_old_crtc_state (int ,int ) ;
 int drm_connector_index (struct drm_connector*) ;

__attribute__((used)) static inline bool
is_only_changed_connector(struct drm_crtc_state *st, struct drm_connector *conn)
{
 struct drm_crtc_state *old_st;
 u32 changed_connectors;

 old_st = drm_atomic_get_old_crtc_state(st->state, st->crtc);
 changed_connectors = st->connector_mask ^ old_st->connector_mask;

 return BIT(drm_connector_index(conn)) == changed_connectors;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int dummy; } ;
struct drm_connector {int state; } ;
struct dm_connector_state {struct drm_connector_state base; int underscan_vborder; int underscan_hborder; int underscan_enable; int scaling; int abm_level; int freesync_capable; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_connector_duplicate_state (struct drm_connector*,struct drm_connector_state*) ;
 struct dm_connector_state* kmemdup (struct dm_connector_state*,int,int ) ;
 struct dm_connector_state* to_dm_connector_state (int ) ;

struct drm_connector_state *
amdgpu_dm_connector_atomic_duplicate_state(struct drm_connector *connector)
{
 struct dm_connector_state *state =
  to_dm_connector_state(connector->state);

 struct dm_connector_state *new_state =
   kmemdup(state, sizeof(*state), GFP_KERNEL);

 if (!new_state)
  return ((void*)0);

 __drm_atomic_helper_connector_duplicate_state(connector, &new_state->base);

 new_state->freesync_capable = state->freesync_capable;
 new_state->abm_level = state->abm_level;
 new_state->scaling = state->scaling;
 new_state->underscan_enable = state->underscan_enable;
 new_state->underscan_hborder = state->underscan_hborder;
 new_state->underscan_vborder = state->underscan_vborder;

 return &new_state->base;
}

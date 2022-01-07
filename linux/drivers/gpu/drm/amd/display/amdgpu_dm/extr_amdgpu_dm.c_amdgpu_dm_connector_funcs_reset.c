
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {scalar_t__ connector_type; scalar_t__ state; } ;
struct TYPE_2__ {int max_requested_bpc; } ;
struct dm_connector_state {int underscan_enable; TYPE_1__ base; int abm_level; scalar_t__ underscan_vborder; scalar_t__ underscan_hborder; int scaling; } ;


 scalar_t__ DRM_MODE_CONNECTOR_eDP ;
 int GFP_KERNEL ;
 int RMX_OFF ;
 int __drm_atomic_helper_connector_destroy_state (scalar_t__) ;
 int __drm_atomic_helper_connector_reset (struct drm_connector*,TYPE_1__*) ;
 int amdgpu_dm_abm_level ;
 int kfree (struct dm_connector_state*) ;
 struct dm_connector_state* kzalloc (int,int ) ;
 struct dm_connector_state* to_dm_connector_state (scalar_t__) ;

void amdgpu_dm_connector_funcs_reset(struct drm_connector *connector)
{
 struct dm_connector_state *state =
  to_dm_connector_state(connector->state);

 if (connector->state)
  __drm_atomic_helper_connector_destroy_state(connector->state);

 kfree(state);

 state = kzalloc(sizeof(*state), GFP_KERNEL);

 if (state) {
  state->scaling = RMX_OFF;
  state->underscan_enable = 0;
  state->underscan_hborder = 0;
  state->underscan_vborder = 0;
  state->base.max_requested_bpc = 8;

  if (connector->connector_type == DRM_MODE_CONNECTOR_eDP)
   state->abm_level = amdgpu_dm_abm_level;

  __drm_atomic_helper_connector_reset(connector, &state->base);
 }
}

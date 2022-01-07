
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_connector_state {scalar_t__ scaling; scalar_t__ underscan_hborder; scalar_t__ underscan_vborder; scalar_t__ underscan_enable; } ;



__attribute__((used)) static bool
is_scaling_state_different(const struct dm_connector_state *dm_state,
      const struct dm_connector_state *old_dm_state)
{
 if (dm_state->scaling != old_dm_state->scaling)
  return 1;
 if (!dm_state->underscan_enable && old_dm_state->underscan_enable) {
  if (old_dm_state->underscan_hborder != 0 && old_dm_state->underscan_vborder != 0)
   return 1;
 } else if (dm_state->underscan_enable && !old_dm_state->underscan_enable) {
  if (dm_state->underscan_hborder != 0 && dm_state->underscan_vborder != 0)
   return 1;
 } else if (dm_state->underscan_hborder != old_dm_state->underscan_hborder ||
     dm_state->underscan_vborder != old_dm_state->underscan_vborder)
  return 1;
 return 0;
}

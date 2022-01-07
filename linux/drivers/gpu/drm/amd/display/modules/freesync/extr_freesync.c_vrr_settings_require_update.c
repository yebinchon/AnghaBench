
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ target_refresh_in_uhz; } ;
struct mod_vrr_params {scalar_t__ state; unsigned int min_refresh_in_uhz; unsigned int max_refresh_in_uhz; TYPE_1__ fixed; } ;
struct mod_freesync_config {scalar_t__ state; scalar_t__ min_refresh_in_uhz; } ;
struct core_freesync {int dummy; } ;


 scalar_t__ VRR_STATE_ACTIVE_FIXED ;

__attribute__((used)) static bool vrr_settings_require_update(struct core_freesync *core_freesync,
  struct mod_freesync_config *in_config,
  unsigned int min_refresh_in_uhz,
  unsigned int max_refresh_in_uhz,
  struct mod_vrr_params *in_vrr)
{
 if (in_vrr->state != in_config->state) {
  return 1;
 } else if (in_vrr->state == VRR_STATE_ACTIVE_FIXED &&
   in_vrr->fixed.target_refresh_in_uhz !=
     in_config->min_refresh_in_uhz) {
  return 1;
 } else if (in_vrr->min_refresh_in_uhz != min_refresh_in_uhz) {
  return 1;
 } else if (in_vrr->max_refresh_in_uhz != max_refresh_in_uhz) {
  return 1;
 }

 return 0;
}

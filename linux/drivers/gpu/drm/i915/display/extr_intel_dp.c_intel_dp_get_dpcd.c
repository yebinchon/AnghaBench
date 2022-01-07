
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int* dpcd; int downstream_ports; int aux; int sink_count; int desc; } ;
typedef int ssize_t ;


 int DP_DOWNSTREAM_PORT_0 ;
 int DP_DPCD_QUIRK_NO_SINK_COUNT ;
 size_t DP_DPCD_REV ;
 int DP_GET_SINK_COUNT (int ) ;
 int DP_MAX_DOWNSTREAM_PORTS ;
 int DP_SINK_COUNT ;
 scalar_t__ drm_dp_dpcd_read (int *,int ,int ,int ) ;
 int drm_dp_dpcd_readb (int *,int ,int *) ;
 int drm_dp_has_quirk (int *,int ) ;
 int drm_dp_is_branch (int*) ;
 int drm_dp_read_desc (int *,int *,int ) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int intel_dp_read_dpcd (struct intel_dp*) ;
 int intel_dp_set_common_rates (struct intel_dp*) ;
 int intel_dp_set_sink_rates (struct intel_dp*) ;

__attribute__((used)) static bool
intel_dp_get_dpcd(struct intel_dp *intel_dp)
{
 if (!intel_dp_read_dpcd(intel_dp))
  return 0;





 if (!intel_dp_is_edp(intel_dp)) {
  drm_dp_read_desc(&intel_dp->aux, &intel_dp->desc,
     drm_dp_is_branch(intel_dp->dpcd));

  intel_dp_set_sink_rates(intel_dp);
  intel_dp_set_common_rates(intel_dp);
 }





 if (!intel_dp_is_edp(intel_dp) &&
     !drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_NO_SINK_COUNT)) {
  u8 count;
  ssize_t r;

  r = drm_dp_dpcd_readb(&intel_dp->aux, DP_SINK_COUNT, &count);
  if (r < 1)
   return 0;






  intel_dp->sink_count = DP_GET_SINK_COUNT(count);
  if (!intel_dp->sink_count)
   return 0;
 }

 if (!drm_dp_is_branch(intel_dp->dpcd))
  return 1;

 if (intel_dp->dpcd[DP_DPCD_REV] == 0x10)
  return 1;

 if (drm_dp_dpcd_read(&intel_dp->aux, DP_DOWNSTREAM_PORT_0,
        intel_dp->downstream_ports,
        DP_MAX_DOWNSTREAM_PORTS) < 0)
  return 0;

 return 1;
}

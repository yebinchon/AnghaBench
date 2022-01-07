
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dc {int dummy; } ;
struct amdgpu_dm_connector {scalar_t__ dc_link; } ;
typedef int dpcd_data ;


 int DP_DOWN_STREAM_PORT_COUNT ;
 int DP_MSA_TIMING_PAR_IGNORED ;
 scalar_t__ dm_helpers_dp_read_dpcd (int *,scalar_t__,int ,int*,int) ;

__attribute__((used)) static bool is_dp_capable_without_timing_msa(struct dc *dc,
          struct amdgpu_dm_connector *amdgpu_dm_connector)
{
 uint8_t dpcd_data;
 bool capable = 0;

 if (amdgpu_dm_connector->dc_link &&
  dm_helpers_dp_read_dpcd(
    ((void*)0),
    amdgpu_dm_connector->dc_link,
    DP_DOWN_STREAM_PORT_COUNT,
    &dpcd_data,
    sizeof(dpcd_data))) {
  capable = (dpcd_data & DP_MSA_TIMING_PAR_IGNORED) ? 1:0;
 }

 return capable;
}

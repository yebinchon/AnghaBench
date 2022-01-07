
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mod_freesync {int dummy; } ;
struct dc_stream_state {int dummy; } ;


 unsigned long long div_u64 (unsigned long long,int) ;
 unsigned long long mod_freesync_calc_nominal_field_rate (struct dc_stream_state const*) ;

bool mod_freesync_is_valid_range(struct mod_freesync *mod_freesync,
  const struct dc_stream_state *stream,
  uint32_t min_refresh_cap_in_uhz,
  uint32_t max_refresh_cap_in_uhz,
  uint32_t min_refresh_request_in_uhz,
  uint32_t max_refresh_request_in_uhz)
{

 unsigned long long nominal_field_rate_in_uhz =
   mod_freesync_calc_nominal_field_rate(stream);
 nominal_field_rate_in_uhz =
   div_u64(nominal_field_rate_in_uhz + 500000, 1000000);
 min_refresh_cap_in_uhz /= 1000000;
 max_refresh_cap_in_uhz /= 1000000;
 min_refresh_request_in_uhz /= 1000000;
 max_refresh_request_in_uhz /= 1000000;


 if (nominal_field_rate_in_uhz > max_refresh_cap_in_uhz ||
  nominal_field_rate_in_uhz < min_refresh_cap_in_uhz)
  return 0;


 if (nominal_field_rate_in_uhz < max_refresh_cap_in_uhz)
  max_refresh_cap_in_uhz = nominal_field_rate_in_uhz;


 if (min_refresh_request_in_uhz > max_refresh_request_in_uhz)
  return 0;


 if (min_refresh_request_in_uhz > max_refresh_cap_in_uhz ||
  min_refresh_request_in_uhz < min_refresh_cap_in_uhz)
  return 0;


 if (max_refresh_request_in_uhz > max_refresh_cap_in_uhz ||
  max_refresh_request_in_uhz < min_refresh_cap_in_uhz)
  return 0;


 if ((max_refresh_request_in_uhz != min_refresh_request_in_uhz) &&
  (max_refresh_request_in_uhz - min_refresh_request_in_uhz < 10))
  return 0;

 return 1;
}

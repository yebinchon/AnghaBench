
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct intel_dp {scalar_t__ use_rate_select; } ;


 scalar_t__ drm_dp_link_rate_to_bw_code (int) ;
 scalar_t__ intel_dp_rate_select (struct intel_dp*,int) ;

void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
      u8 *link_bw, u8 *rate_select)
{

 if (intel_dp->use_rate_select) {
  *link_bw = 0;
  *rate_select =
   intel_dp_rate_select(intel_dp, port_clock);
 } else {
  *link_bw = drm_dp_link_rate_to_bw_code(port_clock);
  *rate_select = 0;
 }
}

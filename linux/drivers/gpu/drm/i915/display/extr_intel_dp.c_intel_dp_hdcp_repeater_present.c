
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_digital_port {int dummy; } ;
typedef int ssize_t ;


 int DP_BCAPS_REPEATER_PRESENT ;
 int intel_dp_hdcp_read_bcaps (struct intel_digital_port*,int*) ;

__attribute__((used)) static
int intel_dp_hdcp_repeater_present(struct intel_digital_port *intel_dig_port,
       bool *repeater_present)
{
 ssize_t ret;
 u8 bcaps;

 ret = intel_dp_hdcp_read_bcaps(intel_dig_port, &bcaps);
 if (ret)
  return ret;

 *repeater_present = bcaps & DP_BCAPS_REPEATER_PRESENT;
 return 0;
}

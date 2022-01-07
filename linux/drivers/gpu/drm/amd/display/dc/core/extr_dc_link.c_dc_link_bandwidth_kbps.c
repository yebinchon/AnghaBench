
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct dc_link_settings {int link_rate; int lane_count; } ;
struct TYPE_4__ {scalar_t__ FEC_CAPABLE; } ;
struct TYPE_5__ {TYPE_1__ bits; } ;
struct TYPE_6__ {TYPE_2__ fec_cap; } ;
struct dc_link {TYPE_3__ dpcd_caps; } ;


 long long BIT_ULL (int) ;
 int LINK_RATE_REF_FREQ_IN_KHZ ;
 int mul_u64_u32_shr (long long,int,int) ;

uint32_t dc_link_bandwidth_kbps(
 const struct dc_link *link,
 const struct dc_link_settings *link_setting)
{
 uint32_t link_bw_kbps =
  link_setting->link_rate * LINK_RATE_REF_FREQ_IN_KHZ;

 link_bw_kbps *= 8;
 link_bw_kbps *= link_setting->lane_count;
 return link_bw_kbps;

}

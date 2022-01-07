
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ DP_LINK_BW_2_7 ;

__attribute__((used)) static int
cdv_intel_dp_link_clock(uint8_t link_bw)
{
 if (link_bw == DP_LINK_BW_2_7)
  return 270000;
 else
  return 162000;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum dc_link_rate { ____Placeholder_dc_link_rate } dc_link_rate ;


 int LINK_RATE_HIGH ;
 int LINK_RATE_HIGH2 ;
 int LINK_RATE_HIGH3 ;
 int LINK_RATE_LOW ;
 int LINK_RATE_RATE_2 ;
 int LINK_RATE_RATE_3 ;
 int LINK_RATE_RATE_6 ;
 int LINK_RATE_RBR2 ;
 int LINK_RATE_UNKNOWN ;

enum dc_link_rate linkRateInKHzToLinkRateMultiplier(uint32_t link_rate_in_khz)
{
 enum dc_link_rate link_rate;

 switch (link_rate_in_khz) {
 case 1620000:
  link_rate = LINK_RATE_LOW;
  break;
 case 2160000:
  link_rate = LINK_RATE_RATE_2;
  break;
 case 2430000:
  link_rate = LINK_RATE_RATE_3;
  break;
 case 2700000:
  link_rate = LINK_RATE_HIGH;
  break;
 case 3240000:
  link_rate = LINK_RATE_RBR2;
  break;
 case 4320000:
  link_rate = LINK_RATE_RATE_6;
  break;
 case 5400000:
  link_rate = LINK_RATE_HIGH2;
  break;
 case 8100000:
  link_rate = LINK_RATE_HIGH3;
  break;
 default:
  link_rate = LINK_RATE_UNKNOWN;
  break;
 }
 return link_rate;
}

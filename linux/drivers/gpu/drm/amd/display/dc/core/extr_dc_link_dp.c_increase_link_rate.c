
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_link_rate { ____Placeholder_dc_link_rate } dc_link_rate ;




 int LINK_RATE_HIGH3 ;

 int LINK_RATE_UNKNOWN ;

__attribute__((used)) static enum dc_link_rate increase_link_rate(enum dc_link_rate link_rate)
{
 switch (link_rate) {
 case 128:
  return 130;
 case 130:
  return 129;
 case 129:
  return LINK_RATE_HIGH3;
 default:
  return LINK_RATE_UNKNOWN;
 }
}

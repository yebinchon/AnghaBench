
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_link_rate { ____Placeholder_dc_link_rate } dc_link_rate ;






 int LINK_RATE_UNKNOWN ;

__attribute__((used)) static enum dc_link_rate reduce_link_rate(enum dc_link_rate link_rate)
{
 switch (link_rate) {
 case 129:
  return 130;
 case 130:
  return 131;
 case 131:
  return 128;
 case 128:
  return LINK_RATE_UNKNOWN;
 default:
  return LINK_RATE_UNKNOWN;
 }
}

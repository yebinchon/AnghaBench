
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ TDPLimit; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; } ;



int vega20_validate_power_level_request(struct pp_hwmgr *hwmgr,
  uint32_t tdp_percentage_adjustment, uint32_t tdp_absolute_value_adjustment)
{
 return (tdp_percentage_adjustment > hwmgr->platform_descriptor.TDPLimit) ? -1 : 0;
}

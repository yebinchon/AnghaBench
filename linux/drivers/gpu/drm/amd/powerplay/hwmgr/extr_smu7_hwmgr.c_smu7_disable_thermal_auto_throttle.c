
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int PHM_AutoThrottleSource_Thermal ;
 int smu7_disable_auto_throttle_source (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu7_disable_thermal_auto_throttle(struct pp_hwmgr *hwmgr)
{
 return smu7_disable_auto_throttle_source(hwmgr, PHM_AutoThrottleSource_Thermal);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int vega12_disable_gfx_off (struct pp_hwmgr*) ;
 int vega12_enable_gfx_off (struct pp_hwmgr*) ;

__attribute__((used)) static int vega12_gfx_off_control(struct pp_hwmgr *hwmgr, bool enable)
{
 if (enable)
  return vega12_enable_gfx_off(hwmgr);
 else
  return vega12_disable_gfx_off(hwmgr);
}

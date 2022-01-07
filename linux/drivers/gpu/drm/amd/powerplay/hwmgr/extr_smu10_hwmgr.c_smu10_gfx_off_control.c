
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int smu10_disable_gfx_off (struct pp_hwmgr*) ;
 int smu10_enable_gfx_off (struct pp_hwmgr*) ;

__attribute__((used)) static int smu10_gfx_off_control(struct pp_hwmgr *hwmgr, bool enable)
{
 if (enable)
  return smu10_enable_gfx_off(hwmgr);
 else
  return smu10_disable_gfx_off(hwmgr);
}

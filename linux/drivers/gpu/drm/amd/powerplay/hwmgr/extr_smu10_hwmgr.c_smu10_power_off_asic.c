
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int smu10_reset_cc6_data (struct pp_hwmgr*) ;

__attribute__((used)) static int smu10_power_off_asic(struct pp_hwmgr *hwmgr)
{
 return smu10_reset_cc6_data(hwmgr);
}

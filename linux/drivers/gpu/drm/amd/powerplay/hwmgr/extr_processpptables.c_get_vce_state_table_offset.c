
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pp_hwmgr {int dummy; } ;
typedef int ATOM_PPLIB_POWERPLAYTABLE ;


 scalar_t__ get_vce_clock_voltage_limit_table_offset (struct pp_hwmgr*,int const*) ;
 scalar_t__ get_vce_clock_voltage_limit_table_size (struct pp_hwmgr*,int const*) ;

__attribute__((used)) static uint16_t get_vce_state_table_offset(struct pp_hwmgr *hwmgr, const ATOM_PPLIB_POWERPLAYTABLE *powerplay_table)
{
 uint16_t table_offset = get_vce_clock_voltage_limit_table_offset(hwmgr, powerplay_table);

 if (table_offset > 0)
  return table_offset + get_vce_clock_voltage_limit_table_size(hwmgr, powerplay_table);

 return 0;
}

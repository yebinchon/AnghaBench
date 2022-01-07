
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct pp_hwmgr {int dummy; } ;
struct TYPE_2__ {int numEntries; } ;
typedef TYPE_1__ ATOM_PPLIB_VCE_Clock_Voltage_Limit_Table ;
typedef int ATOM_PPLIB_VCE_Clock_Voltage_Limit_Record ;
typedef int ATOM_PPLIB_POWERPLAYTABLE ;


 scalar_t__ get_vce_clock_voltage_limit_table_offset (struct pp_hwmgr*,int const*) ;

__attribute__((used)) static uint16_t get_vce_clock_voltage_limit_table_size(struct pp_hwmgr *hwmgr,
       const ATOM_PPLIB_POWERPLAYTABLE *powerplay_table)
{
 uint16_t table_offset = get_vce_clock_voltage_limit_table_offset(hwmgr, powerplay_table);
 uint16_t table_size = 0;

 if (table_offset > 0) {
  const ATOM_PPLIB_VCE_Clock_Voltage_Limit_Table *ptable =
   (const ATOM_PPLIB_VCE_Clock_Voltage_Limit_Table *)(((unsigned long) powerplay_table) + table_offset);

  table_size = sizeof(uint8_t) + ptable->numEntries * sizeof(ATOM_PPLIB_VCE_Clock_Voltage_Limit_Record);
 }
 return table_size;
}

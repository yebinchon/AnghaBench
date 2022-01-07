
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int pp_tables_get_num_of_entries (struct pp_hwmgr*,unsigned long*) ;

__attribute__((used)) static int smu8_dpm_get_num_of_pp_table_entries(struct pp_hwmgr *hwmgr)
{
 int result;
 unsigned long ret = 0;

 result = pp_tables_get_num_of_entries(hwmgr, &ret);

 return result ? 0 : ret;
}

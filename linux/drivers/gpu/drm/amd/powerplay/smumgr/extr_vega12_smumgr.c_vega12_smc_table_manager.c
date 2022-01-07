
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct pp_hwmgr {int dummy; } ;


 int vega12_copy_table_from_smc (struct pp_hwmgr*,int *,int ) ;
 int vega12_copy_table_to_smc (struct pp_hwmgr*,int *,int ) ;

__attribute__((used)) static int vega12_smc_table_manager(struct pp_hwmgr *hwmgr, uint8_t *table,
        uint16_t table_id, bool rw)
{
 int ret;

 if (rw)
  ret = vega12_copy_table_from_smc(hwmgr, table, table_id);
 else
  ret = vega12_copy_table_to_smc(hwmgr, table, table_id);

 return ret;
}

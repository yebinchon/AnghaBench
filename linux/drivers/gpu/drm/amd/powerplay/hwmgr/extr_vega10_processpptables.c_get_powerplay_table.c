
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pp_hwmgr {void* soft_pp_table; int soft_pp_table_size; int adev; } ;
typedef int ATOM_Vega10_POWERPLAYTABLE ;


 int GetIndexIntoMasterDataTable (int ) ;
 int powerplayinfo ;
 scalar_t__ smu_atom_get_data_table (int ,int,int *,int *,int *) ;

__attribute__((used)) static const void *get_powerplay_table(struct pp_hwmgr *hwmgr)
{
 int index = GetIndexIntoMasterDataTable(powerplayinfo);

 u16 size;
 u8 frev, crev;
 const void *table_address = hwmgr->soft_pp_table;

 if (!table_address) {
  table_address = (ATOM_Vega10_POWERPLAYTABLE *)
    smu_atom_get_data_table(hwmgr->adev, index,
      &size, &frev, &crev);

  hwmgr->soft_pp_table = table_address;
  hwmgr->soft_pp_table_size = size;
 }

 return table_address;
}

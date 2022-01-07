
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pp_hwmgr {int soft_pp_table_size; void* soft_pp_table; int adev; } ;
typedef int ATOM_Tonga_POWERPLAYTABLE ;


 int DATA ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int PowerPlayInfo ;
 scalar_t__ smu_atom_get_data_table (int ,int,int *,int *,int *) ;

__attribute__((used)) static const void *get_powerplay_table(struct pp_hwmgr *hwmgr)
{
 int index = GetIndexIntoMasterTable(DATA, PowerPlayInfo);

 u16 size;
 u8 frev, crev;
 void *table_address = (void *)hwmgr->soft_pp_table;

 if (!table_address) {
  table_address = (ATOM_Tonga_POWERPLAYTABLE *)
    smu_atom_get_data_table(hwmgr->adev,
      index, &size, &frev, &crev);
  hwmgr->soft_pp_table = table_address;
  hwmgr->soft_pp_table_size = size;
 }

 return table_address;
}

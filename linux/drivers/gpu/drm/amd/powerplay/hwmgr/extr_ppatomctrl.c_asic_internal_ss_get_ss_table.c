
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int ATOM_ASIC_INTERNAL_SS_INFO ;


 int ASIC_InternalSS_Info ;
 int DATA ;
 int GetIndexIntoMasterTable (int ,int ) ;
 scalar_t__ smu_atom_get_data_table (void*,int ,int *,int *,int *) ;

__attribute__((used)) static ATOM_ASIC_INTERNAL_SS_INFO *asic_internal_ss_get_ss_table(void *device)
{
 ATOM_ASIC_INTERNAL_SS_INFO *table = ((void*)0);
 u8 frev, crev;
 u16 size;

 table = (ATOM_ASIC_INTERNAL_SS_INFO *)
  smu_atom_get_data_table(device,
   GetIndexIntoMasterTable(DATA, ASIC_InternalSS_Info),
   &size, &frev, &crev);

 return table;
}

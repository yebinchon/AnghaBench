
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union voltage_object_info {int v3; } ;
typedef int u8 ;
typedef int u16 ;
typedef int ATOM_VOLTAGE_OBJECT_INFO ;


 int DATA ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int VoltageObjectInfo ;
 scalar_t__ smu_atom_get_data_table (void*,int,int *,int *,int *) ;

__attribute__((used)) static ATOM_VOLTAGE_OBJECT_INFO *get_voltage_info_table(void *device)
{
 int index = GetIndexIntoMasterTable(DATA, VoltageObjectInfo);
 u8 frev, crev;
 u16 size;
 union voltage_object_info *voltage_info;

 voltage_info = (union voltage_object_info *)
  smu_atom_get_data_table(device, index,
   &size, &frev, &crev);

 if (voltage_info != ((void*)0))
  return (ATOM_VOLTAGE_OBJECT_INFO *) &(voltage_info->v3);
 else
  return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_2__ {int atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;


 int COMMAND ;
 int DynamicMemorySettings ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int atom_execute_table (int ,int,int *) ;
 int cpu_to_le32 (int ) ;

void radeon_atom_update_memory_dll(struct radeon_device *rdev,
       u32 mem_clock)
{
 u32 args;
 int index = GetIndexIntoMasterTable(COMMAND, DynamicMemorySettings);

 args = cpu_to_le32(mem_clock);

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct TYPE_4__ {int ulReturnMemoryClock; } ;
typedef TYPE_2__ GET_MEMORY_CLOCK_PS_ALLOCATION ;


 int COMMAND ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int GetMemoryClock ;
 int atom_execute_table (int ,int,int *) ;
 int le32_to_cpu (int ) ;

uint32_t radeon_atom_get_memory_clock(struct radeon_device *rdev)
{
 GET_MEMORY_CLOCK_PS_ALLOCATION args;
 int index = GetIndexIntoMasterTable(COMMAND, GetMemoryClock);

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
 return le32_to_cpu(args.ulReturnMemoryClock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atom_memory_info {scalar_t__ mem_type; } ;


 scalar_t__ MEM_TYPE_DDR3 ;
 scalar_t__ MEM_TYPE_GDDR3 ;

__attribute__((used)) static u32 cypress_get_mclk_split_point(struct atom_memory_info *memory_info)
{
 if ((memory_info->mem_type == MEM_TYPE_GDDR3) ||
     (memory_info->mem_type == MEM_TYPE_DDR3))
  return 30000;

 return 0;
}

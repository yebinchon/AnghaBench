
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {scalar_t__ phys_addr; int num_pages; } ;
typedef TYPE_1__ efi_memory_desc_t ;


 int EFI_PAGE_SIZE ;

__attribute__((used)) static bool regions_are_adjacent(efi_memory_desc_t *left,
     efi_memory_desc_t *right)
{
 u64 left_end;

 if (left == ((void*)0) || right == ((void*)0))
  return 0;

 left_end = left->phys_addr + left->num_pages * EFI_PAGE_SIZE;

 return left_end == right->phys_addr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table_size; void* ptr; int table_addr; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ gart; int pdev; } ;


 scalar_t__ CHIP_RS400 ;
 scalar_t__ CHIP_RS480 ;
 scalar_t__ CHIP_RS690 ;
 scalar_t__ CHIP_RS740 ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 int memset (void*,int ,int) ;
 void* pci_alloc_consistent (int ,int,int *) ;
 int set_memory_uc (unsigned long,int) ;

int radeon_gart_table_ram_alloc(struct radeon_device *rdev)
{
 void *ptr;

 ptr = pci_alloc_consistent(rdev->pdev, rdev->gart.table_size,
       &rdev->gart.table_addr);
 if (ptr == ((void*)0)) {
  return -ENOMEM;
 }







 rdev->gart.ptr = ptr;
 memset((void *)rdev->gart.ptr, 0, rdev->gart.table_size);
 return 0;
}

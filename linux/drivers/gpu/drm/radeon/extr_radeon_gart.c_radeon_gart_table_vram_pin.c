
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int num_gpu_pages; int * pages_entry; int table_addr; int robj; int ptr; } ;
struct radeon_device {TYPE_1__ gart; } ;


 int RADEON_GEM_DOMAIN_VRAM ;
 int mb () ;
 int radeon_bo_kmap (int ,int *) ;
 int radeon_bo_pin (int ,int ,int *) ;
 int radeon_bo_reserve (int ,int) ;
 int radeon_bo_unpin (int ) ;
 int radeon_bo_unreserve (int ) ;
 int radeon_gart_set_page (struct radeon_device*,int,int ) ;
 int radeon_gart_tlb_flush (struct radeon_device*) ;
 scalar_t__ unlikely (int) ;

int radeon_gart_table_vram_pin(struct radeon_device *rdev)
{
 uint64_t gpu_addr;
 int r;

 r = radeon_bo_reserve(rdev->gart.robj, 0);
 if (unlikely(r != 0))
  return r;
 r = radeon_bo_pin(rdev->gart.robj,
    RADEON_GEM_DOMAIN_VRAM, &gpu_addr);
 if (r) {
  radeon_bo_unreserve(rdev->gart.robj);
  return r;
 }
 r = radeon_bo_kmap(rdev->gart.robj, &rdev->gart.ptr);
 if (r)
  radeon_bo_unpin(rdev->gart.robj);
 radeon_bo_unreserve(rdev->gart.robj);
 rdev->gart.table_addr = gpu_addr;

 if (!r) {
  int i;




  for (i = 0; i < rdev->gart.num_gpu_pages; i++)
   radeon_gart_set_page(rdev, i, rdev->gart.pages_entry[i]);
  mb();
  radeon_gart_tlb_flush(rdev);
 }

 return r;
}

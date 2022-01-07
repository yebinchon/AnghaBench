
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int table_size; int num_gpu_pages; scalar_t__ robj; } ;
struct radeon_device {TYPE_2__* asic; TYPE_3__ gart; } ;
struct TYPE_4__ {int * set_page; int * get_page_entry; int * tlb_flush; } ;
struct TYPE_5__ {TYPE_1__ gart; } ;


 int DRM_ERROR (char*) ;
 int WARN (int,char*) ;
 int radeon_gart_init (struct radeon_device*) ;
 int radeon_gart_table_vram_alloc (struct radeon_device*) ;
 int rv370_debugfs_pcie_gart_info_init (struct radeon_device*) ;
 int rv370_pcie_gart_get_page_entry ;
 int rv370_pcie_gart_set_page ;
 int rv370_pcie_gart_tlb_flush ;

int rv370_pcie_gart_init(struct radeon_device *rdev)
{
 int r;

 if (rdev->gart.robj) {
  WARN(1, "RV370 PCIE GART already initialized\n");
  return 0;
 }

 r = radeon_gart_init(rdev);
 if (r)
  return r;
 r = rv370_debugfs_pcie_gart_info_init(rdev);
 if (r)
  DRM_ERROR("Failed to register debugfs file for PCIE gart !\n");
 rdev->gart.table_size = rdev->gart.num_gpu_pages * 4;
 rdev->asic->gart.tlb_flush = &rv370_pcie_gart_tlb_flush;
 rdev->asic->gart.get_page_entry = &rv370_pcie_gart_get_page_entry;
 rdev->asic->gart.set_page = &rv370_pcie_gart_set_page;
 return radeon_gart_table_vram_alloc(rdev);
}

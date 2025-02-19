
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int table_size; int num_gpu_pages; scalar_t__ ptr; } ;
struct TYPE_3__ {int gtt_size; } ;
struct radeon_device {TYPE_2__ gart; TYPE_1__ mc; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int WARN (int,char*) ;
 int radeon_gart_init (struct radeon_device*) ;
 int radeon_gart_table_ram_alloc (struct radeon_device*) ;
 scalar_t__ rs400_debugfs_pcie_gart_info_init (struct radeon_device*) ;

int rs400_gart_init(struct radeon_device *rdev)
{
 int r;

 if (rdev->gart.ptr) {
  WARN(1, "RS400 GART already initialized\n");
  return 0;
 }

 switch(rdev->mc.gtt_size / (1024 * 1024)) {
 case 32:
 case 64:
 case 128:
 case 256:
 case 512:
 case 1024:
 case 2048:
  break;
 default:
  return -EINVAL;
 }

 r = radeon_gart_init(rdev);
 if (r)
  return r;
 if (rs400_debugfs_pcie_gart_info_init(rdev))
  DRM_ERROR("Failed to register debugfs file for RS400 GART !\n");
 rdev->gart.table_size = rdev->gart.num_gpu_pages * 4;
 return radeon_gart_table_ram_alloc(rdev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table_size; int num_gpu_pages; scalar_t__ robj; } ;
struct radeon_device {TYPE_1__ gart; } ;


 int WARN (int,char*) ;
 int radeon_gart_init (struct radeon_device*) ;
 int radeon_gart_table_vram_alloc (struct radeon_device*) ;

__attribute__((used)) static int rs600_gart_init(struct radeon_device *rdev)
{
 int r;

 if (rdev->gart.robj) {
  WARN(1, "RS600 GART already initialized\n");
  return 0;
 }

 r = radeon_gart_init(rdev);
 if (r) {
  return r;
 }
 rdev->gart.table_size = rdev->gart.num_gpu_pages * 8;
 return radeon_gart_table_vram_alloc(rdev);
}

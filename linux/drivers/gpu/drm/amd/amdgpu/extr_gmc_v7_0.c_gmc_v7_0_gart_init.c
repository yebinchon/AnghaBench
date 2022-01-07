
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table_size; int num_gpu_pages; scalar_t__ gart_pte_flags; scalar_t__ bo; } ;
struct amdgpu_device {TYPE_1__ gart; } ;


 int WARN (int,char*) ;
 int amdgpu_gart_init (struct amdgpu_device*) ;
 int amdgpu_gart_table_vram_alloc (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v7_0_gart_init(struct amdgpu_device *adev)
{
 int r;

 if (adev->gart.bo) {
  WARN(1, "R600 PCIE GART already initialized\n");
  return 0;
 }

 r = amdgpu_gart_init(adev);
 if (r)
  return r;
 adev->gart.table_size = adev->gart.num_gpu_pages * 8;
 adev->gart.gart_pte_flags = 0;
 return amdgpu_gart_table_vram_alloc(adev);
}

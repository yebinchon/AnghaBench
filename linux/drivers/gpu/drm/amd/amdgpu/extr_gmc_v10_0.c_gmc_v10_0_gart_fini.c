
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_gart_fini (struct amdgpu_device*) ;
 int amdgpu_gart_table_vram_free (struct amdgpu_device*) ;

__attribute__((used)) static void gmc_v10_0_gart_fini(struct amdgpu_device *adev)
{
 amdgpu_gart_table_vram_free(adev);
 amdgpu_gart_fini(adev);
}

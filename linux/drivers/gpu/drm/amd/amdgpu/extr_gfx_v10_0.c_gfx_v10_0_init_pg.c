
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int num_vmhubs; } ;


 int amdgpu_gmc_flush_gpu_tlb (struct amdgpu_device*,int ,int,int ) ;
 int gfx_v10_0_init_csb (struct amdgpu_device*) ;

__attribute__((used)) static void gfx_v10_0_init_pg(struct amdgpu_device *adev)
{
 int i;

 gfx_v10_0_init_csb(adev);

 for (i = 0; i < adev->num_vmhubs; i++)
  amdgpu_gmc_flush_gpu_tlb(adev, 0, i, 0);


 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int gmc_v6_0_set_gmc_funcs (struct amdgpu_device*) ;
 int gmc_v6_0_set_irq_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v6_0_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 gmc_v6_0_set_gmc_funcs(adev);
 gmc_v6_0_set_irq_funcs(adev);

 return 0;
}

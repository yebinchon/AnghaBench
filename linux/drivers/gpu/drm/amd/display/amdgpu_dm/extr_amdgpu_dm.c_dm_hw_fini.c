
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_dm_fini (struct amdgpu_device*) ;
 int amdgpu_dm_hpd_fini (struct amdgpu_device*) ;
 int amdgpu_dm_irq_fini (struct amdgpu_device*) ;

__attribute__((used)) static int dm_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 amdgpu_dm_hpd_fini(adev);

 amdgpu_dm_irq_fini(adev);
 amdgpu_dm_fini(adev);
 return 0;
}

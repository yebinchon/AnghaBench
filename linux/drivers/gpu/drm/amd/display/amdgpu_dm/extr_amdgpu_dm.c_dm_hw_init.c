
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_dm_hpd_init (struct amdgpu_device*) ;
 int amdgpu_dm_init (struct amdgpu_device*) ;

__attribute__((used)) static int dm_hw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 amdgpu_dm_init(adev);
 amdgpu_dm_hpd_init(adev);

 return 0;
}

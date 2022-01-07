
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int DRM_INFO (char*) ;
 int amdgpu_atombios_i2c_init (struct amdgpu_device*) ;
 scalar_t__ amdgpu_hw_i2c ;

void amdgpu_i2c_init(struct amdgpu_device *adev)
{
 if (amdgpu_hw_i2c)
  DRM_INFO("hw_i2c forced on, you may experience display detection problems!\n");

 amdgpu_atombios_i2c_init(adev);
}

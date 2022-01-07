
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int ** i2c_bus; } ;


 int AMDGPU_MAX_I2C_BUS ;
 int amdgpu_i2c_destroy (int *) ;

void amdgpu_i2c_fini(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < AMDGPU_MAX_I2C_BUS; i++) {
  if (adev->i2c_bus[i]) {
   amdgpu_i2c_destroy(adev->i2c_bus[i]);
   adev->i2c_bus[i] = ((void*)0);
  }
 }
}

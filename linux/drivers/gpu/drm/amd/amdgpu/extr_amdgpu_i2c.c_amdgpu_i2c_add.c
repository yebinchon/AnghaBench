
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct amdgpu_i2c_bus_rec {int dummy; } ;
struct amdgpu_device {scalar_t__* i2c_bus; struct drm_device* ddev; } ;


 int AMDGPU_MAX_I2C_BUS ;
 scalar_t__ amdgpu_i2c_create (struct drm_device*,struct amdgpu_i2c_bus_rec const*,char const*) ;

void amdgpu_i2c_add(struct amdgpu_device *adev,
      const struct amdgpu_i2c_bus_rec *rec,
      const char *name)
{
 struct drm_device *dev = adev->ddev;
 int i;

 for (i = 0; i < AMDGPU_MAX_I2C_BUS; i++) {
  if (!adev->i2c_bus[i]) {
   adev->i2c_bus[i] = amdgpu_i2c_create(dev, rec, name);
   return;
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i2c_id; } ;
struct amdgpu_i2c_chan {TYPE_1__ rec; } ;
struct amdgpu_i2c_bus_rec {scalar_t__ i2c_id; } ;
struct amdgpu_device {struct amdgpu_i2c_chan** i2c_bus; } ;


 int AMDGPU_MAX_I2C_BUS ;

struct amdgpu_i2c_chan *
amdgpu_i2c_lookup(struct amdgpu_device *adev,
    const struct amdgpu_i2c_bus_rec *i2c_bus)
{
 int i;

 for (i = 0; i < AMDGPU_MAX_I2C_BUS; i++) {
  if (adev->i2c_bus[i] &&
      (adev->i2c_bus[i]->rec.i2c_id == i2c_bus->i2c_id)) {
   return adev->i2c_bus[i];
  }
 }
 return ((void*)0);
}

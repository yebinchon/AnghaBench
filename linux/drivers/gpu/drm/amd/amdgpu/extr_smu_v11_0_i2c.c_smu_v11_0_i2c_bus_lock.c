
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct TYPE_4__ {int pp_handle; TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; } ;
struct TYPE_3__ {int (* smu_i2c_bus_access ) (int ,int) ;} ;


 int stub1 (int ,int) ;
 struct amdgpu_device* to_amdgpu_device (struct i2c_adapter*) ;

__attribute__((used)) static bool smu_v11_0_i2c_bus_lock(struct i2c_adapter *control)
{
 struct amdgpu_device *adev = to_amdgpu_device(control);


 if (!adev->powerplay.pp_funcs->smu_i2c_bus_access)
  goto Fail;


 if (!adev->powerplay.pp_funcs->smu_i2c_bus_access(adev->powerplay.pp_handle, 1))
  return 1;

Fail:
 return 0;
}

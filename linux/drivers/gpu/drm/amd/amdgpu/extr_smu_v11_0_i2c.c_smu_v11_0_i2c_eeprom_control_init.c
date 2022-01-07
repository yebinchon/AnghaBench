
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * parent; } ;
struct i2c_adapter {int * lock_ops; int name; int * algo; TYPE_2__ dev; int class; int owner; } ;
struct amdgpu_device {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int DRM_ERROR (char*,int) ;
 int I2C_CLASS_SPD ;
 int THIS_MODULE ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int smu_v11_0_i2c_eeprom_i2c_algo ;
 int smu_v11_0_i2c_i2c_lock_ops ;
 int snprintf (int ,int,char*) ;
 struct amdgpu_device* to_amdgpu_device (struct i2c_adapter*) ;

int smu_v11_0_i2c_eeprom_control_init(struct i2c_adapter *control)
{
 struct amdgpu_device *adev = to_amdgpu_device(control);
 int res;

 control->owner = THIS_MODULE;
 control->class = I2C_CLASS_SPD;
 control->dev.parent = &adev->pdev->dev;
 control->algo = &smu_v11_0_i2c_eeprom_i2c_algo;
 snprintf(control->name, sizeof(control->name), "RAS EEPROM");
 control->lock_ops = &smu_v11_0_i2c_i2c_lock_ops;

 res = i2c_add_adapter(control);
 if (res)
  DRM_ERROR("Failed to register hw i2c, err: %d\n", res);

 return res;
}

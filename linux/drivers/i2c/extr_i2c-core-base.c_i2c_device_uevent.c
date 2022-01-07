
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct i2c_client {int name; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int I2C_MODULE_PREFIX ;
 int acpi_device_uevent_modalias (struct device*,struct kobj_uevent_env*) ;
 int add_uevent_var (struct kobj_uevent_env*,char*,int ,int ) ;
 int of_device_uevent_modalias (struct device*,struct kobj_uevent_env*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int i2c_device_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct i2c_client *client = to_i2c_client(dev);
 int rc;

 rc = of_device_uevent_modalias(dev, env);
 if (rc != -ENODEV)
  return rc;

 rc = acpi_device_uevent_modalias(dev, env);
 if (rc != -ENODEV)
  return rc;

 return add_uevent_var(env, "MODALIAS=%s%s", I2C_MODULE_PREFIX, client->name);
}

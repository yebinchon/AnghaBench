
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i2c; } ;
struct i3c_bus {TYPE_1__ scl_rate; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct i3c_bus* dev_to_i3cbus (struct device*) ;
 int i3c_bus_normaluse_lock (struct i3c_bus*) ;
 int i3c_bus_normaluse_unlock (struct i3c_bus*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t i2c_scl_frequency_show(struct device *dev,
          struct device_attribute *da,
          char *buf)
{
 struct i3c_bus *i3cbus = dev_to_i3cbus(dev);
 ssize_t ret;

 i3c_bus_normaluse_lock(i3cbus);
 ret = sprintf(buf, "%ld\n", i3cbus->scl_rate.i2c);
 i3c_bus_normaluse_unlock(i3cbus);

 return ret;
}

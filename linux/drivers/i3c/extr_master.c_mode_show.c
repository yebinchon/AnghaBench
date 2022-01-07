
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_bus {size_t mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 size_t ARRAY_SIZE (char**) ;
 struct i3c_bus* dev_to_i3cbus (struct device*) ;
 char** i3c_bus_mode_strings ;
 int i3c_bus_normaluse_lock (struct i3c_bus*) ;
 int i3c_bus_normaluse_unlock (struct i3c_bus*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t mode_show(struct device *dev,
    struct device_attribute *da,
    char *buf)
{
 struct i3c_bus *i3cbus = dev_to_i3cbus(dev);
 ssize_t ret;

 i3c_bus_normaluse_lock(i3cbus);
 if (i3cbus->mode < 0 ||
     i3cbus->mode >= ARRAY_SIZE(i3c_bus_mode_strings) ||
     !i3c_bus_mode_strings[i3cbus->mode])
  ret = sprintf(buf, "unknown\n");
 else
  ret = sprintf(buf, "%s\n", i3c_bus_mode_strings[i3cbus->mode]);
 i3c_bus_normaluse_unlock(i3cbus);

 return ret;
}

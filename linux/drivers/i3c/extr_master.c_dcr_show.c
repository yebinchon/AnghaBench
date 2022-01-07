
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dcr; } ;
struct i3c_dev_desc {TYPE_1__ info; } ;
struct i3c_bus {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct i3c_bus* dev_to_i3cbus (struct device*) ;
 struct i3c_dev_desc* dev_to_i3cdesc (struct device*) ;
 int i3c_bus_normaluse_lock (struct i3c_bus*) ;
 int i3c_bus_normaluse_unlock (struct i3c_bus*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t dcr_show(struct device *dev,
   struct device_attribute *da,
   char *buf)
{
 struct i3c_bus *bus = dev_to_i3cbus(dev);
 struct i3c_dev_desc *desc;
 ssize_t ret;

 i3c_bus_normaluse_lock(bus);
 desc = dev_to_i3cdesc(dev);
 ret = sprintf(buf, "%x\n", desc->info.dcr);
 i3c_bus_normaluse_unlock(bus);

 return ret;
}

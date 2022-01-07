
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_unit {scalar_t__ directory; } ;
struct fw_device {scalar_t__ config_rom; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct fw_device* fw_device (int ) ;
 struct fw_unit* fw_unit (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t rom_index_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct fw_device *device = fw_device(dev->parent);
 struct fw_unit *unit = fw_unit(dev);

 return snprintf(buf, PAGE_SIZE, "%d\n",
   (int)(unit->directory - device->config_rom));
}

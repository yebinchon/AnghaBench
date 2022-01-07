
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int auto_dev_name ;


 struct device* bus_find_device_by_name (int *,int *,char*) ;
 int dev_info (struct device*,char*,char*) ;
 int platform_bus_type ;
 int snprintf (char*,int,char*,char const*,int) ;

__attribute__((used)) static struct device *get_mfd_cell_dev(const char *device_name, int r)
{
 char auto_dev_name[25];
 struct device *dev;

 snprintf(auto_dev_name, sizeof(auto_dev_name),
   "%s.%d.auto", device_name, r);
 dev = bus_find_device_by_name(&platform_bus_type, ((void*)0), auto_dev_name);
 dev_info(dev, "device %s added to pm domain\n", auto_dev_name);

 return dev;
}

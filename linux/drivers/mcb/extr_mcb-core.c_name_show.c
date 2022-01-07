
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_bus {int name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 struct mcb_bus* to_mcb_bus (struct device*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct mcb_bus *bus = to_mcb_bus(dev);

 return scnprintf(buf, PAGE_SIZE, "%s\n", bus->name);
}

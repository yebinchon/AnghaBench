
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rmi_driver_data {TYPE_1__* f01_container; } ;
struct TYPE_4__ {int package_id; } ;
struct f01_data {TYPE_2__ properties; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {struct device dev; } ;


 int PAGE_SIZE ;
 void* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int,int) ;

__attribute__((used)) static ssize_t rmi_driver_package_id_show(struct device *dev,
       struct device_attribute *dattr,
       char *buf)
{
 struct rmi_driver_data *data = dev_get_drvdata(dev);
 struct f01_data *f01 = dev_get_drvdata(&data->f01_container->dev);

 u32 package_id = f01->properties.package_id;

 return scnprintf(buf, PAGE_SIZE, "%04x.%04x\n",
    package_id & 0xffff, (package_id >> 16) & 0xffff);
}

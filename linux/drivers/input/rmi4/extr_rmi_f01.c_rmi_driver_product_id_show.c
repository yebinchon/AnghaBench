
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rmi_driver_data {TYPE_1__* f01_container; } ;
struct TYPE_4__ {int product_id; } ;
struct f01_data {TYPE_2__ properties; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {struct device dev; } ;


 int PAGE_SIZE ;
 void* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t rmi_driver_product_id_show(struct device *dev,
       struct device_attribute *dattr,
       char *buf)
{
 struct rmi_driver_data *data = dev_get_drvdata(dev);
 struct f01_data *f01 = dev_get_drvdata(&data->f01_container->dev);

 return scnprintf(buf, PAGE_SIZE, "%s\n", f01->properties.product_id);
}

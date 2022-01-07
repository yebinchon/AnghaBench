
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* show_name ) (struct device*,struct device_attribute*,char*) ;} ;
struct abx500_temp {TYPE_1__ ops; } ;
typedef int ssize_t ;


 struct abx500_temp* dev_get_drvdata (struct device*) ;
 int stub1 (struct device*,struct device_attribute*,char*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev, struct device_attribute *devattr,
    char *buf)
{
 struct abx500_temp *data = dev_get_drvdata(dev);

 return data->ops.show_name(dev, devattr, buf);
}

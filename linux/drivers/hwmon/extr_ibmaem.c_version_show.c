
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aem_data {int ver_major; int ver_minor; } ;
typedef int ssize_t ;


 struct aem_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t version_show(struct device *dev,
       struct device_attribute *devattr, char *buf)
{
 struct aem_data *data = dev_get_drvdata(dev);

 return sprintf(buf, "%d.%d\n", data->ver_major, data->ver_minor);
}

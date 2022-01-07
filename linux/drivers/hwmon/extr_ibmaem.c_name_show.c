
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aem_data {int ver_major; } ;
typedef int ssize_t ;


 char* DRVNAME ;
 struct aem_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*,int ) ;

__attribute__((used)) static ssize_t name_show(struct device *dev, struct device_attribute *devattr,
    char *buf)
{
 struct aem_data *data = dev_get_drvdata(dev);

 return sprintf(buf, "%s%d\n", DRVNAME, data->ver_major);
}

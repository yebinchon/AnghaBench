
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f71805f_data {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct f71805f_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev, struct device_attribute
    *devattr, char *buf)
{
 struct f71805f_data *data = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", data->name);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1031_data {int update_interval; } ;
typedef int ssize_t ;


 struct adm1031_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t update_interval_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct adm1031_data *data = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n", data->update_interval);
}

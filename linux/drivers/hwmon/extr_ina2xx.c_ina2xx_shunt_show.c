
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_data {int rshunt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct ina2xx_data* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t ina2xx_shunt_show(struct device *dev,
     struct device_attribute *da, char *buf)
{
 struct ina2xx_data *data = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%li\n", data->rshunt);
}

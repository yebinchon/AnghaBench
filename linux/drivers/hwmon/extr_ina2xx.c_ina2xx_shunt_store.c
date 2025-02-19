
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct ina2xx_data* dev_get_drvdata (struct device*) ;
 int ina2xx_set_shunt (struct ina2xx_data*,unsigned long) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t ina2xx_shunt_store(struct device *dev,
      struct device_attribute *da,
      const char *buf, size_t count)
{
 unsigned long val;
 int status;
 struct ina2xx_data *data = dev_get_drvdata(dev);

 status = kstrtoul(buf, 10, &val);
 if (status < 0)
  return status;

 status = ina2xx_set_shunt(data, val);
 if (status < 0)
  return status;
 return count;
}

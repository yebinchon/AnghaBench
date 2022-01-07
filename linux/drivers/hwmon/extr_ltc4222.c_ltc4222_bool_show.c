
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {unsigned int index; int nr; } ;
struct regmap {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct regmap* dev_get_drvdata (struct device*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_update_bits (struct regmap*,int ,unsigned int,int ) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t ltc4222_bool_show(struct device *dev,
     struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(da);
 struct regmap *regmap = dev_get_drvdata(dev);
 unsigned int fault;
 int ret;

 ret = regmap_read(regmap, attr->nr, &fault);
 if (ret < 0)
  return ret;
 fault &= attr->index;
 if (fault)
  regmap_update_bits(regmap, attr->nr, attr->index, 0);

 return snprintf(buf, PAGE_SIZE, "%d\n", !!fault);
}

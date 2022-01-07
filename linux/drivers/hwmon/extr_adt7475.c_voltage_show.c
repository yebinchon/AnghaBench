
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int alarms; unsigned short** voltage; int bypass_attn; } ;
typedef int ssize_t ;



 scalar_t__ IS_ERR (struct adt7475_data*) ;
 int PTR_ERR (struct adt7475_data*) ;
 struct adt7475_data* adt7475_update_device (struct device*) ;
 int reg2volt (size_t,unsigned short,int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t voltage_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct adt7475_data *data = adt7475_update_device(dev);
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 unsigned short val;

 if (IS_ERR(data))
  return PTR_ERR(data);

 switch (sattr->nr) {
 case 128:
  return sprintf(buf, "%d\n",
          (data->alarms >> sattr->index) & 1);
 default:
  val = data->voltage[sattr->nr][sattr->index];
  return sprintf(buf, "%d\n",
          reg2volt(sattr->index, val, data->bypass_attn));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct nct7802_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct nct7802_data* dev_get_drvdata (struct device*) ;
 int nct7802_read_fan (struct nct7802_data*,int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 struct nct7802_data *data = dev_get_drvdata(dev);
 int speed;

 speed = nct7802_read_fan(data, sattr->index);
 if (speed < 0)
  return speed;

 return sprintf(buf, "%d\n", speed);
}

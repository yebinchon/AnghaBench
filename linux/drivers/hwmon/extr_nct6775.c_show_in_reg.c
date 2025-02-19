
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct nct6775_data {int ** in; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int in_from_reg (int ,int) ;
 struct nct6775_data* nct6775_update_device (struct device*) ;
 int sprintf (char*,char*,int ) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_in_reg(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct nct6775_data *data = nct6775_update_device(dev);
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int index = sattr->index;
 int nr = sattr->nr;

 return sprintf(buf, "%ld\n", in_from_reg(data->in[nr][index], nr));
}

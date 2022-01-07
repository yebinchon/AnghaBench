
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct w83795_data {int** in; int has_gain; int** in_lsb; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;



 size_t IN_LSB_IDX ;
 size_t IN_LSB_SHIFT ;
 int** IN_LSB_SHIFT_IDX ;


 int in_from_reg (int,int) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83795_data* w83795_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_in(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 struct w83795_data *data = w83795_update_device(dev);
 u16 val = data->in[index][nr];
 u8 lsb_idx;

 switch (nr) {
 case 128:

  if ((index >= 17) &&
      !((data->has_gain >> (index - 17)) & 1))
   val *= 8;
  break;
 case 129:
 case 130:
  lsb_idx = IN_LSB_SHIFT_IDX[index][IN_LSB_IDX];
  val <<= 2;
  val |= (data->in_lsb[lsb_idx][nr] >>
   IN_LSB_SHIFT_IDX[index][IN_LSB_SHIFT]) & 0x03;
  if ((index >= 17) &&
      !((data->has_gain >> (index - 17)) & 1))
   val *= 8;
  break;
 }
 val = in_from_reg(index, val);

 return sprintf(buf, "%d\n", val);
}

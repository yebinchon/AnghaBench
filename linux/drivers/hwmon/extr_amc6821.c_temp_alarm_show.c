
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amc6821_data {int stat1; int stat2; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int AMC6821_STAT1_LTH ;
 int AMC6821_STAT1_LTL ;
 int AMC6821_STAT1_RTH ;
 int AMC6821_STAT1_RTL ;
 int AMC6821_STAT2_LTC ;
 int AMC6821_STAT2_RTC ;
 int EINVAL ;






 struct amc6821_data* amc6821_update_device (struct device*) ;
 int dev_dbg (struct device*,char*,int) ;
 int sprintf (char*,char*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_alarm_show(struct device *dev,
          struct device_attribute *devattr, char *buf)
{
 struct amc6821_data *data = amc6821_update_device(dev);
 int ix = to_sensor_dev_attr(devattr)->index;
 u8 flag;

 switch (ix) {
 case 131:
  flag = data->stat1 & AMC6821_STAT1_LTL;
  break;
 case 132:
  flag = data->stat1 & AMC6821_STAT1_LTH;
  break;
 case 133:
  flag = data->stat2 & AMC6821_STAT2_LTC;
  break;
 case 128:
  flag = data->stat1 & AMC6821_STAT1_RTL;
  break;
 case 129:
  flag = data->stat1 & AMC6821_STAT1_RTH;
  break;
 case 130:
  flag = data->stat2 & AMC6821_STAT2_RTC;
  break;
 default:
  dev_dbg(dev, "Unknown attr->index (%d).\n", ix);
  return -EINVAL;
 }
 if (flag)
  return sprintf(buf, "1");
 else
  return sprintf(buf, "0");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm93_data {int** block9; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t LM93_PWM_CTL2 ;
 struct lm93_data* lm93_update_device (struct device*) ;
 int sprintf (char*,char*,long) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_enable_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct lm93_data *data = lm93_update_device(dev);
 u8 ctl2;
 long rc;

 ctl2 = data->block9[nr][LM93_PWM_CTL2];
 if (ctl2 & 0x01)
  rc = ((ctl2 & 0xF0) == 0xF0) ? 0 : 1;
 else
  rc = 2;
 return sprintf(buf, "%ld\n", rc);
}

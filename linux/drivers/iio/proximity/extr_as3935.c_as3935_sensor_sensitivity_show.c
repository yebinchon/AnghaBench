
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct as3935_state {int dummy; } ;
typedef int ssize_t ;


 int AS3935_AFE_GAIN ;
 int AS3935_AFE_MASK ;
 int as3935_read (struct as3935_state*,int ,int*) ;
 int dev_to_iio_dev (struct device*) ;
 struct as3935_state* iio_priv (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t as3935_sensor_sensitivity_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct as3935_state *st = iio_priv(dev_to_iio_dev(dev));
 int val, ret;

 ret = as3935_read(st, AS3935_AFE_GAIN, &val);
 if (ret)
  return ret;
 val = (val & AS3935_AFE_MASK) >> 1;

 return sprintf(buf, "%d\n", val);
}

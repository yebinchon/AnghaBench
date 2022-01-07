
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int IIO_VAL_INT_PLUS_MICRO ;

__attribute__((used)) static int axp813_adc_scale_voltage(int channel, int *val, int *val2)
{
 switch (channel) {
 case 128:
  *val = 0;
  *val2 = 800000;
  return IIO_VAL_INT_PLUS_MICRO;

 case 129:
  *val = 1;
  *val2 = 100000;
  return IIO_VAL_INT_PLUS_MICRO;

 default:
  return -EINVAL;
 }
}

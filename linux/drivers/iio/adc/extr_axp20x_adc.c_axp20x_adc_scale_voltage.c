
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int IIO_VAL_INT_PLUS_MICRO ;

__attribute__((used)) static int axp20x_adc_scale_voltage(int channel, int *val, int *val2)
{
 switch (channel) {
 case 133:
 case 128:
  *val = 1;
  *val2 = 700000;
  return IIO_VAL_INT_PLUS_MICRO;

 case 131:
 case 130:
  *val = 0;
  *val2 = 500000;
  return IIO_VAL_INT_PLUS_MICRO;

 case 132:
  *val = 1;
  *val2 = 100000;
  return IIO_VAL_INT_PLUS_MICRO;

 case 129:
  *val = 1;
  *val2 = 400000;
  return IIO_VAL_INT_PLUS_MICRO;

 default:
  return -EINVAL;
 }
}

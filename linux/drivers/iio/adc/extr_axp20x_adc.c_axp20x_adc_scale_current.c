
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int IIO_VAL_INT_PLUS_MICRO ;

__attribute__((used)) static int axp20x_adc_scale_current(int channel, int *val, int *val2)
{
 switch (channel) {
 case 131:
  *val = 0;
  *val2 = 625000;
  return IIO_VAL_INT_PLUS_MICRO;

 case 128:
  *val = 0;
  *val2 = 375000;
  return IIO_VAL_INT_PLUS_MICRO;

 case 129:
 case 130:
  *val = 0;
  *val2 = 500000;
  return IIO_VAL_INT_PLUS_MICRO;

 default:
  return -EINVAL;
 }
}

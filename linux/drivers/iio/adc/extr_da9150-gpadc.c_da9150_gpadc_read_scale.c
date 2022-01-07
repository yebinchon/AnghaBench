
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int IIO_VAL_FRACTIONAL ;

__attribute__((used)) static int da9150_gpadc_read_scale(int channel, int *val, int *val2)
{
 switch (channel) {
 case 128:
  *val = 2932;
  *val2 = 1000;
  return IIO_VAL_FRACTIONAL;
 case 130:
 case 129:
  *val = 1000000;
  *val2 = 4420;
  return IIO_VAL_FRACTIONAL;
 default:
  return -EINVAL;
 }
}

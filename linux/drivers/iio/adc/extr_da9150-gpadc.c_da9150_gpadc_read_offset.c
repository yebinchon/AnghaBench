
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int IIO_VAL_INT ;

__attribute__((used)) static int da9150_gpadc_read_offset(int channel, int *val)
{
 switch (channel) {
 case 128:
  *val = 1500000 / 2932;
  return IIO_VAL_INT;
 case 130:
 case 129:
  *val = -144;
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}

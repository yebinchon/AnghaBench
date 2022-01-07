
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max31856_data {int dummy; } ;
struct iio_chan_spec {int channel2; } ;


 int EINVAL ;
 int EIO ;


 int MAX31856_CJTO_REG ;
 int MAX31856_FAULT_OPEN ;
 int MAX31856_FAULT_OVUV ;
 int MAX31856_LTCBH_REG ;
 int MAX31856_SR_REG ;
 int max31856_read (struct max31856_data*,int ,int*,int) ;

__attribute__((used)) static int max31856_thermocouple_read(struct max31856_data *data,
          struct iio_chan_spec const *chan,
          int *val)
{
 int ret, offset_cjto;
 u8 reg_val[3];

 switch (chan->channel2) {
 case 128:




  ret = max31856_read(data, MAX31856_LTCBH_REG, reg_val, 3);
  if (ret)
   return ret;

  *val = (reg_val[0] << 16 | reg_val[1] << 8 | reg_val[2]) >> 5;

  if (reg_val[0] & 0x80)
   *val -= 0x80000;
  break;

 case 129:




  ret = max31856_read(data, MAX31856_CJTO_REG, reg_val, 3);
  if (ret)
   return ret;

  offset_cjto = reg_val[0];

  *val = (reg_val[1] << 8 | reg_val[2]) >> 2;

  *val += offset_cjto;

  if (reg_val[1] & 0x80)
   *val -= 0x4000;
  break;

 default:
  return -EINVAL;
 }

 ret = max31856_read(data, MAX31856_SR_REG, reg_val, 1);
 if (ret)
  return ret;

 if (reg_val[0] & (MAX31856_FAULT_OVUV | MAX31856_FAULT_OPEN))
  return -EIO;

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ltc4245_data {int* gpios; int* cregs; } ;
struct device {int dummy; } ;


 int BIT (int) ;
 int EOPNOTSUPP ;
 size_t LTC4245_FAULT1 ;
 size_t LTC4245_FAULT2 ;


 long ltc4245_get_voltage (struct device*,int ) ;
 int * ltc4245_in_regs ;
 struct ltc4245_data* ltc4245_update_device (struct device*) ;

__attribute__((used)) static int ltc4245_read_in(struct device *dev, u32 attr, int channel, long *val)
{
 struct ltc4245_data *data = ltc4245_update_device(dev);

 switch (attr) {
 case 129:
  if (channel < 8) {
   *val = ltc4245_get_voltage(dev,
      ltc4245_in_regs[channel]);
  } else {
   int regval = data->gpios[channel - 8];

   if (regval < 0)
    return regval;
   *val = regval * 10;
  }
  return 0;
 case 128:
  if (channel < 4)
   *val = !!(data->cregs[LTC4245_FAULT1] & BIT(channel));
  else
   *val = !!(data->cregs[LTC4245_FAULT2] &
      BIT(channel - 4));
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}

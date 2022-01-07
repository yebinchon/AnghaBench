
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ltc4245_data {int* cregs; } ;
struct device {int dummy; } ;


 int BIT (int) ;
 int EOPNOTSUPP ;
 size_t LTC4245_FAULT1 ;


 int * ltc4245_curr_regs ;
 long ltc4245_get_current (struct device*,int ) ;
 struct ltc4245_data* ltc4245_update_device (struct device*) ;

__attribute__((used)) static int ltc4245_read_curr(struct device *dev, u32 attr, int channel,
        long *val)
{
 struct ltc4245_data *data = ltc4245_update_device(dev);

 switch (attr) {
 case 129:
  *val = ltc4245_get_current(dev, ltc4245_curr_regs[channel]);
  return 0;
 case 128:
  *val = !!(data->cregs[LTC4245_FAULT1] & BIT(channel + 4));
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}

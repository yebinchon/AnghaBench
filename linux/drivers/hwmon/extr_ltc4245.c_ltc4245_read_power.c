
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 long abs (unsigned long) ;

 int * ltc4245_curr_regs ;
 unsigned long ltc4245_get_current (struct device*,int ) ;
 long ltc4245_get_voltage (struct device*,int ) ;
 int * ltc4245_in_regs ;
 int ltc4245_update_device (struct device*) ;

__attribute__((used)) static int ltc4245_read_power(struct device *dev, u32 attr, int channel,
         long *val)
{
 unsigned long curr;
 long voltage;

 switch (attr) {
 case 128:
  (void)ltc4245_update_device(dev);
  curr = ltc4245_get_current(dev, ltc4245_curr_regs[channel]);
  voltage = ltc4245_get_voltage(dev, ltc4245_in_regs[channel]);
  *val = abs(curr * voltage);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}

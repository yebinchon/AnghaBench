
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct ltc4215_data {size_t* regs; } ;
struct device {int dummy; } ;





 int WARN_ON_ONCE (int) ;
 struct ltc4215_data* ltc4215_update_device (struct device*) ;

__attribute__((used)) static int ltc4215_get_voltage(struct device *dev, u8 reg)
{
 struct ltc4215_data *data = ltc4215_update_device(dev);
 const u8 regval = data->regs[reg];
 u32 voltage = 0;

 switch (reg) {
 case 129:

  voltage = regval * 151 / 1000;
  break;
 case 128:

  voltage = regval * 605 / 10;
  break;
 case 130:




  voltage = regval * 482 * 125 / 1000;
  break;
 default:

  WARN_ON_ONCE(1);
  break;
 }

 return voltage;
}

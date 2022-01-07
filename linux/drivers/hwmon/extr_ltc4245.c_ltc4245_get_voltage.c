
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ltc4245_data {int* vregs; } ;
struct device {int dummy; } ;
 int WARN_ON_ONCE (int) ;
 struct ltc4245_data* ltc4245_update_device (struct device*) ;

__attribute__((used)) static int ltc4245_get_voltage(struct device *dev, u8 reg)
{
 struct ltc4245_data *data = ltc4245_update_device(dev);
 const u8 regval = data->vregs[reg - 0x10];
 u32 voltage = 0;

 switch (reg) {
 case 136:
 case 135:
  voltage = regval * 55;
  break;
 case 132:
 case 131:
  voltage = regval * 22;
  break;
 case 134:
 case 133:
  voltage = regval * 15;
  break;
 case 129:
 case 128:
  voltage = regval * -55;
  break;
 case 130:
  voltage = regval * 10;
  break;
 default:

  WARN_ON_ONCE(1);
  break;
 }

 return voltage;
}

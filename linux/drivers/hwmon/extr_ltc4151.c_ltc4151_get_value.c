
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct ltc4151_data {int* regs; int shunt; } ;





 int WARN_ON_ONCE (int) ;

__attribute__((used)) static int ltc4151_get_value(struct ltc4151_data *data, u8 reg)
{
 u32 val;

 val = (data->regs[reg] << 4) + (data->regs[reg + 1] >> 4);

 switch (reg) {
 case 130:

  val = val * 500 / 1000;
  break;
 case 129:




  val = val * 20 * 1000 / data->shunt;
  break;
 case 128:

  val = val * 25;
  break;
 default:

  WARN_ON_ONCE(1);
  val = 0;
  break;
 }

 return val;
}

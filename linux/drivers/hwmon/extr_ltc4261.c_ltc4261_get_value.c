
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct ltc4261_data {int* regs; } ;





 int WARN_ON_ONCE (int) ;

__attribute__((used)) static int ltc4261_get_value(struct ltc4261_data *data, u8 reg)
{
 u32 val;

 val = (data->regs[reg] << 2) + (data->regs[reg + 1] >> 6);

 switch (reg) {
 case 129:
 case 130:

  val = val * 25 / 10;
  break;
 case 128:







  val = val * 625 / 10;
  break;
 default:

  WARN_ON_ONCE(1);
  val = 0;
  break;
 }

 return val;
}

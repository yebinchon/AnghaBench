
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nct6775_data {int* fan_div; int has_fan_min; int* fan_min; int * REG_FAN_MIN; int has_fan_div; } ;
struct device {int dummy; } ;


 int BIT (int) ;
 int dev_dbg (struct device*,char*,int,int ,int ) ;
 int div_from_reg (int) ;
 int nct6775_write_fan_div_common (struct nct6775_data*,int) ;
 int nct6775_write_value (struct nct6775_data*,int ,int) ;

__attribute__((used)) static void nct6775_select_fan_div(struct device *dev,
       struct nct6775_data *data, int nr, u16 reg)
{
 u8 fan_div = data->fan_div[nr];
 u16 fan_min;

 if (!data->has_fan_div)
  return;






 if (reg == 0x00 && fan_div < 0x07)
  fan_div++;
 else if (reg != 0x00 && reg < 0x30 && fan_div > 0)
  fan_div--;

 if (fan_div != data->fan_div[nr]) {
  dev_dbg(dev, "Modifying fan%d clock divider from %u to %u\n",
   nr + 1, div_from_reg(data->fan_div[nr]),
   div_from_reg(fan_div));


  if (data->has_fan_min & BIT(nr)) {
   fan_min = data->fan_min[nr];
   if (fan_div > data->fan_div[nr]) {
    if (fan_min != 255 && fan_min > 1)
     fan_min >>= 1;
   } else {
    if (fan_min != 255) {
     fan_min <<= 1;
     if (fan_min > 254)
      fan_min = 254;
    }
   }
   if (fan_min != data->fan_min[nr]) {
    data->fan_min[nr] = fan_min;
    nct6775_write_value(data, data->REG_FAN_MIN[nr],
          fan_min);
   }
  }
  data->fan_div[nr] = fan_div;
  nct6775_write_fan_div_common(data, nr);
 }
}

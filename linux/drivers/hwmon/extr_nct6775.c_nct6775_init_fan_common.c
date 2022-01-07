
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nct6775_data {int has_fan_min; scalar_t__ has_fan_div; int * REG_FAN_MIN; int fan_min; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int BIT (int) ;
 int nct6775_init_fan_div (struct nct6775_data*) ;
 int nct6775_read_value (struct nct6775_data*,int ) ;
 int nct6775_write_value (struct nct6775_data*,int ,int) ;

__attribute__((used)) static void nct6775_init_fan_common(struct device *dev,
        struct nct6775_data *data)
{
 int i;
 u8 reg;

 if (data->has_fan_div)
  nct6775_init_fan_div(data);





 for (i = 0; i < ARRAY_SIZE(data->fan_min); i++) {
  if (data->has_fan_min & BIT(i)) {
   reg = nct6775_read_value(data, data->REG_FAN_MIN[i]);
   if (!reg)
    nct6775_write_value(data, data->REG_FAN_MIN[i],
          data->has_fan_div ? 0xff
              : 0xff1f);
  }
 }
}

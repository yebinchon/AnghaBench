
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ina2xx_data {unsigned int power_lsb_uW; int current_lsb_uA; TYPE_1__* config; } ;
typedef int s16 ;
struct TYPE_2__ {int shunt_div; unsigned int bus_voltage_shift; unsigned int bus_voltage_lsb; } ;


 int DIV_ROUND_CLOSEST (int,int) ;





 int WARN_ON_ONCE (int) ;

__attribute__((used)) static int ina2xx_get_value(struct ina2xx_data *data, u8 reg,
       unsigned int regval)
{
 int val;

 switch (reg) {
 case 128:

  val = DIV_ROUND_CLOSEST((s16)regval, data->config->shunt_div);
  break;
 case 132:
  val = (regval >> data->config->bus_voltage_shift)
    * data->config->bus_voltage_lsb;
  val = DIV_ROUND_CLOSEST(val, 1000);
  break;
 case 129:
  val = regval * data->power_lsb_uW;
  break;
 case 130:

  val = (s16)regval * data->current_lsb_uA;
  val = DIV_ROUND_CLOSEST(val, 1000);
  break;
 case 131:
  val = regval;
  break;
 default:

  WARN_ON_ONCE(1);
  val = 0;
  break;
 }

 return val;
}

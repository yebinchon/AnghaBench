
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nct6775_data {int* pwm_enable; int tolerance_mask; int* target_speed_tolerance; int* target_speed; int* target_temp; int** temp_tolerance; int * REG_FAN_MODE; int * REG_TARGET; int * REG_TOLERANCE_H; } ;



 int nct6775_read_value (struct nct6775_data*,int ) ;
 int nct6775_write_value (struct nct6775_data*,int ,int) ;




__attribute__((used)) static void pwm_update_registers(struct nct6775_data *data, int nr)
{
 u8 reg;

 switch (data->pwm_enable[nr]) {
 case 130:
 case 131:
  break;
 case 129:
  reg = nct6775_read_value(data, data->REG_FAN_MODE[nr]);
  reg = (reg & ~data->tolerance_mask) |
    (data->target_speed_tolerance[nr] & data->tolerance_mask);
  nct6775_write_value(data, data->REG_FAN_MODE[nr], reg);
  nct6775_write_value(data, data->REG_TARGET[nr],
        data->target_speed[nr] & 0xff);
  if (data->REG_TOLERANCE_H) {
   reg = (data->target_speed[nr] >> 8) & 0x0f;
   reg |= (data->target_speed_tolerance[nr] & 0x38) << 1;
   nct6775_write_value(data,
         data->REG_TOLERANCE_H[nr],
         reg);
  }
  break;
 case 128:
  nct6775_write_value(data, data->REG_TARGET[nr],
        data->target_temp[nr]);

 default:
  reg = nct6775_read_value(data, data->REG_FAN_MODE[nr]);
  reg = (reg & ~data->tolerance_mask) |
    data->temp_tolerance[0][nr];
  nct6775_write_value(data, data->REG_FAN_MODE[nr], reg);
  break;
 }
}

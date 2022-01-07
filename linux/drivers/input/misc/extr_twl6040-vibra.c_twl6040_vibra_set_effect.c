
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vibra_info {int direction; int strong_speed; int vibrmotor_res; int vibrdrv_res; TYPE_1__* supplies; int weak_speed; int viblmotor_res; int vibldrv_res; struct twl6040* twl6040; } ;
struct twl6040 {int dummy; } ;
struct TYPE_2__ {int consumer; } ;


 int TWL6040_REG_VIBDATL ;
 int TWL6040_REG_VIBDATR ;
 int regulator_get_voltage (int ) ;
 int twl6040_reg_write (struct twl6040*,int ,int ) ;
 int twl6040_vibra_code (int,int ,int ,int ,int ) ;

__attribute__((used)) static void twl6040_vibra_set_effect(struct vibra_info *info)
{
 struct twl6040 *twl6040 = info->twl6040;
 u8 vibdatl, vibdatr;
 int volt;


 volt = regulator_get_voltage(info->supplies[0].consumer) / 1000;
 vibdatl = twl6040_vibra_code(volt, info->vibldrv_res,
         info->viblmotor_res,
         info->weak_speed, info->direction);


 volt = regulator_get_voltage(info->supplies[1].consumer) / 1000;
 vibdatr = twl6040_vibra_code(volt, info->vibrdrv_res,
         info->vibrmotor_res,
         info->strong_speed, info->direction);

 twl6040_reg_write(twl6040, TWL6040_REG_VIBDATL, vibdatl);
 twl6040_reg_write(twl6040, TWL6040_REG_VIBDATR, vibdatr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;


 int regulator_count_voltages (struct regulator*) ;
 int regulator_list_voltage (struct regulator*,int ) ;
 int regulator_set_voltage (struct regulator*,int,int) ;

__attribute__((used)) static inline int led_regulator_get_max_brightness(struct regulator *supply)
{
 int ret;
 int voltage = regulator_list_voltage(supply, 0);

 if (voltage <= 0)
  return 1;





 ret = regulator_set_voltage(supply, voltage, voltage);
 if (ret < 0)
  return 1;

 return regulator_count_voltages(supply);
}

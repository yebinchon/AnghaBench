
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max44000_data {int regmap; } ;


 int ERANGE ;
 int MAX44000_LED_CURRENT_MASK ;
 int MAX44000_LED_CURRENT_MAX ;
 int MAX44000_REG_CFG_TX ;
 int regmap_write_bits (int ,int ,int ,int) ;

__attribute__((used)) static int max44000_write_led_current_raw(struct max44000_data *data, int val)
{

 if (val < 0 || val > MAX44000_LED_CURRENT_MAX)
  return -ERANGE;
 if (val >= 8)
  val += 4;
 return regmap_write_bits(data->regmap, MAX44000_REG_CFG_TX,
     MAX44000_LED_CURRENT_MASK, val);
}

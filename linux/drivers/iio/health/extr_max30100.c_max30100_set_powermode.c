
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30100_data {int regmap; } ;


 int MAX30100_REG_MODE_CONFIG ;
 int MAX30100_REG_MODE_CONFIG_PWR ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int max30100_set_powermode(struct max30100_data *data, bool state)
{
 return regmap_update_bits(data->regmap, MAX30100_REG_MODE_CONFIG,
      MAX30100_REG_MODE_CONFIG_PWR,
      state ? 0 : MAX30100_REG_MODE_CONFIG_PWR);
}

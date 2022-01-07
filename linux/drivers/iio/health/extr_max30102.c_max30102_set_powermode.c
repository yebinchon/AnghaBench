
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max30102_data {int regmap; } ;


 int MAX30102_REG_MODE_CONFIG ;
 int MAX30102_REG_MODE_CONFIG_MODE_MASK ;
 int MAX30102_REG_MODE_CONFIG_PWR ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int max30102_set_powermode(struct max30102_data *data, u8 mode, bool en)
{
 u8 reg = mode;

 if (!en)
  reg |= MAX30102_REG_MODE_CONFIG_PWR;

 return regmap_update_bits(data->regmap, MAX30102_REG_MODE_CONFIG,
      MAX30102_REG_MODE_CONFIG_PWR |
      MAX30102_REG_MODE_CONFIG_MODE_MASK, reg);
}

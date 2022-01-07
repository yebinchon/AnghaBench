
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apds9960_data {int regmap; } ;


 int APDS9960_REG_ENABLE ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int apds9960_set_powermode(struct apds9960_data *data, bool state)
{
 return regmap_update_bits(data->regmap, APDS9960_REG_ENABLE, 1, state);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atlas_data {int regmap; } ;


 int ATLAS_REG_PWR_CONTROL ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int atlas_set_powermode(struct atlas_data *data, int on)
{
 return regmap_write(data->regmap, ATLAS_REG_PWR_CONTROL, on);
}

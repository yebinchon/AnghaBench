
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrfld_extcon_data {int regmap; } ;


 int regmap_update_bits (int ,unsigned int,unsigned int,int) ;

__attribute__((used)) static int mrfld_extcon_clear(struct mrfld_extcon_data *data, unsigned int reg,
         unsigned int mask)
{
 return regmap_update_bits(data->regmap, reg, mask, 0x00);
}

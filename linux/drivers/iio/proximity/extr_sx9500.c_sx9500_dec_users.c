
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx9500_data {int regmap; } ;


 int regmap_update_bits (int ,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int sx9500_dec_users(struct sx9500_data *data, int *counter,
       unsigned int reg, unsigned int bitmask)
{
 (*counter)--;
 if (*counter != 0)

  return 0;

 return regmap_update_bits(data->regmap, reg, bitmask, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct regmap {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ regmap_read (struct regmap*,scalar_t__,unsigned int*) ;

__attribute__((used)) static int mlx90632_read_ee_register(struct regmap *regmap, u16 reg_lsb,
         s32 *reg_value)
{
 s32 ret;
 unsigned int read;
 u32 value;

 ret = regmap_read(regmap, reg_lsb, &read);
 if (ret < 0)
  return ret;

 value = read;

 ret = regmap_read(regmap, reg_lsb + 1, &read);
 if (ret < 0)
  return ret;

 *reg_value = (read << 16) | (value & 0xffff);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
typedef scalar_t__ s16 ;


 int MLX90632_RAM_3 (int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int mlx90632_read_ambient_raw(struct regmap *regmap,
         s16 *ambient_new_raw, s16 *ambient_old_raw)
{
 int ret;
 unsigned int read_tmp;

 ret = regmap_read(regmap, MLX90632_RAM_3(1), &read_tmp);
 if (ret < 0)
  return ret;
 *ambient_new_raw = (s16)read_tmp;

 ret = regmap_read(regmap, MLX90632_RAM_3(2), &read_tmp);
 if (ret < 0)
  return ret;
 *ambient_old_raw = (s16)read_tmp;

 return ret;
}

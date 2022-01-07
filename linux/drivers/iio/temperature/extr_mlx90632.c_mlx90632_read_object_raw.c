
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;
typedef int s16 ;


 int MLX90632_RAM_1 (int ) ;
 int MLX90632_RAM_2 (int ) ;
 int mlx90632_channel_new_select (int,int *,int *) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int mlx90632_read_object_raw(struct regmap *regmap,
        int perform_measurement_ret,
        s16 *object_new_raw, s16 *object_old_raw)
{
 int ret;
 unsigned int read_tmp;
 s16 read;
 u8 channel = 0;
 u8 channel_old = 0;

 ret = mlx90632_channel_new_select(perform_measurement_ret, &channel,
       &channel_old);
 if (ret != 0)
  return ret;

 ret = regmap_read(regmap, MLX90632_RAM_2(channel), &read_tmp);
 if (ret < 0)
  return ret;

 read = (s16)read_tmp;

 ret = regmap_read(regmap, MLX90632_RAM_1(channel), &read_tmp);
 if (ret < 0)
  return ret;
 *object_new_raw = (read + (s16)read_tmp) / 2;

 ret = regmap_read(regmap, MLX90632_RAM_2(channel_old), &read_tmp);
 if (ret < 0)
  return ret;
 read = (s16)read_tmp;

 ret = regmap_read(regmap, MLX90632_RAM_1(channel_old), &read_tmp);
 if (ret < 0)
  return ret;
 *object_old_raw = (read + (s16)read_tmp) / 2;

 return ret;
}

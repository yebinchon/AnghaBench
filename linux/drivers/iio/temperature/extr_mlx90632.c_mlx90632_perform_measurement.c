
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx90632_data {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 int MLX90632_REG_STATUS ;
 unsigned int MLX90632_STAT_CYCLE_POS ;
 unsigned int MLX90632_STAT_DATA_RDY ;
 int dev_err (int *,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mlx90632_perform_measurement(struct mlx90632_data *data)
{
 int ret, tries = 100;
 unsigned int reg_status;

 ret = regmap_update_bits(data->regmap, MLX90632_REG_STATUS,
     MLX90632_STAT_DATA_RDY, 0);
 if (ret < 0)
  return ret;

 while (tries-- > 0) {
  ret = regmap_read(data->regmap, MLX90632_REG_STATUS,
      &reg_status);
  if (ret < 0)
   return ret;
  if (reg_status & MLX90632_STAT_DATA_RDY)
   break;
  usleep_range(10000, 11000);
 }

 if (tries < 0) {
  dev_err(&data->client->dev, "data not ready");
  return -ETIMEDOUT;
 }

 return (reg_status & MLX90632_STAT_CYCLE_POS) >> 2;
}

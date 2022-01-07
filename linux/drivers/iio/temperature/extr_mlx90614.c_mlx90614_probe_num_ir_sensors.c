
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
typedef int s32 ;


 int MLX90614_CONFIG ;
 int MLX90614_CONFIG_DUAL_MASK ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;

__attribute__((used)) static int mlx90614_probe_num_ir_sensors(struct i2c_client *client)
{
 s32 ret;

 ret = i2c_smbus_read_word_data(client, MLX90614_CONFIG);

 if (ret < 0)
  return ret;

 return (ret & MLX90614_CONFIG_DUAL_MASK) ? 1 : 0;
}

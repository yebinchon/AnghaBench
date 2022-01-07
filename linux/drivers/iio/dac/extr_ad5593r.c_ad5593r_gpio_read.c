
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dummy; } ;
struct ad5592r_state {int dev; } ;
typedef scalar_t__ s32 ;


 int AD5593R_MODE_GPIO_READBACK ;
 scalar_t__ i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int ad5593r_gpio_read(struct ad5592r_state *st, u8 *value)
{
 struct i2c_client *i2c = to_i2c_client(st->dev);
 s32 val;

 val = i2c_smbus_read_word_swapped(i2c, AD5593R_MODE_GPIO_READBACK);
 if (val < 0)
  return (int) val;

 *value = (u8) val;

 return 0;
}

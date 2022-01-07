
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;
struct ad5592r_state {int dev; } ;


 unsigned int AD5593R_MODE_DAC_WRITE ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,unsigned int,int ) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int ad5593r_write_dac(struct ad5592r_state *st, unsigned chan, u16 value)
{
 struct i2c_client *i2c = to_i2c_client(st->dev);

 return i2c_smbus_write_word_swapped(i2c,
   AD5593R_MODE_DAC_WRITE | chan, value);
}

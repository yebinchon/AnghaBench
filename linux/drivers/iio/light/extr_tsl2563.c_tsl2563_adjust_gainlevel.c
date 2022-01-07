
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct tsl2563_chip {TYPE_1__* gainlevel; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {scalar_t__ max; scalar_t__ min; int gaintime; } ;


 int TSL2563_CMD ;
 int TSL2563_REG_TIMING ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int ) ;
 int tsl2563_wait_adc (struct tsl2563_chip*) ;

__attribute__((used)) static int tsl2563_adjust_gainlevel(struct tsl2563_chip *chip, u16 adc)
{
 struct i2c_client *client = chip->client;

 if (adc > chip->gainlevel->max || adc < chip->gainlevel->min) {

  (adc > chip->gainlevel->max) ?
   chip->gainlevel++ : chip->gainlevel--;

  i2c_smbus_write_byte_data(client,
       TSL2563_CMD | TSL2563_REG_TIMING,
       chip->gainlevel->gaintime);

  tsl2563_wait_adc(chip);
  tsl2563_wait_adc(chip);

  return 1;
 } else
  return 0;
}

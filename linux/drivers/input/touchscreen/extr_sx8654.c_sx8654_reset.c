
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sx8654 {TYPE_1__* client; scalar_t__ gpio_reset; } ;
struct TYPE_2__ {int dev; } ;


 int I2C_REG_SOFTRESET ;
 int SOFTRESET_VALUE ;
 int dev_dbg (int *,char*) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int sx8654_reset(struct sx8654 *ts)
{
 int err;

 if (ts->gpio_reset) {
  gpiod_set_value_cansleep(ts->gpio_reset, 1);
  udelay(2);
  gpiod_set_value_cansleep(ts->gpio_reset, 0);
 } else {
  dev_dbg(&ts->client->dev, "NRST unavailable, try softreset\n");
  err = i2c_smbus_write_byte_data(ts->client, I2C_REG_SOFTRESET,
      SOFTRESET_VALUE);
  if (err)
   return err;
 }

 return 0;
}

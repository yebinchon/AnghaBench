
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
typedef enum mma9551_gpio_pin { ____Placeholder_mma9551_gpio_pin } mma9551_gpio_pin ;


 int EINVAL ;
 int MMA9551_APPID_GPIO ;
 int MMA9551_GPIO_POL_LSB ;
 int MMA9551_GPIO_POL_MSB ;
 int dev_err (int *,char*) ;




 int mma9551_gpio_max ;
 int mma9551_update_config_bits (struct i2c_client*,int ,int,int,int) ;
 int mma9551_write_config_byte (struct i2c_client*,int ,int,int) ;

int mma9551_gpio_config(struct i2c_client *client, enum mma9551_gpio_pin pin,
   u8 app_id, u8 bitnum, int polarity)
{
 u8 reg, pol_mask, pol_val;
 int ret;

 if (pin > mma9551_gpio_max) {
  dev_err(&client->dev, "bad GPIO pin\n");
  return -EINVAL;
 }





 reg = pin * 2;

 ret = mma9551_write_config_byte(client, MMA9551_APPID_GPIO,
     reg, app_id);
 if (ret < 0) {
  dev_err(&client->dev, "error setting GPIO app_id\n");
  return ret;
 }

 ret = mma9551_write_config_byte(client, MMA9551_APPID_GPIO,
     reg + 1, bitnum);
 if (ret < 0) {
  dev_err(&client->dev, "error setting GPIO bit number\n");
  return ret;
 }

 switch (pin) {
 case 131:
  reg = MMA9551_GPIO_POL_LSB;
  pol_mask = 1 << 6;
  break;
 case 130:
  reg = MMA9551_GPIO_POL_LSB;
  pol_mask = 1 << 7;
  break;
 case 129:
  reg = MMA9551_GPIO_POL_MSB;
  pol_mask = 1 << 0;
  break;
 case 128:
  reg = MMA9551_GPIO_POL_MSB;
  pol_mask = 1 << 1;
  break;
 }
 pol_val = polarity ? pol_mask : 0;

 ret = mma9551_update_config_bits(client, MMA9551_APPID_GPIO, reg,
      pol_mask, pol_val);
 if (ret < 0)
  dev_err(&client->dev, "error setting GPIO polarity\n");

 return ret;
}

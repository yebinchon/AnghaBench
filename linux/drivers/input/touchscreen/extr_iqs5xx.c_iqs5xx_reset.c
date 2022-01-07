
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iqs5xx_private {int reset_gpio; } ;
struct i2c_client {int dummy; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 struct iqs5xx_private* i2c_get_clientdata (struct i2c_client*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void iqs5xx_reset(struct i2c_client *client)
{
 struct iqs5xx_private *iqs5xx = i2c_get_clientdata(client);

 gpiod_set_value_cansleep(iqs5xx->reset_gpio, 1);
 usleep_range(200, 300);

 gpiod_set_value_cansleep(iqs5xx->reset_gpio, 0);
}

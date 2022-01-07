
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tca6507_platform_data {int dummy; } ;
struct i2c_client {int dummy; } ;


 int ENODEV ;
 struct tca6507_platform_data* ERR_PTR (int ) ;

__attribute__((used)) static struct tca6507_platform_data *
tca6507_led_dt_init(struct i2c_client *client)
{
 return ERR_PTR(-ENODEV);
}

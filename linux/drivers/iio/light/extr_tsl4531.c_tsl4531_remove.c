
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (int ) ;
 int tsl4531_powerdown (struct i2c_client*) ;

__attribute__((used)) static int tsl4531_remove(struct i2c_client *client)
{
 iio_device_unregister(i2c_get_clientdata(client));
 tsl4531_powerdown(client);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct adxl34x {int dummy; } ;


 int adxl34x_remove (struct adxl34x*) ;
 struct adxl34x* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int adxl34x_i2c_remove(struct i2c_client *client)
{
 struct adxl34x *ac = i2c_get_clientdata(client);

 return adxl34x_remove(ac);
}

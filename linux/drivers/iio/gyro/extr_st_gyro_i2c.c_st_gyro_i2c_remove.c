
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_get_clientdata (struct i2c_client*) ;
 int st_gyro_common_remove (int ) ;

__attribute__((used)) static int st_gyro_i2c_remove(struct i2c_client *client)
{
 st_gyro_common_remove(i2c_get_clientdata(client));

 return 0;
}

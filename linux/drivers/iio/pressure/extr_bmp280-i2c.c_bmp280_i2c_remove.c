
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int bmp280_common_remove (int *) ;

__attribute__((used)) static int bmp280_i2c_remove(struct i2c_client *client)
{
 return bmp280_common_remove(&client->dev);
}

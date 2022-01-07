
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int put_device (int *) ;

void i2c_release_client(struct i2c_client *client)
{
 if (client)
  put_device(&client->dev);
}

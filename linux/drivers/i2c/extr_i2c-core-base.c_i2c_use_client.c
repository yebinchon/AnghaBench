
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 scalar_t__ get_device (int *) ;

struct i2c_client *i2c_use_client(struct i2c_client *client)
{
 if (client && get_device(&client->dev))
  return client;
 return ((void*)0);
}

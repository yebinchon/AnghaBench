
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int __max730x_remove (int *) ;

__attribute__((used)) static int max7300_remove(struct i2c_client *client)
{
 return __max730x_remove(&client->dev);
}

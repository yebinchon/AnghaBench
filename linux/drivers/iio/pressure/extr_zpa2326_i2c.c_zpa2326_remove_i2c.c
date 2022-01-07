
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int zpa2326_remove (int *) ;

__attribute__((used)) static int zpa2326_remove_i2c(struct i2c_client *client)
{
 zpa2326_remove(&client->dev);

 return 0;
}

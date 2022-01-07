
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int bmc150_magn_remove (int *) ;

__attribute__((used)) static int bmc150_magn_i2c_remove(struct i2c_client *client)
{
 return bmc150_magn_remove(&client->dev);
}

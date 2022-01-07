
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int bmg160_core_remove (int *) ;

__attribute__((used)) static int bmg160_i2c_remove(struct i2c_client *client)
{
 bmg160_core_remove(&client->dev);

 return 0;
}

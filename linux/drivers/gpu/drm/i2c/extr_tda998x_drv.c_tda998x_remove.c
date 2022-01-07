
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int component_del (int *,int *) ;
 int tda998x_destroy (int *) ;
 int tda998x_ops ;

__attribute__((used)) static int tda998x_remove(struct i2c_client *client)
{
 component_del(&client->dev, &tda998x_ops);
 tda998x_destroy(&client->dev);
 return 0;
}

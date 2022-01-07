
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int irq; int dev; } ;


 int adt7x10_remove (int *,int ) ;

__attribute__((used)) static int adt7410_i2c_remove(struct i2c_client *client)
{
 return adt7x10_remove(&client->dev, client->irq);
}

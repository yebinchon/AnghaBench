
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int fxas21002c_core_remove (int *) ;

__attribute__((used)) static int fxas21002c_i2c_remove(struct i2c_client *i2c)
{
 fxas21002c_core_remove(&i2c->dev);

 return 0;
}

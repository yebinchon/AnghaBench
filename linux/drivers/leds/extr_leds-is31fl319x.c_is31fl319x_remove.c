
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct is31fl319x_chip {int lock; } ;
struct i2c_client {int dummy; } ;


 struct is31fl319x_chip* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static int is31fl319x_remove(struct i2c_client *client)
{
 struct is31fl319x_chip *is31 = i2c_get_clientdata(client);

 mutex_destroy(&is31->lock);
 return 0;
}

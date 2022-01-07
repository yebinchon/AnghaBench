
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct an30259a {int mutex; } ;


 struct an30259a* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static int an30259a_remove(struct i2c_client *client)
{
 struct an30259a *chip = i2c_get_clientdata(client);

 mutex_destroy(&chip->mutex);

 return 0;
}

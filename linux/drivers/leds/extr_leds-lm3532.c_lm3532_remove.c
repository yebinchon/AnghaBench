
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3532_data {scalar_t__ enable_gpio; int lock; } ;
struct i2c_client {int dummy; } ;


 int gpiod_direction_output (scalar_t__,int ) ;
 struct lm3532_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static int lm3532_remove(struct i2c_client *client)
{
 struct lm3532_data *drvdata = i2c_get_clientdata(client);

 mutex_destroy(&drvdata->lock);

 if (drvdata->enable_gpio)
  gpiod_direction_output(drvdata->enable_gpio, 0);

 return 0;
}

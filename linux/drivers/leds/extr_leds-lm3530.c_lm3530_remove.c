
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3530_data {int led_dev; } ;
struct i2c_client {int dummy; } ;


 struct lm3530_data* i2c_get_clientdata (struct i2c_client*) ;
 int led_classdev_unregister (int *) ;
 int lm3530_led_disable (struct lm3530_data*) ;

__attribute__((used)) static int lm3530_remove(struct i2c_client *client)
{
 struct lm3530_data *drvdata = i2c_get_clientdata(client);

 lm3530_led_disable(drvdata);
 led_classdev_unregister(&drvdata->led_dev);
 return 0;
}

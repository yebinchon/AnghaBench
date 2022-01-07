
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina3221_data {int lock; int pm_dev; } ;
struct i2c_client {int dev; } ;


 int INA3221_NUM_CHANNELS ;
 struct ina3221_data* dev_get_drvdata (int *) ;
 int mutex_destroy (int *) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int pm_runtime_set_suspended (int ) ;

__attribute__((used)) static int ina3221_remove(struct i2c_client *client)
{
 struct ina3221_data *ina = dev_get_drvdata(&client->dev);
 int i;

 pm_runtime_disable(ina->pm_dev);
 pm_runtime_set_suspended(ina->pm_dev);


 for (i = 0; i < INA3221_NUM_CHANNELS; i++)
  pm_runtime_put_noidle(ina->pm_dev);

 mutex_destroy(&ina->lock);

 return 0;
}

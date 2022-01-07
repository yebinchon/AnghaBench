
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int irq; struct device dev; } ;
struct cyapa {int state_sync_lock; TYPE_1__* ops; scalar_t__ operational; struct i2c_client* client; } ;
struct TYPE_2__ {int (* set_power_mode ) (struct cyapa*,int ,int ,int ) ;} ;


 int CYAPA_PM_DEACTIVE ;
 int PWR_MODE_OFF ;
 int disable_irq (int ) ;
 struct cyapa* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_disable (struct device*) ;
 scalar_t__ pm_runtime_enabled (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;
 int stub1 (struct cyapa*,int ,int ,int ) ;

__attribute__((used)) static void cyapa_close(struct input_dev *input)
{
 struct cyapa *cyapa = input_get_drvdata(input);
 struct i2c_client *client = cyapa->client;
 struct device *dev = &cyapa->client->dev;

 mutex_lock(&cyapa->state_sync_lock);

 disable_irq(client->irq);
 if (pm_runtime_enabled(dev))
  pm_runtime_disable(dev);
 pm_runtime_set_suspended(dev);

 if (cyapa->operational)
  cyapa->ops->set_power_mode(cyapa,
    PWR_MODE_OFF, 0, CYAPA_PM_DEACTIVE);

 mutex_unlock(&cyapa->state_sync_lock);
}

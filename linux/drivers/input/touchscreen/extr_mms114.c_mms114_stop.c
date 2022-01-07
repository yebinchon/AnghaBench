
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mms114_data {int core_reg; int io_reg; struct i2c_client* client; } ;
struct i2c_client {int dev; int irq; } ;


 int dev_warn (int *,char*,int) ;
 int disable_irq (int ) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void mms114_stop(struct mms114_data *data)
{
 struct i2c_client *client = data->client;
 int error;

 disable_irq(client->irq);

 error = regulator_disable(data->io_reg);
 if (error)
  dev_warn(&client->dev, "Failed to disable vdd: %d\n", error);

 error = regulator_disable(data->core_reg);
 if (error)
  dev_warn(&client->dev, "Failed to disable avdd: %d\n", error);
}

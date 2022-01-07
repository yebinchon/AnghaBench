
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mms114_data {int core_reg; int io_reg; struct i2c_client* client; } ;
struct i2c_client {int irq; int dev; } ;


 int MMS114_POWERON_DELAY ;
 int dev_err (int *,char*,int) ;
 int enable_irq (int ) ;
 int mms114_setup_regs (struct mms114_data*) ;
 int msleep (int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int mms114_start(struct mms114_data *data)
{
 struct i2c_client *client = data->client;
 int error;

 error = regulator_enable(data->core_reg);
 if (error) {
  dev_err(&client->dev, "Failed to enable avdd: %d\n", error);
  return error;
 }

 error = regulator_enable(data->io_reg);
 if (error) {
  dev_err(&client->dev, "Failed to enable vdd: %d\n", error);
  regulator_disable(data->core_reg);
  return error;
 }

 msleep(MMS114_POWERON_DELAY);

 error = mms114_setup_regs(data);
 if (error < 0) {
  regulator_disable(data->io_reg);
  regulator_disable(data->core_reg);
  return error;
 }

 enable_irq(client->irq);

 return 0;
}

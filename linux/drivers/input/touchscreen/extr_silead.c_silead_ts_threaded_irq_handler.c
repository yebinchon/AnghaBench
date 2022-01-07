
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct silead_ts_data {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int silead_ts_read_data (struct i2c_client*) ;

__attribute__((used)) static irqreturn_t silead_ts_threaded_irq_handler(int irq, void *id)
{
 struct silead_ts_data *data = id;
 struct i2c_client *client = data->client;

 silead_ts_read_data(client);

 return IRQ_HANDLED;
}

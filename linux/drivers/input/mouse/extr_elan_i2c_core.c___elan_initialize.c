
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct elan_tp_data {TYPE_1__* ops; int mode; struct i2c_client* client; } ;
struct TYPE_2__ {int (* initialize ) (struct i2c_client*) ;int (* sleep_control ) (struct i2c_client*,int) ;int (* set_mode ) (struct i2c_client*,int ) ;} ;


 int ETP_ENABLE_ABS ;
 int dev_err (int *,char*,int) ;
 scalar_t__ elan_check_ASUS_special_fw (struct elan_tp_data*) ;
 int elan_query_product (struct elan_tp_data*) ;
 int msleep (int) ;
 int stub1 (struct i2c_client*) ;
 int stub2 (struct i2c_client*,int) ;
 int stub3 (struct i2c_client*,int ) ;
 int stub4 (struct i2c_client*,int) ;

__attribute__((used)) static int __elan_initialize(struct elan_tp_data *data)
{
 struct i2c_client *client = data->client;
 bool woken_up = 0;
 int error;

 error = data->ops->initialize(client);
 if (error) {
  dev_err(&client->dev, "device initialize failed: %d\n", error);
  return error;
 }

 error = elan_query_product(data);
 if (error)
  return error;






 if (elan_check_ASUS_special_fw(data)) {
  error = data->ops->sleep_control(client, 0);
  if (error) {
   dev_err(&client->dev,
    "failed to wake device up: %d\n", error);
   return error;
  }

  msleep(200);
  woken_up = 1;
 }

 data->mode |= ETP_ENABLE_ABS;
 error = data->ops->set_mode(client, data->mode);
 if (error) {
  dev_err(&client->dev,
   "failed to switch to absolute mode: %d\n", error);
  return error;
 }

 if (!woken_up) {
  error = data->ops->sleep_control(client, 0);
  if (error) {
   dev_err(&client->dev,
    "failed to wake device up: %d\n", error);
   return error;
  }
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxt_data {int in_bootloader; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int GFP_KERNEL ;
 int MXT_CFG_NAME ;
 int MXT_FW_RESET_TIME ;
 int THIS_MODULE ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int msleep (int ) ;
 int mxt_acquire_irq (struct mxt_data*) ;
 int mxt_config_cb ;
 int mxt_probe_bootloader (struct mxt_data*,int) ;
 int mxt_read_info_block (struct mxt_data*) ;
 int mxt_send_bootloader_cmd (struct mxt_data*,int) ;
 int request_firmware_nowait (int ,int,int ,int *,int ,struct mxt_data*,int ) ;

__attribute__((used)) static int mxt_initialize(struct mxt_data *data)
{
 struct i2c_client *client = data->client;
 int recovery_attempts = 0;
 int error;

 while (1) {
  error = mxt_read_info_block(data);
  if (!error)
   break;


  error = mxt_probe_bootloader(data, 0);
  if (error) {
   dev_info(&client->dev, "Trying alternate bootloader address\n");
   error = mxt_probe_bootloader(data, 1);
   if (error) {

    return error;
   }
  }


  if (++recovery_attempts > 1) {
   dev_err(&client->dev, "Could not recover from bootloader mode\n");




   data->in_bootloader = 1;
   return 0;
  }


  mxt_send_bootloader_cmd(data, 0);
  msleep(MXT_FW_RESET_TIME);
 }

 error = mxt_acquire_irq(data);
 if (error)
  return error;

 error = request_firmware_nowait(THIS_MODULE, 1, MXT_CFG_NAME,
     &client->dev, GFP_KERNEL, data,
     mxt_config_cb);
 if (error) {
  dev_err(&client->dev, "Failed to invoke firmware loader: %d\n",
   error);
  return error;
 }

 return 0;
}

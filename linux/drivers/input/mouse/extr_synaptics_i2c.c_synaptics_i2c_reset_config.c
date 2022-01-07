
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int DEV_COMMAND_REG ;
 int RESET_COMMAND ;
 scalar_t__ SOFT_RESET_DELAY_US ;
 int dev_err (int *,char*) ;
 int synaptics_i2c_config (struct i2c_client*) ;
 int synaptics_i2c_reg_set (struct i2c_client*,int ,int ) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static int synaptics_i2c_reset_config(struct i2c_client *client)
{
 int ret;


 ret = synaptics_i2c_reg_set(client, DEV_COMMAND_REG, RESET_COMMAND);
 if (ret) {
  dev_err(&client->dev, "Unable to reset device\n");
 } else {
  usleep_range(SOFT_RESET_DELAY_US, SOFT_RESET_DELAY_US + 100);
  ret = synaptics_i2c_config(client);
  if (ret)
   dev_err(&client->dev, "Unable to config device\n");
 }

 return ret;
}

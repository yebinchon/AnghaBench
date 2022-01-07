
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int VND_CMD_RESET ;
 int WDT_FW_RESET_TIME ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int msleep (int ) ;
 int wdt87xx_send_command (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int wdt87xx_sw_reset(struct i2c_client *client)
{
 int error;

 dev_dbg(&client->dev, "resetting device now\n");

 error = wdt87xx_send_command(client, VND_CMD_RESET, 0);
 if (error) {
  dev_err(&client->dev, "reset failed\n");
  return error;
 }


 msleep(WDT_FW_RESET_TIME);

 return 0;
}

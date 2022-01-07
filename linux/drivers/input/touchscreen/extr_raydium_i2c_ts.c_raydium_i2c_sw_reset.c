
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
typedef int soft_rst_cmd ;


 int RM_RESET_DELAY_MSEC ;
 int RM_RESET_MSG_ADDR ;
 int dev_err (int *,char*,int) ;
 int msleep (int ) ;
 int raydium_i2c_send_message (struct i2c_client*,int ,int const*,int) ;

__attribute__((used)) static int raydium_i2c_sw_reset(struct i2c_client *client)
{
 const u8 soft_rst_cmd = 0x01;
 int error;

 error = raydium_i2c_send_message(client, RM_RESET_MSG_ADDR,
      &soft_rst_cmd, sizeof(soft_rst_cmd));
 if (error) {
  dev_err(&client->dev, "software reset failed: %d\n", error);
  return error;
 }

 msleep(RM_RESET_DELAY_MSEC);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
typedef enum raydium_bl_ack { ____Placeholder_raydium_bl_ack } raydium_bl_ack ;


 int RM_CMD_BOOT_ACK ;
 int RM_CMD_BOOT_WRT ;
 int dev_err (int *,char*,int) ;
 int raydium_i2c_bl_chk_state (struct i2c_client*,int) ;
 int raydium_i2c_send (struct i2c_client*,int ,void const*,size_t) ;

__attribute__((used)) static int raydium_i2c_write_object(struct i2c_client *client,
        const void *data, size_t len,
        enum raydium_bl_ack state)
{
 int error;

 error = raydium_i2c_send(client, RM_CMD_BOOT_WRT, data, len);
 if (error) {
  dev_err(&client->dev, "WRT obj command failed: %d\n",
   error);
  return error;
 }

 error = raydium_i2c_send(client, RM_CMD_BOOT_ACK, ((void*)0), 0);
 if (error) {
  dev_err(&client->dev, "Ack obj command failed: %d\n", error);
  return error;
 }

 error = raydium_i2c_bl_chk_state(client, state);
 if (error) {
  dev_err(&client->dev, "BL check state failed: %d\n", error);
  return error;
 }
 return 0;
}

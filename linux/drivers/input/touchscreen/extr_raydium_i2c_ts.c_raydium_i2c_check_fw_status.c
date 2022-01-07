
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u8 ;
struct raydium_data {int boot_mode; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
typedef int buf ;


 int RAYDIUM_TS_BLDR ;
 int RAYDIUM_TS_MAIN ;
 int RM_CMD_BOOT_READ ;
 int raydium_i2c_read (struct i2c_client*,int ,scalar_t__ const*,int) ;

__attribute__((used)) static int raydium_i2c_check_fw_status(struct raydium_data *ts)
{
 struct i2c_client *client = ts->client;
 static const u8 bl_ack = 0x62;
 static const u8 main_ack = 0x66;
 u8 buf[4];
 int error;

 error = raydium_i2c_read(client, RM_CMD_BOOT_READ, buf, sizeof(buf));
 if (!error) {
  if (buf[0] == bl_ack)
   ts->boot_mode = RAYDIUM_TS_BLDR;
  else if (buf[0] == main_ack)
   ts->boot_mode = RAYDIUM_TS_MAIN;
  return 0;
 }

 return error;
}

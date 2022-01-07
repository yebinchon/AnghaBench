
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
typedef int cal_cmd ;


 int RAYDIUM_ACK_NULL ;
 int RM_BOOT_DELAY_MS ;
 int dev_err (int *,char*,int) ;
 int msleep (int ) ;
 int raydium_i2c_write_object (struct i2c_client*,int const*,int,int ) ;

__attribute__((used)) static int raydium_i2c_enter_bl(struct i2c_client *client)
{
 static const u8 cal_cmd[] = { 0x00, 0x01, 0x52 };
 int error;

 error = raydium_i2c_write_object(client, cal_cmd, sizeof(cal_cmd),
      RAYDIUM_ACK_NULL);
 if (error) {
  dev_err(&client->dev, "enter bl command failed: %d\n", error);
  return error;
 }

 msleep(RM_BOOT_DELAY_MS);
 return 0;
}

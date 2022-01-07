
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_10; int member_9; int member_8; int member_0; } ;
typedef TYPE_1__ u8 ;
struct i2c_client {int dev; } ;
typedef int cmd ;


 int RAYDIUM_ACK_NULL ;
 int dev_err (int *,char*,int,int) ;
 int raydium_i2c_write_object (struct i2c_client*,TYPE_1__ const*,int,int ) ;

__attribute__((used)) static bool raydium_i2c_fw_trigger(struct i2c_client *client)
{
 static const u8 cmd[5][11] = {
  { 0, 0x09, 0x71, 0x0C, 0x09, 0x00, 0x50, 0xD7, 0, 0, 0 },
  { 0, 0x09, 0x71, 0x04, 0x09, 0x00, 0x50, 0xA5, 0, 0, 0 },
  { 0, 0x09, 0x71, 0x04, 0x09, 0x00, 0x50, 0x00, 0, 0, 0 },
  { 0, 0x09, 0x71, 0x04, 0x09, 0x00, 0x50, 0xA5, 0, 0, 0 },
  { 0, 0x09, 0x71, 0x0C, 0x09, 0x00, 0x50, 0x00, 0, 0, 0 },
 };
 int i;
 int error;

 for (i = 0; i < 5; i++) {
  error = raydium_i2c_write_object(client, cmd[i], sizeof(cmd[i]),
       RAYDIUM_ACK_NULL);
  if (error) {
   dev_err(&client->dev,
    "fw trigger failed at step %d: %d\n",
    i, error);
   return error;
  }
 }

 return 0;
}

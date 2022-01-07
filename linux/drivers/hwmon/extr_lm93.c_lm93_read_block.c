
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int len; int cmd; } ;


 int MAX_RETRIES ;
 int dev_warn (int *,char*,int ) ;
 int i2c_smbus_read_block_data (struct i2c_client*,int ,int ) ;
 int lm93_block_buffer ;
 TYPE_1__* lm93_block_read_cmds ;
 int mdelay (int) ;
 int memcpy (size_t*,int ,int) ;

__attribute__((used)) static void lm93_read_block(struct i2c_client *client, u8 fbn, u8 *values)
{
 int i, result = 0;

 for (i = 1; i <= MAX_RETRIES; i++) {
  result = i2c_smbus_read_block_data(client,
   lm93_block_read_cmds[fbn].cmd, lm93_block_buffer);

  if (result == lm93_block_read_cmds[fbn].len) {
   break;
  } else {
   dev_warn(&client->dev,
     "lm93: block read data failed, command 0x%02x.\n",
     lm93_block_read_cmds[fbn].cmd);
   mdelay(i + 3);
  }
 }

 if (result == lm93_block_read_cmds[fbn].len) {
  memcpy(values, lm93_block_buffer,
         lm93_block_read_cmds[fbn].len);
 } else {

 }
}

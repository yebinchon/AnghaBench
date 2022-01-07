
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int nr_ret; } ;


 TYPE_1__* blinkm_cmds ;
 int i2c_smbus_read_byte (struct i2c_client*) ;

__attribute__((used)) static int blinkm_read(struct i2c_client *client, int cmd, u8 *arg)
{
 int result;
 int i;
 int retlen = blinkm_cmds[cmd].nr_ret;
 for (i = 0; i < retlen; i++) {

  result = i2c_smbus_read_byte(client);
  if (result < 0)
   return result;
  arg[i] = result;
 }

 return 0;
}

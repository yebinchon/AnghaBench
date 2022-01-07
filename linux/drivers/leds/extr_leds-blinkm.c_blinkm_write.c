
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int nr_args; int cmdbyte; } ;


 TYPE_1__* blinkm_cmds ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;

__attribute__((used)) static int blinkm_write(struct i2c_client *client, int cmd, u8 *arg)
{
 int result;
 int i;
 int arglen = blinkm_cmds[cmd].nr_args;

 result = i2c_smbus_write_byte(client, blinkm_cmds[cmd].cmdbyte);
 if (result < 0)
  return result;

 if (arglen == 0)
  return 0;

 for (i = 0; i < arglen; i++) {

  result = i2c_smbus_write_byte(client, arg[i]);
  if (result < 0)
   return result;
 }
 return 0;
}

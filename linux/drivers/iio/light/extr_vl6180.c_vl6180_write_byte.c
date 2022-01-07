
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int len; int* buf; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
typedef int buf ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int dev_err (int *,char*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int ) ;

__attribute__((used)) static int vl6180_write_byte(struct i2c_client *client, u16 cmd, u8 val)
{
 u8 buf[3];
 struct i2c_msg msgs[1] = {
  { .addr = client->addr, .len = sizeof(buf), .buf = (u8 *) &buf } };
 int ret;

 buf[0] = cmd >> 8;
 buf[1] = cmd & 0xff;
 buf[2] = val;

 ret = i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));
 if (ret < 0) {
  dev_err(&client->dev, "failed writing register 0x%04x\n", cmd);
  return ret;
 }

 return 0;
}

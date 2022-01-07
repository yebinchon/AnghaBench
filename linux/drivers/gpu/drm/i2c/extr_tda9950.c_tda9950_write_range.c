
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
typedef int buf ;


 int CEC_MAX_MSG_SIZE ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int dev_dbg (int *,char*,int ,int,int *) ;
 int dev_err (int *,char*,int,int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int tda9950_write_range(struct i2c_client *client, u8 addr, u8 *p, int cnt)
{
 struct i2c_msg msg;
 u8 buf[CEC_MAX_MSG_SIZE + 3];
 int ret;

 if (WARN_ON(cnt > sizeof(buf) - 1))
  return -EINVAL;

 buf[0] = addr;
 memcpy(buf + 1, p, cnt);

 msg.addr = client->addr;
 msg.flags = 0;
 msg.len = cnt + 1;
 msg.buf = buf;

 dev_dbg(&client->dev, "wr 0x%02x: %*ph\n", addr, cnt, p);

 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret < 0)
  dev_err(&client->dev, "Error %d writing to cec:0x%x\n", ret, addr);
 return ret < 0 ? ret : 0;
}

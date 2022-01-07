
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 scalar_t__ I2C_M_RD ;
 int dev_dbg (int *,char*,int ,int,int *) ;
 int dev_err (int *,char*,int,int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int tda9950_read_range(struct i2c_client *client, u8 addr, u8 *p, int cnt)
{
 struct i2c_msg msg[2];
 int ret;

 msg[0].addr = client->addr;
 msg[0].flags = 0;
 msg[0].len = 1;
 msg[0].buf = &addr;
 msg[1].addr = client->addr;
 msg[1].flags = I2C_M_RD;
 msg[1].len = cnt;
 msg[1].buf = p;

 ret = i2c_transfer(client->adapter, msg, 2);
 if (ret < 0)
  dev_err(&client->dev, "Error %d reading from cec:0x%x\n", ret, addr);

 dev_dbg(&client->dev, "rd 0x%02x: %*ph\n", addr, cnt, p);

 return ret;
}

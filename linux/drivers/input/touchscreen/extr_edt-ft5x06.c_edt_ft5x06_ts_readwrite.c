
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u16 ;
struct i2c_msg {int * buf; void* len; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int EIO ;
 scalar_t__ I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int edt_ft5x06_ts_readwrite(struct i2c_client *client,
       u16 wr_len, u8 *wr_buf,
       u16 rd_len, u8 *rd_buf)
{
 struct i2c_msg wrmsg[2];
 int i = 0;
 int ret;

 if (wr_len) {
  wrmsg[i].addr = client->addr;
  wrmsg[i].flags = 0;
  wrmsg[i].len = wr_len;
  wrmsg[i].buf = wr_buf;
  i++;
 }
 if (rd_len) {
  wrmsg[i].addr = client->addr;
  wrmsg[i].flags = I2C_M_RD;
  wrmsg[i].len = rd_len;
  wrmsg[i].buf = rd_buf;
  i++;
 }

 ret = i2c_transfer(client->adapter, wrmsg, i);
 if (ret < 0)
  return ret;
 if (ret != i)
  return -EIO;

 return 0;
}

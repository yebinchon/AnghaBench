
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stmfts_data {TYPE_1__* client; int * data; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct TYPE_2__ {int adapter; int addr; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 int I2C_M_RD ;
 int STMFTS_DATA_MAX_SIZE ;
 int STMFTS_READ_ALL_EVENT ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int stmfts_read_events(struct stmfts_data *sdata)
{
 u8 cmd = STMFTS_READ_ALL_EVENT;
 struct i2c_msg msgs[2] = {
  {
   .addr = sdata->client->addr,
   .len = 1,
   .buf = &cmd,
  },
  {
   .addr = sdata->client->addr,
   .flags = I2C_M_RD,
   .len = STMFTS_DATA_MAX_SIZE,
   .buf = sdata->data,
  },
 };
 int ret;

 ret = i2c_transfer(sdata->client->adapter, msgs, ARRAY_SIZE(msgs));
 if (ret < 0)
  return ret;

 return ret == ARRAY_SIZE(msgs) ? 0 : -EIO;
}

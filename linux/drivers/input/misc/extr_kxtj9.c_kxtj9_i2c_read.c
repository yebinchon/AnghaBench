
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct kxtj9_data {TYPE_1__* client; } ;
struct i2c_msg {int flags; int len; int * buf; int addr; } ;
struct TYPE_2__ {int flags; int adapter; int addr; } ;


 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int kxtj9_i2c_read(struct kxtj9_data *tj9, u8 addr, u8 *data, int len)
{
 struct i2c_msg msgs[] = {
  {
   .addr = tj9->client->addr,
   .flags = tj9->client->flags,
   .len = 1,
   .buf = &addr,
  },
  {
   .addr = tj9->client->addr,
   .flags = tj9->client->flags | I2C_M_RD,
   .len = len,
   .buf = data,
  },
 };

 return i2c_transfer(tj9->client->adapter, msgs, 2);
}

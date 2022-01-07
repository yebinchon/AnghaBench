
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct max44009_data {TYPE_1__* client; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
typedef int loreg ;
typedef int lo ;
typedef int hireg ;
typedef int hi ;
struct TYPE_2__ {int adapter; int addr; } ;


 int EIO ;
 int I2C_M_RD ;
 int MAX44009_READ_LUX_XFER_LEN ;
 int MAX44009_REG_LUX_HI ;
 int MAX44009_REG_LUX_LO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int max44009_lux_raw (int ,int ) ;

__attribute__((used)) static int max44009_read_lux_raw(struct max44009_data *data)
{
 int ret;
 u8 hireg = MAX44009_REG_LUX_HI;
 u8 loreg = MAX44009_REG_LUX_LO;
 u8 lo = 0;
 u8 hi = 0;

 struct i2c_msg msgs[] = {
  {
   .addr = data->client->addr,
   .flags = 0,
   .len = sizeof(hireg),
   .buf = &hireg,
  },
  {
   .addr = data->client->addr,
   .flags = I2C_M_RD,
   .len = sizeof(hi),
   .buf = &hi,
  },
  {
   .addr = data->client->addr,
   .flags = 0,
   .len = sizeof(loreg),
   .buf = &loreg,
  },
  {
   .addr = data->client->addr,
   .flags = I2C_M_RD,
   .len = sizeof(lo),
   .buf = &lo,
  }
 };







 ret = i2c_transfer(data->client->adapter,
      msgs, MAX44009_READ_LUX_XFER_LEN);

 if (ret != MAX44009_READ_LUX_XFER_LEN)
  return -EIO;

 return max44009_lux_raw(hi, lo);
}

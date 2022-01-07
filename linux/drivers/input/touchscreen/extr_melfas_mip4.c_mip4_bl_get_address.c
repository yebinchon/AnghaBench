
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mip4_ts {TYPE_1__* client; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
typedef int result ;
typedef int cmd ;
struct TYPE_2__ {int dev; int adapter; int addr; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 int I2C_M_RD ;
 int MIP4_R0_BOOT ;
 int MIP4_R1_BOOT_BUF_ADDR ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int) ;
 int get_unaligned_le16 (int *) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int mip4_bl_get_address(struct mip4_ts *ts, u16 *buf_addr)
{
 u8 cmd[] = { MIP4_R0_BOOT, MIP4_R1_BOOT_BUF_ADDR };
 u8 result[sizeof(u16)];
 struct i2c_msg msg[] = {
  {
   .addr = ts->client->addr,
   .flags = 0,
   .buf = cmd,
   .len = sizeof(cmd),
  }, {
   .addr = ts->client->addr,
   .flags = I2C_M_RD,
   .buf = result,
   .len = sizeof(result),
  },
 };
 int ret;
 int error;

 ret = i2c_transfer(ts->client->adapter, msg, ARRAY_SIZE(msg));
 if (ret != ARRAY_SIZE(msg)) {
  error = ret < 0 ? ret : -EIO;
  dev_err(&ts->client->dev,
   "Failed to retrieve bootloader buffer address: %d\n",
   error);
  return error;
 }

 *buf_addr = get_unaligned_le16(result);
 dev_dbg(&ts->client->dev,
  "Bootloader buffer address %#04x\n", *buf_addr);

 return 0;
}

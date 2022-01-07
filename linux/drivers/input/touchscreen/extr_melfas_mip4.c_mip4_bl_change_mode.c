
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mip4_ts {TYPE_1__* client; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
typedef int result ;
typedef int mode_read_cmd ;
typedef int mode_chg_cmd ;
struct TYPE_2__ {int dev; int adapter; int addr; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 int I2C_M_RD ;
 int MIP4_R0_BOOT ;
 int MIP4_R1_BOOT_MODE ;
 int dev_dbg (int *,char*,int ,...) ;
 int dev_err (int *,char*,int,...) ;
 int i2c_master_send (TYPE_1__*,int *,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int msleep (int) ;

__attribute__((used)) static int mip4_bl_change_mode(struct mip4_ts *ts, u8 mode)
{
 u8 mode_chg_cmd[] = { MIP4_R0_BOOT, MIP4_R1_BOOT_MODE, mode };
 u8 mode_read_cmd[] = { MIP4_R0_BOOT, MIP4_R1_BOOT_MODE };
 u8 result;
 struct i2c_msg msg[] = {
  {
   .addr = ts->client->addr,
   .flags = 0,
   .buf = mode_read_cmd,
   .len = sizeof(mode_read_cmd),
  }, {
   .addr = ts->client->addr,
   .flags = I2C_M_RD,
   .buf = &result,
   .len = sizeof(result),
  },
 };
 int retry = 10;
 int ret;
 int error;

 do {

  ret = i2c_master_send(ts->client,
          mode_chg_cmd, sizeof(mode_chg_cmd));
  if (ret != sizeof(mode_chg_cmd)) {
   error = ret < 0 ? ret : -EIO;
   dev_err(&ts->client->dev,
    "Failed to send %d mode change: %d (%d)\n",
    mode, error, ret);
   return error;
  }

  dev_dbg(&ts->client->dev,
   "Sent mode change request (mode: %d)\n", mode);


  msleep(1000);


  ret = i2c_transfer(ts->client->adapter, msg, ARRAY_SIZE(msg));
  if (ret != ARRAY_SIZE(msg)) {
   error = ret < 0 ? ret : -EIO;
   dev_err(&ts->client->dev,
    "Failed to read device mode: %d\n", error);
   return error;
  }

  dev_dbg(&ts->client->dev,
   "Current device mode: %d, want: %d\n", result, mode);

  if (result == mode)
   return 0;

 } while (--retry);

 return -EIO;
}

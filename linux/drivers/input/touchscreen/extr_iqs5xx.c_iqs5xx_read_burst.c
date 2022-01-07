
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
typedef int reg_buf ;
typedef int __be16 ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 int I2C_M_RD ;
 int IQS5XX_NUM_RETRIES ;
 int cpu_to_be16 (int) ;
 int dev_err (int *,char*,int,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int iqs5xx_read_burst(struct i2c_client *client,
        u16 reg, void *val, u16 len)
{
 __be16 reg_buf = cpu_to_be16(reg);
 int ret, i;
 struct i2c_msg msg[] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = sizeof(reg_buf),
   .buf = (u8 *)&reg_buf,
  },
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = len,
   .buf = (u8 *)val,
  },
 };






 for (i = 0; i < IQS5XX_NUM_RETRIES; i++) {
  ret = i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
  if (ret == ARRAY_SIZE(msg))
   return 0;

  usleep_range(200, 300);
 }

 if (ret >= 0)
  ret = -EIO;

 dev_err(&client->dev, "Failed to read from address 0x%04X: %d\n",
  reg, ret);

 return ret;
}

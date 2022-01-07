
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;
typedef int __be16 ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int MMA9551_CMD_READ_CONFIG ;
 int MMA9551_MAX_MAILBOX_DATA_REGS ;
 int be16_to_cpu (int ) ;
 int dev_err (int *,char*,int) ;
 int mma9551_transfer (struct i2c_client*,int,int ,int ,int *,int ,int*,int) ;

int mma9551_read_config_words(struct i2c_client *client, u8 app_id,
         u16 reg, u8 len, u16 *buf)
{
 int ret, i;
 __be16 be_buf[MMA9551_MAX_MAILBOX_DATA_REGS / 2];

 if (len > ARRAY_SIZE(be_buf)) {
  dev_err(&client->dev, "Invalid buffer size %d\n", len);
  return -EINVAL;
 }

 ret = mma9551_transfer(client, app_id, MMA9551_CMD_READ_CONFIG,
          reg, ((void*)0), 0, (u8 *)be_buf, len * sizeof(u16));
 if (ret < 0)
  return ret;

 for (i = 0; i < len; i++)
  buf[i] = be16_to_cpu(be_buf[i]);

 return 0;
}

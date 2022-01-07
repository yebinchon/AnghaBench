
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int addr; int len; int * buf; int flags; } ;
struct i2c_client {int addr; int dev; int adapter; } ;
typedef int bl_data ;


 int EINVAL ;
 int EIO ;
 int I2C_M_RD ;
 int IQS5XX_BL_ADDR_MASK ;
 int IQS5XX_BL_BLK_LEN_MAX ;
 int IQS5XX_BL_CMD_READ ;
 int dev_err (int *,char*,int,...) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int iqs5xx_bl_cmd (struct i2c_client*,int ,int) ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static int iqs5xx_bl_verify(struct i2c_client *client,
       u16 bl_addr, u8 *pmap_data, u16 pmap_len)
{
 struct i2c_msg msg;
 int ret, i;
 u8 bl_data[IQS5XX_BL_BLK_LEN_MAX];

 if (pmap_len % IQS5XX_BL_BLK_LEN_MAX)
  return -EINVAL;

 msg.addr = client->addr ^ IQS5XX_BL_ADDR_MASK;
 msg.flags = I2C_M_RD;
 msg.len = sizeof(bl_data);
 msg.buf = bl_data;

 for (i = 0; i < pmap_len; i += IQS5XX_BL_BLK_LEN_MAX) {
  ret = iqs5xx_bl_cmd(client, IQS5XX_BL_CMD_READ, bl_addr + i);
  if (ret)
   return ret;

  ret = i2c_transfer(client->adapter, &msg, 1);
  if (ret != 1)
   goto msg_fail;

  if (memcmp(bl_data, pmap_data + i, sizeof(bl_data))) {
   dev_err(&client->dev,
    "Failed to verify block at address 0x%04X\n",
    bl_addr + i);
   return -EIO;
  }
 }

 return 0;

msg_fail:
 if (ret >= 0)
  ret = -EIO;

 dev_err(&client->dev, "Failed to read block at address 0x%04X: %d\n",
  bl_addr + i, ret);

 return ret;
}

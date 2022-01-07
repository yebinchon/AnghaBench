
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int addr; int len; int* buf; scalar_t__ flags; } ;
struct i2c_client {int addr; int dev; int adapter; } ;
typedef int bl_cmd ;
typedef int bl_addr ;


 int EINVAL ;
 int EIO ;
 scalar_t__ I2C_M_RD ;
 int IQS5XX_BL_ADDR_MASK ;




 int IQS5XX_BL_CRC_PASS ;
 scalar_t__ IQS5XX_BL_ID ;
 int dev_err (int *,char*,...) ;
 scalar_t__ get_unaligned_be16 (int*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int msleep (int) ;
 int put_unaligned_be16 (int ,int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int iqs5xx_bl_cmd(struct i2c_client *client, u8 bl_cmd, u16 bl_addr)
{
 struct i2c_msg msg;
 int ret;
 u8 mbuf[sizeof(bl_cmd) + sizeof(bl_addr)];

 msg.addr = client->addr ^ IQS5XX_BL_ADDR_MASK;
 msg.flags = 0;
 msg.len = sizeof(bl_cmd);
 msg.buf = mbuf;

 *mbuf = bl_cmd;

 switch (bl_cmd) {
 case 128:
 case 131:
 case 130:
  break;
 case 129:
  msg.len += sizeof(bl_addr);
  put_unaligned_be16(bl_addr, mbuf + sizeof(bl_cmd));
  break;
 default:
  return -EINVAL;
 }

 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret != 1)
  goto msg_fail;

 switch (bl_cmd) {
 case 128:
  msg.len = sizeof(u16);
  break;
 case 131:
  msg.len = sizeof(u8);





  msleep(50);
  break;
 case 130:
  usleep_range(10000, 10100);

 default:
  return 0;
 }

 msg.flags = I2C_M_RD;

 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret != 1)
  goto msg_fail;

 if (bl_cmd == 128 &&
     get_unaligned_be16(mbuf) != IQS5XX_BL_ID) {
  dev_err(&client->dev, "Unrecognized bootloader ID: 0x%04X\n",
   get_unaligned_be16(mbuf));
  return -EINVAL;
 }

 if (bl_cmd == 131 && *mbuf != IQS5XX_BL_CRC_PASS) {
  dev_err(&client->dev, "Bootloader CRC failed\n");
  return -EIO;
 }

 return 0;

msg_fail:
 if (ret >= 0)
  ret = -EIO;

 if (bl_cmd != 128)
  dev_err(&client->dev,
   "Unsuccessful bootloader command 0x%02X: %d\n",
   bl_cmd, ret);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int addr; int len; int * buf; scalar_t__ flags; } ;
struct i2c_client {int addr; int dev; int adapter; } ;
typedef int mbuf ;
typedef int bl_addr ;


 int EINVAL ;
 int EIO ;
 int IQS5XX_BL_ADDR_MASK ;
 int IQS5XX_BL_BLK_LEN_MAX ;
 int dev_err (int *,char*,int,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (int *,int *,int) ;
 int put_unaligned_be16 (int,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int iqs5xx_bl_write(struct i2c_client *client,
      u16 bl_addr, u8 *pmap_data, u16 pmap_len)
{
 struct i2c_msg msg;
 int ret, i;
 u8 mbuf[sizeof(bl_addr) + IQS5XX_BL_BLK_LEN_MAX];

 if (pmap_len % IQS5XX_BL_BLK_LEN_MAX)
  return -EINVAL;

 msg.addr = client->addr ^ IQS5XX_BL_ADDR_MASK;
 msg.flags = 0;
 msg.len = sizeof(mbuf);
 msg.buf = mbuf;

 for (i = 0; i < pmap_len; i += IQS5XX_BL_BLK_LEN_MAX) {
  put_unaligned_be16(bl_addr + i, mbuf);
  memcpy(mbuf + sizeof(bl_addr), pmap_data + i,
         sizeof(mbuf) - sizeof(bl_addr));

  ret = i2c_transfer(client->adapter, &msg, 1);
  if (ret != 1)
   goto msg_fail;

  usleep_range(10000, 10100);
 }

 return 0;

msg_fail:
 if (ret >= 0)
  ret = -EIO;

 dev_err(&client->dev, "Failed to write block at address 0x%04X: %d\n",
  bl_addr + i, ret);

 return ret;
}

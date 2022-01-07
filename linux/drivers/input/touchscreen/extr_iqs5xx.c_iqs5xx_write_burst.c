
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;
typedef int reg ;


 int EINVAL ;
 int EIO ;
 int IQS5XX_NUM_RETRIES ;
 int IQS5XX_WR_BYTES_MAX ;
 int dev_err (int *,char*,int,int) ;
 int i2c_master_send (struct i2c_client*,int *,int) ;
 int memcpy (int *,void const*,int) ;
 int put_unaligned_be16 (int,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int iqs5xx_write_burst(struct i2c_client *client,
         u16 reg, const void *val, u16 len)
{
 int ret, i;
 u16 mlen = sizeof(reg) + len;
 u8 mbuf[sizeof(reg) + IQS5XX_WR_BYTES_MAX];

 if (len > IQS5XX_WR_BYTES_MAX)
  return -EINVAL;

 put_unaligned_be16(reg, mbuf);
 memcpy(mbuf + sizeof(reg), val, len);






 for (i = 0; i < IQS5XX_NUM_RETRIES; i++) {
  ret = i2c_master_send(client, mbuf, mlen);
  if (ret == mlen)
   return 0;

  usleep_range(200, 300);
 }

 if (ret >= 0)
  ret = -EIO;

 dev_err(&client->dev, "Failed to write to address 0x%04X: %d\n",
  reg, ret);

 return ret;
}

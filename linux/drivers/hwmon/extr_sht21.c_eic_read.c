
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sht21 {scalar_t__* eic; struct i2c_client* client; } ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
typedef int ssize_t ;


 int I2C_M_RD ;
 int SHT21_READ_SNAC_CMD1 ;
 int SHT21_READ_SNAC_CMD2 ;
 int SHT21_READ_SNB_CMD1 ;
 int SHT21_READ_SNB_CMD2 ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int snprintf (scalar_t__*,int,char*,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static ssize_t eic_read(struct sht21 *sht21)
{
 struct i2c_client *client = sht21->client;
 u8 tx[2];
 u8 rx[8];
 u8 eic[8];
 struct i2c_msg msgs[2] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = 2,
   .buf = tx,
  },
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = 8,
   .buf = rx,
  },
 };
 int ret;

 tx[0] = SHT21_READ_SNB_CMD1;
 tx[1] = SHT21_READ_SNB_CMD2;
 ret = i2c_transfer(client->adapter, msgs, 2);
 if (ret < 0)
  goto out;
 eic[2] = rx[0];
 eic[3] = rx[2];
 eic[4] = rx[4];
 eic[5] = rx[6];

 tx[0] = SHT21_READ_SNAC_CMD1;
 tx[1] = SHT21_READ_SNAC_CMD2;
 msgs[1].len = 6;
 ret = i2c_transfer(client->adapter, msgs, 2);
 if (ret < 0)
  goto out;
 eic[0] = rx[3];
 eic[1] = rx[4];
 eic[6] = rx[0];
 eic[7] = rx[1];

 ret = snprintf(sht21->eic, sizeof(sht21->eic),
         "%02x%02x%02x%02x%02x%02x%02x%02x\n",
         eic[0], eic[1], eic[2], eic[3],
         eic[4], eic[5], eic[6], eic[7]);
out:
 if (ret < 0)
  sht21->eic[0] = 0;

 return ret;
}

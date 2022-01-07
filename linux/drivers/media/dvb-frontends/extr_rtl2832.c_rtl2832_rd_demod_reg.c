
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl2832_dev {int regmap; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int msb; int lsb; int start_address; } ;


 int REG_MASK (int) ;
 int dev_dbg (int *,char*,int) ;
 TYPE_1__* registers ;
 int regmap_bulk_read (int ,int ,int*,int) ;

__attribute__((used)) static int rtl2832_rd_demod_reg(struct rtl2832_dev *dev, int reg, u32 *val)
{
 struct i2c_client *client = dev->client;
 int ret, i;
 u16 reg_start_addr;
 u8 msb, lsb, reading[4], len;
 u32 reading_tmp, mask;

 reg_start_addr = registers[reg].start_address;
 msb = registers[reg].msb;
 lsb = registers[reg].lsb;
 len = (msb >> 3) + 1;
 mask = REG_MASK(msb - lsb);

 ret = regmap_bulk_read(dev->regmap, reg_start_addr, reading, len);
 if (ret)
  goto err;

 reading_tmp = 0;
 for (i = 0; i < len; i++)
  reading_tmp |= reading[i] << ((len - 1 - i) * 8);

 *val = (reading_tmp >> lsb) & mask;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}

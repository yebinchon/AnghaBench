
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int u8 ;
struct i2c_msg {int len; scalar_t__* buf; scalar_t__ flags; int addr; } ;
struct adv7511 {unsigned int current_edid_segment; int edid_read; scalar_t__* edid_buf; TYPE_1__* i2c_edid; int regmap; } ;
struct TYPE_2__ {int adapter; int addr; } ;


 int ADV7511_REG_DDC_STATUS ;
 int ADV7511_REG_EDID_SEGMENT ;
 int ARRAY_SIZE (struct i2c_msg*) ;
 int EINVAL ;
 int EIO ;
 scalar_t__ I2C_M_RD ;
 int adv7511_wait_for_edid (struct adv7511*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int ) ;
 int memcpy (int *,scalar_t__*,size_t) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int adv7511_get_edid_block(void *data, u8 *buf, unsigned int block,
      size_t len)
{
 struct adv7511 *adv7511 = data;
 struct i2c_msg xfer[2];
 uint8_t offset;
 unsigned int i;
 int ret;

 if (len > 128)
  return -EINVAL;

 if (adv7511->current_edid_segment != block / 2) {
  unsigned int status;

  ret = regmap_read(adv7511->regmap, ADV7511_REG_DDC_STATUS,
      &status);
  if (ret < 0)
   return ret;

  if (status != 2) {
   adv7511->edid_read = 0;
   regmap_write(adv7511->regmap, ADV7511_REG_EDID_SEGMENT,
         block);
   ret = adv7511_wait_for_edid(adv7511, 200);
   if (ret < 0)
    return ret;
  }





  xfer[0].addr = adv7511->i2c_edid->addr;
  xfer[0].flags = 0;
  xfer[0].len = 1;
  xfer[0].buf = &offset;
  xfer[1].addr = adv7511->i2c_edid->addr;
  xfer[1].flags = I2C_M_RD;
  xfer[1].len = 64;
  xfer[1].buf = adv7511->edid_buf;

  offset = 0;

  for (i = 0; i < 4; ++i) {
   ret = i2c_transfer(adv7511->i2c_edid->adapter, xfer,
        ARRAY_SIZE(xfer));
   if (ret < 0)
    return ret;
   else if (ret != 2)
    return -EIO;

   xfer[1].buf += 64;
   offset += 64;
  }

  adv7511->current_edid_segment = block / 2;
 }

 if (block % 2 == 0)
  memcpy(buf, adv7511->edid_buf, len);
 else
  memcpy(buf, adv7511->edid_buf + 128, len);

 return 0;
}

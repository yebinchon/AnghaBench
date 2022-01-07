
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct horus3a_priv {TYPE_1__* i2c; } ;
struct TYPE_2__ {int dev; } ;


 int DUMP_PREFIX_OFFSET ;
 int dev_dbg (int *,char*,char*,scalar_t__,int ) ;
 int print_hex_dump_bytes (char*,int ,scalar_t__ const*,int ) ;

__attribute__((used)) static void horus3a_i2c_debug(struct horus3a_priv *priv,
         u8 reg, u8 write, const u8 *data, u32 len)
{
 dev_dbg(&priv->i2c->dev, "horus3a: I2C %s reg 0x%02x size %d\n",
  (write == 0 ? "read" : "write"), reg, len);
 print_hex_dump_bytes("horus3a: I2C data: ",
  DUMP_PREFIX_OFFSET, data, len);
}

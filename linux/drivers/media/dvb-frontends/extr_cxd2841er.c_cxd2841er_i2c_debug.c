
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct cxd2841er_priv {TYPE_1__* i2c; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,char*,scalar_t__,scalar_t__,int ,int ,scalar_t__ const*) ;

__attribute__((used)) static void cxd2841er_i2c_debug(struct cxd2841er_priv *priv,
    u8 addr, u8 reg, u8 write,
    const u8 *data, u32 len)
{
 dev_dbg(&priv->i2c->dev,
  "cxd2841er: I2C %s addr %02x reg 0x%02x size %d data %*ph\n",
  (write == 0 ? "read" : "write"), addr, reg, len, len, data);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct i2c_msg {scalar_t__ addr; scalar_t__* buf; int len; int flags; } ;
struct cxd2841er_priv {scalar_t__ i2c_addr_slvx; scalar_t__ i2c_addr_slvt; TYPE_1__* i2c; } ;
typedef int buf ;
struct TYPE_2__ {int dev; } ;


 int E2BIG ;
 int EIO ;
 scalar_t__ I2C_SLVX ;
 int KBUILD_MODNAME ;
 int MAX_WRITE_REGSIZE ;
 int cxd2841er_i2c_debug (struct cxd2841er_priv*,scalar_t__,scalar_t__,int,scalar_t__ const*,int ) ;
 int dev_warn (int *,char*,scalar_t__,int,...) ;
 int i2c_transfer (TYPE_1__*,struct i2c_msg*,int) ;
 int memcpy (scalar_t__*,scalar_t__ const*,int ) ;

__attribute__((used)) static int cxd2841er_write_regs(struct cxd2841er_priv *priv,
    u8 addr, u8 reg, const u8 *data, u32 len)
{
 int ret;
 u8 buf[MAX_WRITE_REGSIZE + 1];
 u8 i2c_addr = (addr == I2C_SLVX ?
  priv->i2c_addr_slvx : priv->i2c_addr_slvt);
 struct i2c_msg msg[1] = {
  {
   .addr = i2c_addr,
   .flags = 0,
   .len = len + 1,
   .buf = buf,
  }
 };

 if (len + 1 >= sizeof(buf)) {
  dev_warn(&priv->i2c->dev, "wr reg=%04x: len=%d is too big!\n",
    reg, len + 1);
  return -E2BIG;
 }

 cxd2841er_i2c_debug(priv, i2c_addr, reg, 1, data, len);
 buf[0] = reg;
 memcpy(&buf[1], data, len);

 ret = i2c_transfer(priv->i2c, msg, 1);
 if (ret >= 0 && ret != 1)
  ret = -EIO;
 if (ret < 0) {
  dev_warn(&priv->i2c->dev,
   "%s: i2c wr failed=%d addr=%02x reg=%02x len=%d\n",
   KBUILD_MODNAME, ret, i2c_addr, reg, len);
  return ret;
 }
 return 0;
}

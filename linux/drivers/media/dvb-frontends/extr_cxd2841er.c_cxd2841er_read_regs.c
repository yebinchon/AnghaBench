
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct i2c_msg {scalar_t__ addr; int len; scalar_t__* buf; int flags; } ;
struct cxd2841er_priv {scalar_t__ i2c_addr_slvx; scalar_t__ i2c_addr_slvt; TYPE_1__* i2c; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int I2C_M_RD ;
 scalar_t__ I2C_SLVX ;
 int KBUILD_MODNAME ;
 int cxd2841er_i2c_debug (struct cxd2841er_priv*,scalar_t__,scalar_t__,int ,scalar_t__*,int) ;
 int dev_warn (int *,char*,int ,int,scalar_t__,scalar_t__) ;
 int i2c_transfer (TYPE_1__*,struct i2c_msg*,int) ;

__attribute__((used)) static int cxd2841er_read_regs(struct cxd2841er_priv *priv,
          u8 addr, u8 reg, u8 *val, u32 len)
{
 int ret;
 u8 i2c_addr = (addr == I2C_SLVX ?
  priv->i2c_addr_slvx : priv->i2c_addr_slvt);
 struct i2c_msg msg[2] = {
  {
   .addr = i2c_addr,
   .flags = 0,
   .len = 1,
   .buf = &reg,
  }, {
   .addr = i2c_addr,
   .flags = I2C_M_RD,
   .len = len,
   .buf = val,
  }
 };

 ret = i2c_transfer(priv->i2c, msg, 2);
 if (ret >= 0 && ret != 2)
  ret = -EIO;
 if (ret < 0) {
  dev_warn(&priv->i2c->dev,
   "%s: i2c rd failed=%d addr=%02x reg=%02x\n",
   KBUILD_MODNAME, ret, i2c_addr, reg);
  return ret;
 }
 cxd2841er_i2c_debug(priv, i2c_addr, reg, 0, val, len);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct ascot2e_priv {int i2c_address; TYPE_1__* i2c; } ;
struct TYPE_2__ {int dev; } ;


 int EREMOTEIO ;
 int I2C_M_RD ;
 int KBUILD_MODNAME ;
 int ascot2e_i2c_debug (struct ascot2e_priv*,int ,int ,int *,int) ;
 int dev_warn (int *,char*,int ,int,int ,int ) ;
 int i2c_transfer (TYPE_1__*,struct i2c_msg*,int) ;

__attribute__((used)) static int ascot2e_read_regs(struct ascot2e_priv *priv,
        u8 reg, u8 *val, u32 len)
{
 int ret;
 struct i2c_msg msg[2] = {
  {
   .addr = priv->i2c_address,
   .flags = 0,
   .len = 1,
   .buf = &reg,
  }, {
   .addr = priv->i2c_address,
   .flags = I2C_M_RD,
   .len = len,
   .buf = val,
  }
 };

 ret = i2c_transfer(priv->i2c, &msg[0], 1);
 if (ret >= 0 && ret != 1)
  ret = -EREMOTEIO;
 if (ret < 0) {
  dev_warn(&priv->i2c->dev,
   "%s: I2C rw failed=%d addr=%02x reg=%02x\n",
   KBUILD_MODNAME, ret, priv->i2c_address, reg);
  return ret;
 }
 ret = i2c_transfer(priv->i2c, &msg[1], 1);
 if (ret >= 0 && ret != 1)
  ret = -EREMOTEIO;
 if (ret < 0) {
  dev_warn(&priv->i2c->dev,
   "%s: i2c rd failed=%d addr=%02x reg=%02x\n",
   KBUILD_MODNAME, ret, priv->i2c_address, reg);
  return ret;
 }
 ascot2e_i2c_debug(priv, reg, 0, val, len);
 return 0;
}

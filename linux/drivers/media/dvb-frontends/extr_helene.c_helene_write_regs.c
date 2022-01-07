
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct i2c_msg {int * buf; int len; int flags; int addr; } ;
struct helene_priv {TYPE_1__* i2c; int i2c_address; } ;
typedef int buf ;
struct TYPE_2__ {int dev; } ;


 int E2BIG ;
 int EREMOTEIO ;
 int KBUILD_MODNAME ;
 int MAX_WRITE_REGSIZE ;
 int dev_warn (int *,char*,int ,int,int,...) ;
 int helene_i2c_debug (struct helene_priv*,int ,int,int const*,int ) ;
 int i2c_transfer (TYPE_1__*,struct i2c_msg*,int) ;
 int memcpy (int *,int const*,int ) ;

__attribute__((used)) static int helene_write_regs(struct helene_priv *priv,
  u8 reg, const u8 *data, u32 len)
{
 int ret;
 u8 buf[MAX_WRITE_REGSIZE + 1];
 struct i2c_msg msg[1] = {
  {
   .addr = priv->i2c_address,
   .flags = 0,
   .len = len + 1,
   .buf = buf,
  }
 };

 if (len + 1 > sizeof(buf)) {
  dev_warn(&priv->i2c->dev,
    "wr reg=%04x: len=%d vs %zu is too big!\n",
    reg, len + 1, sizeof(buf));
  return -E2BIG;
 }

 helene_i2c_debug(priv, reg, 1, data, len);
 buf[0] = reg;
 memcpy(&buf[1], data, len);
 ret = i2c_transfer(priv->i2c, msg, 1);
 if (ret >= 0 && ret != 1)
  ret = -EREMOTEIO;
 if (ret < 0) {
  dev_warn(&priv->i2c->dev,
    "%s: i2c wr failed=%d reg=%02x len=%d\n",
    KBUILD_MODNAME, ret, reg, len);
  return ret;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lnbh29_priv {TYPE_1__* i2c; int * config; int i2c_address; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct dvb_frontend {struct lnbh29_priv* sec_priv; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 int LNBH29_VSEL_0 ;
 int LNBH29_VSEL_13 ;
 int LNBH29_VSEL_18 ;
 int LNBH29_VSEL_MASK ;



 int dev_err (int *,char*,int) ;
 int i2c_transfer (TYPE_1__*,struct i2c_msg*,int) ;
 int lnbh29_read_vmon (struct lnbh29_priv*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lnbh29_set_voltage(struct dvb_frontend *fe,
         enum fe_sec_voltage voltage)
{
 struct lnbh29_priv *priv = fe->sec_priv;
 u8 data_reg;
 int ret;
 struct i2c_msg msg = {
  .addr = priv->i2c_address,
  .flags = 0,
  .len = sizeof(priv->config),
  .buf = priv->config
 };

 switch (voltage) {
 case 128:
  data_reg = LNBH29_VSEL_0;
  break;
 case 130:
  data_reg = LNBH29_VSEL_13;
  break;
 case 129:
  data_reg = LNBH29_VSEL_18;
  break;
 default:
  return -EINVAL;
 }
 priv->config[1] &= ~LNBH29_VSEL_MASK;
 priv->config[1] |= data_reg;

 ret = i2c_transfer(priv->i2c, &msg, 1);
 if (ret >= 0 && ret != 1)
  ret = -EIO;
 if (ret < 0) {
  dev_err(&priv->i2c->dev, "LNBH29 I2C transfer error (%d)\n",
   ret);
  return ret;
 }


 usleep_range(6000, 20000);

 if (voltage == 128)
  return 0;

 return lnbh29_read_vmon(priv);
}

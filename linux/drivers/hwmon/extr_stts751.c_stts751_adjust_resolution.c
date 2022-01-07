
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stts751_priv {int interval; int res; int config; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int STTS751_CONF_RES_MASK ;
 int STTS751_CONF_RES_SHIFT ;
 int STTS751_REG_CONF ;
 int dev_dbg (int *,char*,int,int) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;

__attribute__((used)) static int stts751_adjust_resolution(struct stts751_priv *priv)
{
 u8 res;

 switch (priv->interval) {
 case 9:

  res = 0;
  break;
 case 8:

  res = 1;
  break;
 default:

  res = 3;
  break;
 }

 if (priv->res == res)
  return 0;

 priv->config &= ~STTS751_CONF_RES_MASK;
 priv->config |= res << STTS751_CONF_RES_SHIFT;
 dev_dbg(&priv->client->dev, "setting res %d. config %x",
  res, priv->config);
 priv->res = res;

 return i2c_smbus_write_byte_data(priv->client,
    STTS751_REG_CONF, priv->config);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct is31fl32xx_priv {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*,int ,int) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int is31fl32xx_write(struct is31fl32xx_priv *priv, u8 reg, u8 val)
{
 int ret;

 dev_dbg(&priv->client->dev, "writing register 0x%02X=0x%02X", reg, val);

 ret = i2c_smbus_write_byte_data(priv->client, reg, val);
 if (ret) {
  dev_err(&priv->client->dev,
   "register write to 0x%02X failed (error %d)",
   reg, ret);
 }
 return ret;
}

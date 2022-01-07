
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tda998x_priv {int mutex; struct i2c_client* hdmi; } ;
struct i2c_client {int dev; } ;
typedef int addr ;


 int REG2ADDR (int ) ;
 int dev_err (int *,char*,int,int ) ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;
 int i2c_master_send (struct i2c_client*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_page (struct tda998x_priv*,int ) ;

__attribute__((used)) static int
reg_read_range(struct tda998x_priv *priv, u16 reg, char *buf, int cnt)
{
 struct i2c_client *client = priv->hdmi;
 u8 addr = REG2ADDR(reg);
 int ret;

 mutex_lock(&priv->mutex);
 ret = set_page(priv, reg);
 if (ret < 0)
  goto out;

 ret = i2c_master_send(client, &addr, sizeof(addr));
 if (ret < 0)
  goto fail;

 ret = i2c_master_recv(client, buf, cnt);
 if (ret < 0)
  goto fail;

 goto out;

fail:
 dev_err(&client->dev, "Error %d reading from 0x%x\n", ret, reg);
out:
 mutex_unlock(&priv->mutex);
 return ret;
}

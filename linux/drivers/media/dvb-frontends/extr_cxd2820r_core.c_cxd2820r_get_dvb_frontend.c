
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct dvb_frontend {int dummy; } ;
struct cxd2820r_priv {struct dvb_frontend fe; } ;


 int dev_dbg (int *,char*) ;
 struct cxd2820r_priv* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static struct dvb_frontend *cxd2820r_get_dvb_frontend(struct i2c_client *client)
{
 struct cxd2820r_priv *priv = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 return &priv->fe;
}

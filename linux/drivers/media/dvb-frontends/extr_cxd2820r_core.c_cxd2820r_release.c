
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct dvb_frontend {struct cxd2820r_priv* demodulator_priv; } ;
struct cxd2820r_priv {struct i2c_client** client; } ;


 int dev_dbg (int *,char*) ;
 int i2c_unregister_device (struct i2c_client*) ;

__attribute__((used)) static void cxd2820r_release(struct dvb_frontend *fe)
{
 struct cxd2820r_priv *priv = fe->demodulator_priv;
 struct i2c_client *client = priv->client[0];

 dev_dbg(&client->dev, "\n");

 i2c_unregister_device(client);

 return;
}

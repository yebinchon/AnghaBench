
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct dtv_frontend_properties {int delivery_system; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct cxd2820r_priv* demodulator_priv; } ;
struct cxd2820r_priv {scalar_t__ delivery_system; struct i2c_client** client; } ;


 int EINVAL ;



 scalar_t__ SYS_UNDEFINED ;
 int cxd2820r_get_frontend_c (struct dvb_frontend*,struct dtv_frontend_properties*) ;
 int cxd2820r_get_frontend_t (struct dvb_frontend*,struct dtv_frontend_properties*) ;
 int cxd2820r_get_frontend_t2 (struct dvb_frontend*,struct dtv_frontend_properties*) ;
 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static int cxd2820r_get_frontend(struct dvb_frontend *fe,
     struct dtv_frontend_properties *p)
{
 struct cxd2820r_priv *priv = fe->demodulator_priv;
 struct i2c_client *client = priv->client[0];
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 int ret;

 dev_dbg(&client->dev, "delivery_system=%d\n", c->delivery_system);

 if (priv->delivery_system == SYS_UNDEFINED)
  return 0;

 switch (c->delivery_system) {
 case 129:
  ret = cxd2820r_get_frontend_t(fe, p);
  break;
 case 128:
  ret = cxd2820r_get_frontend_t2(fe, p);
  break;
 case 130:
  ret = cxd2820r_get_frontend_c(fe, p);
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}

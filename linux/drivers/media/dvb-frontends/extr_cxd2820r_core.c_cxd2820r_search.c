
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct dtv_frontend_properties {int delivery_system; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct cxd2820r_priv* demodulator_priv; } ;
struct cxd2820r_priv {int last_tune_failed; int delivery_system; struct i2c_client** client; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;
typedef enum dvbfe_search { ____Placeholder_dvbfe_search } dvbfe_search ;


 int DVBFE_ALGO_SEARCH_AGAIN ;
 int DVBFE_ALGO_SEARCH_ERROR ;
 int DVBFE_ALGO_SEARCH_SUCCESS ;
 int FE_HAS_LOCK ;




 int cxd2820r_read_status (struct dvb_frontend*,int*) ;
 int cxd2820r_set_frontend (struct dvb_frontend*) ;
 int cxd2820r_sleep_t (struct dvb_frontend*) ;
 int cxd2820r_sleep_t2 (struct dvb_frontend*) ;
 int dev_dbg (int *,char*,int) ;
 int msleep (int) ;

__attribute__((used)) static enum dvbfe_search cxd2820r_search(struct dvb_frontend *fe)
{
 struct cxd2820r_priv *priv = fe->demodulator_priv;
 struct i2c_client *client = priv->client[0];
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 int ret, i;
 enum fe_status status = 0;

 dev_dbg(&client->dev, "delivery_system=%d\n", c->delivery_system);


 if (priv->last_tune_failed) {
  if (priv->delivery_system == 130) {
   ret = cxd2820r_sleep_t(fe);
   if (ret)
    goto error;

   c->delivery_system = 129;
  } else if (priv->delivery_system == 129) {
   ret = cxd2820r_sleep_t2(fe);
   if (ret)
    goto error;

   c->delivery_system = 130;
  }
 }


 ret = cxd2820r_set_frontend(fe);
 if (ret)
  goto error;


 switch (priv->delivery_system) {
 case 130:
 case 131:
  i = 20;
  break;
 case 129:
  i = 40;
  break;
 case 128:
 default:
  i = 0;
  break;
 }


 for (; i > 0; i--) {
  dev_dbg(&client->dev, "loop=%d\n", i);
  msleep(50);
  ret = cxd2820r_read_status(fe, &status);
  if (ret)
   goto error;

  if (status & FE_HAS_LOCK)
   break;
 }


 if (status & FE_HAS_LOCK) {
  priv->last_tune_failed = 0;
  return DVBFE_ALGO_SEARCH_SUCCESS;
 } else {
  priv->last_tune_failed = 1;
  return DVBFE_ALGO_SEARCH_AGAIN;
 }

error:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return DVBFE_ALGO_SEARCH_ERROR;
}

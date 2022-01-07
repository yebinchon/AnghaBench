
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_2__ strength; int delivery_system; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct cxd2820r_priv* demodulator_priv; } ;
struct cxd2820r_priv {struct i2c_client** client; } ;
struct TYPE_3__ {scalar_t__ scale; int uvalue; } ;


 scalar_t__ FE_SCALE_RELATIVE ;
 int dev_dbg (int *,char*,int ) ;

__attribute__((used)) static int cxd2820r_read_signal_strength(struct dvb_frontend *fe, u16 *strength)
{
 struct cxd2820r_priv *priv = fe->demodulator_priv;
 struct i2c_client *client = priv->client[0];
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;

 dev_dbg(&client->dev, "delivery_system=%d\n", c->delivery_system);

 if (c->strength.stat[0].scale == FE_SCALE_RELATIVE)
  *strength = c->strength.stat[0].uvalue;
 else
  *strength = 0;

 return 0;
}

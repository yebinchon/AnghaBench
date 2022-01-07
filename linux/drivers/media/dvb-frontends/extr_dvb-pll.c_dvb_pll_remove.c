
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct dvb_pll_priv {int nr; } ;
struct dvb_frontend {struct dvb_pll_priv* tuner_priv; } ;


 int dvb_pll_release (struct dvb_frontend*) ;
 struct dvb_frontend* i2c_get_clientdata (struct i2c_client*) ;
 int ida_simple_remove (int *,int ) ;
 int pll_ida ;

__attribute__((used)) static int dvb_pll_remove(struct i2c_client *client)
{
 struct dvb_frontend *fe = i2c_get_clientdata(client);
 struct dvb_pll_priv *priv = fe->tuner_priv;

 ida_simple_remove(&pll_ida, priv->nr);
 dvb_pll_release(fe);
 return 0;
}

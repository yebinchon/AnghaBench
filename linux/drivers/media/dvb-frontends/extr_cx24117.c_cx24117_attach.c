
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct cx24117_state* demodulator_priv; int ops; } ;
struct cx24117_state {int demod; struct dvb_frontend frontend; struct cx24117_priv* priv; } ;
struct cx24117_priv {struct i2c_adapter* i2c; int fe_lock; int demod_address; } ;
struct cx24117_config {int demod_address; } ;


 int GFP_KERNEL ;
 int KBUILD_MODNAME ;
 int cx24117_get_priv (struct cx24117_priv**,struct i2c_adapter*,int ) ;
 int cx24117_ops ;
 int cx24117_release_priv (struct cx24117_priv*) ;
 int dev_err (int *,char*,int ,int) ;
 int dev_info (int *,char*,int ,int) ;
 struct cx24117_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int mutex_init (int *) ;

struct dvb_frontend *cx24117_attach(const struct cx24117_config *config,
 struct i2c_adapter *i2c)
{
 struct cx24117_state *state = ((void*)0);
 struct cx24117_priv *priv = ((void*)0);
 int demod = 0;


 demod = cx24117_get_priv(&priv, i2c, config->demod_address);

 switch (demod) {
 case 0:
  dev_err(&i2c->dev,
   "%s: Error attaching frontend %d\n",
   KBUILD_MODNAME, demod);
  goto error1;
  break;
 case 1:

  priv->i2c = i2c;
  priv->demod_address = config->demod_address;
  mutex_init(&priv->fe_lock);
  break;
 default:

  break;
 }


 state = kzalloc(sizeof(struct cx24117_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto error2;

 state->demod = demod - 1;
 state->priv = priv;

 dev_info(&state->priv->i2c->dev,
  "%s: Attaching frontend %d\n",
  KBUILD_MODNAME, state->demod);


 memcpy(&state->frontend.ops, &cx24117_ops,
  sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error2:
 cx24117_release_priv(priv);
error1:
 return ((void*)0);
}

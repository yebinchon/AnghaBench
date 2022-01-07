
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct cx22702_state* demodulator_priv; int ops; } ;
struct cx22702_state {struct dvb_frontend frontend; struct i2c_adapter* i2c; struct cx22702_config const* config; } ;
struct cx22702_config {int dummy; } ;


 int GFP_KERNEL ;
 int cx22702_ops ;
 int cx22702_readreg (struct cx22702_state*,int) ;
 int kfree (struct cx22702_state*) ;
 struct cx22702_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend *cx22702_attach(const struct cx22702_config *config,
 struct i2c_adapter *i2c)
{
 struct cx22702_state *state = ((void*)0);


 state = kzalloc(sizeof(struct cx22702_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto error;


 state->config = config;
 state->i2c = i2c;


 if (cx22702_readreg(state, 0x1f) != 0x3)
  goto error;


 memcpy(&state->frontend.ops, &cx22702_ops,
  sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}

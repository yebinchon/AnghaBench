
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct cx22700_state* demodulator_priv; int ops; } ;
struct cx22700_state {struct dvb_frontend frontend; struct i2c_adapter* i2c; struct cx22700_config const* config; } ;
struct cx22700_config {int dummy; } ;


 int GFP_KERNEL ;
 int cx22700_ops ;
 scalar_t__ cx22700_readreg (struct cx22700_state*,int) ;
 int kfree (struct cx22700_state*) ;
 struct cx22700_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend* cx22700_attach(const struct cx22700_config* config,
        struct i2c_adapter* i2c)
{
 struct cx22700_state* state = ((void*)0);


 state = kzalloc(sizeof(struct cx22700_state), GFP_KERNEL);
 if (state == ((void*)0)) goto error;


 state->config = config;
 state->i2c = i2c;


 if (cx22700_readreg(state, 0x07) < 0) goto error;


 memcpy(&state->frontend.ops, &cx22700_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}

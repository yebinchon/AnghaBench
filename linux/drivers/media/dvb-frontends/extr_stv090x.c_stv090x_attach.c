
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct stv090x_state* demodulator_priv; int ops; } ;
struct stv090x_state {int demod; struct dvb_frontend frontend; int rolloff; int device; int demod_mode; struct i2c_adapter* i2c; struct stv090x_config* config; int * verbose; } ;
struct stv090x_config {int device; int demod_mode; } ;
struct i2c_adapter {int dummy; } ;
typedef enum stv090x_demodulator { ____Placeholder_stv090x_demodulator } stv090x_demodulator ;


 int GFP_KERNEL ;
 int STV090x_RO_35 ;
 int kfree (struct stv090x_state*) ;
 struct stv090x_state* kzalloc (int,int ) ;
 int stv090x_ops ;
 int stv090x_setup_compound (struct stv090x_state*) ;
 int verbose ;

struct dvb_frontend *stv090x_attach(struct stv090x_config *config,
        struct i2c_adapter *i2c,
        enum stv090x_demodulator demod)
{
 int ret = 0;
 struct stv090x_state *state = ((void*)0);

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  goto error;

 state->verbose = &verbose;
 state->config = config;
 state->i2c = i2c;
 state->frontend.ops = stv090x_ops;
 state->frontend.demodulator_priv = state;
 state->demod = demod;

 state->demod_mode = config->demod_mode;
 state->device = config->device;

 state->rolloff = STV090x_RO_35;

 ret = stv090x_setup_compound(state);
 if (ret)
  goto error;

 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}

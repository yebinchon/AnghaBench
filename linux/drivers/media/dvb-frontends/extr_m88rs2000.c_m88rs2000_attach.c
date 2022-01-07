
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct m88rs2000_state* demodulator_priv; int ops; } ;
struct m88rs2000_state {struct dvb_frontend frontend; scalar_t__ fec_inner; scalar_t__ symbol_rate; scalar_t__ tuner_frequency; struct i2c_adapter* i2c; struct m88rs2000_config const* config; } ;
struct m88rs2000_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct m88rs2000_state*) ;
 struct m88rs2000_state* kzalloc (int,int ) ;
 int m88rs2000_ops ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend *m88rs2000_attach(const struct m88rs2000_config *config,
        struct i2c_adapter *i2c)
{
 struct m88rs2000_state *state = ((void*)0);


 state = kzalloc(sizeof(struct m88rs2000_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto error;


 state->config = config;
 state->i2c = i2c;
 state->tuner_frequency = 0;
 state->symbol_rate = 0;
 state->fec_inner = 0;


 memcpy(&state->frontend.ops, &m88rs2000_ops,
   sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);

 return ((void*)0);
}

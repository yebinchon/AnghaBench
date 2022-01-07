
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct mt352_state* demodulator_priv; int ops; } ;
struct mt352_state {struct dvb_frontend frontend; int config; struct i2c_adapter* i2c; } ;
struct mt352_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int CHIP_ID ;
 int GFP_KERNEL ;
 scalar_t__ ID_MT352 ;
 int kfree (struct mt352_state*) ;
 struct mt352_state* kzalloc (int,int ) ;
 int memcpy (int *,struct mt352_config const*,int) ;
 struct mt352_config const mt352_ops ;
 scalar_t__ mt352_read_register (struct mt352_state*,int ) ;

struct dvb_frontend* mt352_attach(const struct mt352_config* config,
      struct i2c_adapter* i2c)
{
 struct mt352_state* state = ((void*)0);


 state = kzalloc(sizeof(struct mt352_state), GFP_KERNEL);
 if (state == ((void*)0)) goto error;


 state->i2c = i2c;
 memcpy(&state->config,config,sizeof(struct mt352_config));


 if (mt352_read_register(state, CHIP_ID) != ID_MT352) goto error;


 memcpy(&state->frontend.ops, &mt352_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct stv0299_state* demodulator_priv; int ops; } ;
struct stv0299_state {struct dvb_frontend frontend; int errmode; scalar_t__ fec_inner; scalar_t__ symbol_rate; scalar_t__ tuner_frequency; scalar_t__ initialised; struct i2c_adapter* i2c; struct stv0299_config const* config; } ;
struct stv0299_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int STATUS_BER ;
 int kfree (struct stv0299_state*) ;
 struct stv0299_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int msleep (int) ;
 int stv0299_ops ;
 int stv0299_readreg (struct stv0299_state*,int) ;
 int stv0299_writeregI (struct stv0299_state*,int,int) ;

struct dvb_frontend* stv0299_attach(const struct stv0299_config* config,
        struct i2c_adapter* i2c)
{
 struct stv0299_state* state = ((void*)0);
 int id;


 state = kzalloc(sizeof(struct stv0299_state), GFP_KERNEL);
 if (state == ((void*)0)) goto error;


 state->config = config;
 state->i2c = i2c;
 state->initialised = 0;
 state->tuner_frequency = 0;
 state->symbol_rate = 0;
 state->fec_inner = 0;
 state->errmode = STATUS_BER;


 stv0299_writeregI(state, 0x02, 0x30);
 msleep(200);
 id = stv0299_readreg(state, 0x00);



 if (id != 0xa1 && id != 0x80) goto error;


 memcpy(&state->frontend.ops, &stv0299_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}

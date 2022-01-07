
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct i2c_adapter {TYPE_2__ dev; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct cx24123_state* demodulator_priv; int ops; } ;
struct TYPE_5__ {int parent; } ;
struct TYPE_7__ {TYPE_1__ dev; int * algo_data; int * algo; int name; } ;
struct cx24123_state {int demod_rev; struct dvb_frontend frontend; TYPE_3__ tuner_i2c_adapter; struct i2c_adapter* i2c; struct cx24123_config const* config; } ;
struct cx24123_config {scalar_t__ dont_use_pll; } ;


 int GFP_KERNEL ;
 int cx24123_ops ;
 int cx24123_readreg (struct cx24123_state*,int) ;
 int cx24123_repeater_mode (struct cx24123_state*,int,int ) ;
 int cx24123_tuner_i2c_algo ;
 int dprintk (char*) ;
 int err (char*,...) ;
 scalar_t__ i2c_add_adapter (TYPE_3__*) ;
 int i2c_set_adapdata (TYPE_3__*,struct cx24123_state*) ;
 int info (char*) ;
 int kfree (struct cx24123_state*) ;
 struct cx24123_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int strscpy (int ,char*,int) ;

struct dvb_frontend *cx24123_attach(const struct cx24123_config *config,
        struct i2c_adapter *i2c)
{

 struct cx24123_state *state =
  kzalloc(sizeof(struct cx24123_state), GFP_KERNEL);

 dprintk("\n");
 if (state == ((void*)0)) {
  err("Unable to kzalloc\n");
  goto error;
 }


 state->config = config;
 state->i2c = i2c;


 state->demod_rev = cx24123_readreg(state, 0x00);
 switch (state->demod_rev) {
 case 0xe1:
  info("detected CX24123C\n");
  break;
 case 0xd1:
  info("detected CX24123\n");
  break;
 default:
  err("wrong demod revision: %x\n", state->demod_rev);
  goto error;
 }


 memcpy(&state->frontend.ops, &cx24123_ops,
  sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;


 if (config->dont_use_pll)
  cx24123_repeater_mode(state, 1, 0);

 strscpy(state->tuner_i2c_adapter.name, "CX24123 tuner I2C bus",
  sizeof(state->tuner_i2c_adapter.name));
 state->tuner_i2c_adapter.algo = &cx24123_tuner_i2c_algo;
 state->tuner_i2c_adapter.algo_data = ((void*)0);
 state->tuner_i2c_adapter.dev.parent = i2c->dev.parent;
 i2c_set_adapdata(&state->tuner_i2c_adapter, state);
 if (i2c_add_adapter(&state->tuner_i2c_adapter) < 0) {
  err("tuner i2c bus could not be initialized\n");
  goto error;
 }

 return &state->frontend;

error:
 kfree(state);

 return ((void*)0);
}

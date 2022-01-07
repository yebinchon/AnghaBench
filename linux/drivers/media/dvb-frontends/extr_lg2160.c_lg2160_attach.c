
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int atscmh_parade_id; } ;
struct dvb_frontend {TYPE_1__ dtv_property_cache; struct lg216x_state* demodulator_priv; int ops; } ;
struct lg216x_state {int fic_ver; int parade_id; int current_frequency; struct dvb_frontend frontend; struct i2c_adapter* i2c_adap; struct lg2160_config const* cfg; } ;
struct lg2160_config {int lg_chip; int i2c_addr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;


 int i2c_adapter_id (struct i2c_adapter*) ;
 struct lg216x_state* kzalloc (int,int ) ;
 int lg2160_ops ;
 int lg2161_ops ;
 int lg_dbg (char*,int ,int ) ;
 int lg_warn (char*) ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend *lg2160_attach(const struct lg2160_config *config,
       struct i2c_adapter *i2c_adap)
{
 struct lg216x_state *state = ((void*)0);

 lg_dbg("(%d-%04x)\n",
        i2c_adap ? i2c_adapter_id(i2c_adap) : 0,
        config ? config->i2c_addr : 0);

 state = kzalloc(sizeof(struct lg216x_state), GFP_KERNEL);
 if (!state)
  return ((void*)0);

 state->cfg = config;
 state->i2c_adap = i2c_adap;
 state->fic_ver = 0xff;
 state->parade_id = 0xff;

 switch (config->lg_chip) {
 default:
  lg_warn("invalid chip requested, defaulting to LG2160");

 case 129:
  memcpy(&state->frontend.ops, &lg2160_ops,
         sizeof(struct dvb_frontend_ops));
  break;
 case 128:
  memcpy(&state->frontend.ops, &lg2161_ops,
         sizeof(struct dvb_frontend_ops));
  break;
 }

 state->frontend.demodulator_priv = state;
 state->current_frequency = -1;

 state->frontend.dtv_property_cache.atscmh_parade_id = 1;

 return &state->frontend;
}

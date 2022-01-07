
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct lgdt3305_state* demodulator_priv; int ops; } ;
struct lgdt3305_state {int current_frequency; int current_modulation; struct dvb_frontend frontend; struct i2c_adapter* i2c_adap; struct lgdt3305_config const* cfg; } ;
struct lgdt3305_config {int demod_chip; int i2c_addr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;


 int LGDT3305_GEN_CTRL_2 ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 int kfree (struct lgdt3305_state*) ;
 struct lgdt3305_state* kzalloc (int,int ) ;
 int lg_dbg (char*,int ,int ) ;
 int lg_fail (int) ;
 int lg_warn (char*,char*) ;
 int lgdt3304_ops ;
 int lgdt3305_ops ;
 int lgdt3305_read_reg (struct lgdt3305_state*,int,int*) ;
 int lgdt3305_write_reg (struct lgdt3305_state*,int,int) ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend *lgdt3305_attach(const struct lgdt3305_config *config,
         struct i2c_adapter *i2c_adap)
{
 struct lgdt3305_state *state = ((void*)0);
 int ret;
 u8 val;

 lg_dbg("(%d-%04x)\n",
        i2c_adap ? i2c_adapter_id(i2c_adap) : 0,
        config ? config->i2c_addr : 0);

 state = kzalloc(sizeof(struct lgdt3305_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto fail;

 state->cfg = config;
 state->i2c_adap = i2c_adap;

 switch (config->demod_chip) {
 case 129:
  memcpy(&state->frontend.ops, &lgdt3304_ops,
         sizeof(struct dvb_frontend_ops));
  break;
 case 128:
  memcpy(&state->frontend.ops, &lgdt3305_ops,
         sizeof(struct dvb_frontend_ops));
  break;
 default:
  goto fail;
 }
 state->frontend.demodulator_priv = state;


 ret = lgdt3305_read_reg(state, LGDT3305_GEN_CTRL_2, &val);
 if ((lg_fail(ret)) | (val == 0))
  goto fail;
 ret = lgdt3305_write_reg(state, 0x0808, 0x80);
 if (lg_fail(ret))
  goto fail;
 ret = lgdt3305_read_reg(state, 0x0808, &val);
 if ((lg_fail(ret)) | (val != 0x80))
  goto fail;
 ret = lgdt3305_write_reg(state, 0x0808, 0x00);
 if (lg_fail(ret))
  goto fail;

 state->current_frequency = -1;
 state->current_modulation = -1;

 return &state->frontend;
fail:
 lg_warn("unable to detect %s hardware\n",
  config->demod_chip ? "LGDT3304" : "LGDT3305");
 kfree(state);
 return ((void*)0);
}

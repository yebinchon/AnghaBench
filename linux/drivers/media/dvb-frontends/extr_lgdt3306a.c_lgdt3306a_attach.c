
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct lgdt3306a_state* demodulator_priv; int ops; } ;
struct lgdt3306a_state {int current_frequency; int current_modulation; struct dvb_frontend frontend; struct i2c_adapter* i2c_adap; struct lgdt3306a_config const* cfg; } ;
struct lgdt3306a_config {int i2c_addr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int dbg_info (char*,int ,int ) ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 int kfree (struct lgdt3306a_state*) ;
 struct lgdt3306a_state* kzalloc (int,int ) ;
 scalar_t__ lg_chkerr (int) ;
 int lgdt3306a_ops ;
 int lgdt3306a_read_reg (struct lgdt3306a_state*,int,int*) ;
 int lgdt3306a_sleep (struct lgdt3306a_state*) ;
 int memcpy (int *,int *,int) ;
 int pr_warn (char*,...) ;

struct dvb_frontend *lgdt3306a_attach(const struct lgdt3306a_config *config,
          struct i2c_adapter *i2c_adap)
{
 struct lgdt3306a_state *state = ((void*)0);
 int ret;
 u8 val;

 dbg_info("(%d-%04x)\n",
        i2c_adap ? i2c_adapter_id(i2c_adap) : 0,
        config ? config->i2c_addr : 0);

 state = kzalloc(sizeof(struct lgdt3306a_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto fail;

 state->cfg = config;
 state->i2c_adap = i2c_adap;

 memcpy(&state->frontend.ops, &lgdt3306a_ops,
        sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;




 ret = lgdt3306a_read_reg(state, 0x0000, &val);
 if (lg_chkerr(ret))
  goto fail;
 if ((val & 0x74) != 0x74) {
  pr_warn("expected 0x74, got 0x%x\n", (val & 0x74));




 }
 ret = lgdt3306a_read_reg(state, 0x0001, &val);
 if (lg_chkerr(ret))
  goto fail;
 if ((val & 0xf6) != 0xc6) {
  pr_warn("expected 0xc6, got 0x%x\n", (val & 0xf6));




 }
 ret = lgdt3306a_read_reg(state, 0x0002, &val);
 if (lg_chkerr(ret))
  goto fail;
 if ((val & 0x73) != 0x03) {
  pr_warn("expected 0x03, got 0x%x\n", (val & 0x73));




 }

 state->current_frequency = -1;
 state->current_modulation = -1;

 lgdt3306a_sleep(state);

 return &state->frontend;

fail:
 pr_warn("unable to detect LGDT3306A hardware\n");
 kfree(state);
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {int ops; struct dib3000mc_state* demodulator_priv; } ;
struct dib3000mc_state {int i2c_addr; struct i2c_adapter* i2c_adap; int i2c_master; struct dvb_frontend demod; struct dib3000mc_config* cfg; } ;
struct dib3000mc_config {int dummy; } ;


 int DIB3000MC ;
 int GFP_KERNEL ;
 scalar_t__ dib3000mc_identify (struct dib3000mc_state*) ;
 int dib3000mc_ops ;
 int dib3000mc_write_word (struct dib3000mc_state*,int,int) ;
 int dibx000_init_i2c_master (int *,int ,struct i2c_adapter*,int ) ;
 int kfree (struct dib3000mc_state*) ;
 struct dib3000mc_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend * dib3000mc_attach(struct i2c_adapter *i2c_adap, u8 i2c_addr, struct dib3000mc_config *cfg)
{
 struct dvb_frontend *demod;
 struct dib3000mc_state *st;
 st = kzalloc(sizeof(struct dib3000mc_state), GFP_KERNEL);
 if (st == ((void*)0))
  return ((void*)0);

 st->cfg = cfg;
 st->i2c_adap = i2c_adap;
 st->i2c_addr = i2c_addr;

 demod = &st->demod;
 demod->demodulator_priv = st;
 memcpy(&st->demod.ops, &dib3000mc_ops, sizeof(struct dvb_frontend_ops));

 if (dib3000mc_identify(st) != 0)
  goto error;

 dibx000_init_i2c_master(&st->i2c_master, DIB3000MC, st->i2c_adap, st->i2c_addr);

 dib3000mc_write_word(st, 1037, 0x3130);

 return demod;

error:
 kfree(st);
 return ((void*)0);
}

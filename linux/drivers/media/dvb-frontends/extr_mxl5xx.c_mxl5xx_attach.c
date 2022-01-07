
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct dvb_frontend {struct mxl_base* demodulator_priv; int ops; } ;
struct mxl_base {int tuner_in_use; int count; int demod_num; int* xbar; struct dvb_frontend fe; int mxls; int mxl; int mxllist; struct mxl_base* base; int tune_lock; int status_lock; int i2c_lock; int type; int adr; struct i2c_adapter* i2c; int * i2cdev; void* tuner; void* demod; } ;
struct mxl5xx_cfg {int type; int adr; } ;
struct mxl {int tuner_in_use; int count; int demod_num; int* xbar; struct dvb_frontend fe; int mxls; int mxl; int mxllist; struct mxl* base; int tune_lock; int status_lock; int i2c_lock; int type; int adr; struct i2c_adapter* i2c; int * i2cdev; void* tuner; void* demod; } ;
struct i2c_adapter {int dev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct mxl_base*) ;
 struct mxl_base* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct mxl_base* match_base (struct i2c_adapter*,int ) ;
 int mutex_init (int *) ;
 int mxl_ops ;
 int mxllist ;
 scalar_t__ probe (struct mxl_base*,struct mxl5xx_cfg*) ;
 int set_input (struct dvb_frontend*,int) ;

struct dvb_frontend *mxl5xx_attach(struct i2c_adapter *i2c,
 struct mxl5xx_cfg *cfg, u32 demod, u32 tuner,
 int (**fn_set_input)(struct dvb_frontend *, int))
{
 struct mxl *state;
 struct mxl_base *base;

 state = kzalloc(sizeof(struct mxl), GFP_KERNEL);
 if (!state)
  return ((void*)0);

 state->demod = demod;
 state->tuner = tuner;
 state->tuner_in_use = 0xffffffff;
 state->i2cdev = &i2c->dev;

 base = match_base(i2c, cfg->adr);
 if (base) {
  base->count++;
  if (base->count > base->demod_num)
   goto fail;
  state->base = base;
 } else {
  base = kzalloc(sizeof(struct mxl_base), GFP_KERNEL);
  if (!base)
   goto fail;
  base->i2c = i2c;
  base->adr = cfg->adr;
  base->type = cfg->type;
  base->count = 1;
  mutex_init(&base->i2c_lock);
  mutex_init(&base->status_lock);
  mutex_init(&base->tune_lock);
  INIT_LIST_HEAD(&base->mxls);

  state->base = base;
  if (probe(state, cfg) < 0) {
   kfree(base);
   goto fail;
  }
  list_add(&base->mxllist, &mxllist);
 }
 state->fe.ops = mxl_ops;
 state->xbar[0] = 4;
 state->xbar[1] = demod;
 state->xbar[2] = 8;
 state->fe.demodulator_priv = state;
 *fn_set_input = set_input;

 list_add(&state->mxl, &base->mxls);
 return &state->fe;

fail:
 kfree(state);
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; } ;
struct dvb_frontend {struct dib0090_state* tuner_priv; TYPE_1__ ops; } ;
struct dib0090_state {int * current_wbd_table; int i2c_buffer_lock; struct dvb_frontend* fe; struct i2c_adapter* i2c; struct dib0090_config const* config; } ;
struct dib0090_config {int * wbd; } ;


 int GFP_KERNEL ;
 int dib0090_ops ;
 scalar_t__ dib0090_reset (struct dvb_frontend*) ;
 int * dib0090_wbd_table_default ;
 int kfree (struct dib0090_state*) ;
 struct dib0090_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int mutex_init (int *) ;
 int pr_info (char*) ;

struct dvb_frontend *dib0090_register(struct dvb_frontend *fe, struct i2c_adapter *i2c, const struct dib0090_config *config)
{
 struct dib0090_state *st = kzalloc(sizeof(struct dib0090_state), GFP_KERNEL);
 if (st == ((void*)0))
  return ((void*)0);

 st->config = config;
 st->i2c = i2c;
 st->fe = fe;
 mutex_init(&st->i2c_buffer_lock);
 fe->tuner_priv = st;

 if (config->wbd == ((void*)0))
  st->current_wbd_table = dib0090_wbd_table_default;
 else
  st->current_wbd_table = config->wbd;

 if (dib0090_reset(fe) != 0)
  goto free_mem;

 pr_info("DiB0090: successfully identified\n");
 memcpy(&fe->ops.tuner_ops, &dib0090_ops, sizeof(struct dvb_tuner_ops));

 return fe;
 free_mem:
 kfree(st);
 fe->tuner_priv = ((void*)0);
 return ((void*)0);
}

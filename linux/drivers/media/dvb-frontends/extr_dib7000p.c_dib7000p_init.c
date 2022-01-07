
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {int parent; } ;
struct i2c_adapter {TYPE_4__ dev; } ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_13__ {scalar_t__ output_mode; } ;
struct dvb_frontend {TYPE_5__ ops; struct dib7000p_state* demodulator_priv; } ;
struct TYPE_11__ {int parent; } ;
struct TYPE_14__ {TYPE_3__ dev; int * algo_data; int * algo; int name; } ;
struct TYPE_9__ {int parent; } ;
struct TYPE_10__ {TYPE_1__ dev; } ;
struct TYPE_15__ {TYPE_2__ gated_tuner_i2c_adap; } ;
struct dib7000p_state {scalar_t__ version; TYPE_5__ cfg; TYPE_6__ dib7090_tuner_adap; struct i2c_adapter* i2c_adap; int i2c_addr; TYPE_8__ i2c_master; int i2c_buffer_lock; struct dvb_frontend demod; int gpio_dir; int gpio_val; } ;
struct dib7000p_config {int gpio_dir; int gpio_val; } ;


 int DIB7000P ;
 int GFP_KERNEL ;
 scalar_t__ OUTMODE_MPEG2_FIFO ;
 scalar_t__ OUTMODE_MPEG2_PAR_GATED_CLK ;
 scalar_t__ OUTMODE_MPEG2_SERIAL ;
 scalar_t__ SOC7090 ;
 int dib7000p_demod_reset (struct dib7000p_state*) ;
 scalar_t__ dib7000p_identify (struct dib7000p_state*) ;
 struct dib7000p_config dib7000p_ops ;
 scalar_t__ dib7000p_read_word (struct dib7000p_state*,int) ;
 int dib7000p_reset_stats (struct dvb_frontend*) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int) ;
 int dib7090_set_diversity_in (struct dvb_frontend*,int ) ;
 int dib7090_set_output_mode (struct dvb_frontend*,scalar_t__) ;
 int dib7090_tuner_xfer_algo ;
 int dibx000_init_i2c_master (TYPE_8__*,int ,struct i2c_adapter*,int ) ;
 int i2c_add_adapter (TYPE_6__*) ;
 int i2c_set_adapdata (TYPE_6__*,struct dib7000p_state*) ;
 int kfree (struct dib7000p_state*) ;
 struct dib7000p_state* kzalloc (int,int ) ;
 int memcpy (TYPE_5__*,struct dib7000p_config*,int) ;
 int mutex_init (int *) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static struct dvb_frontend *dib7000p_init(struct i2c_adapter *i2c_adap, u8 i2c_addr, struct dib7000p_config *cfg)
{
 struct dvb_frontend *demod;
 struct dib7000p_state *st;
 st = kzalloc(sizeof(struct dib7000p_state), GFP_KERNEL);
 if (st == ((void*)0))
  return ((void*)0);

 memcpy(&st->cfg, cfg, sizeof(struct dib7000p_config));
 st->i2c_adap = i2c_adap;
 st->i2c_addr = i2c_addr;
 st->gpio_val = cfg->gpio_val;
 st->gpio_dir = cfg->gpio_dir;




 if ((st->cfg.output_mode != OUTMODE_MPEG2_SERIAL) && (st->cfg.output_mode != OUTMODE_MPEG2_PAR_GATED_CLK))
  st->cfg.output_mode = OUTMODE_MPEG2_FIFO;

 demod = &st->demod;
 demod->demodulator_priv = st;
 memcpy(&st->demod.ops, &dib7000p_ops, sizeof(struct dvb_frontend_ops));
 mutex_init(&st->i2c_buffer_lock);

 dib7000p_write_word(st, 1287, 0x0003);

 if (dib7000p_identify(st) != 0)
  goto error;

 st->version = dib7000p_read_word(st, 897);




 st->i2c_master.gated_tuner_i2c_adap.dev.parent = i2c_adap->dev.parent;

 dibx000_init_i2c_master(&st->i2c_master, DIB7000P, st->i2c_adap, st->i2c_addr);


 strscpy(st->dib7090_tuner_adap.name, "DiB7090 tuner interface",
  sizeof(st->dib7090_tuner_adap.name));
 st->dib7090_tuner_adap.algo = &dib7090_tuner_xfer_algo;
 st->dib7090_tuner_adap.algo_data = ((void*)0);
 st->dib7090_tuner_adap.dev.parent = st->i2c_adap->dev.parent;
 i2c_set_adapdata(&st->dib7090_tuner_adap, st);
 i2c_add_adapter(&st->dib7090_tuner_adap);

 dib7000p_demod_reset(st);

 dib7000p_reset_stats(demod);

 if (st->version == SOC7090) {
  dib7090_set_output_mode(demod, st->cfg.output_mode);
  dib7090_set_diversity_in(demod, 0);
 }

 return demod;

error:
 kfree(st);
 return ((void*)0);
}

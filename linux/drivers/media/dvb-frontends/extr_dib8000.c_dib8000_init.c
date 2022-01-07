
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {int parent; } ;
struct i2c_adapter {TYPE_3__ dev; } ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_11__ {scalar_t__ output_mode; } ;
struct dvb_frontend {TYPE_4__ ops; struct dib8000_state* demodulator_priv; } ;
struct TYPE_9__ {int parent; } ;
struct TYPE_12__ {TYPE_2__ dev; int * algo_data; int * algo; int name; } ;
struct TYPE_13__ {struct i2c_adapter* adap; int addr; int * i2c_buffer_lock; int i2c_read_buffer; int i2c_write_buffer; } ;
struct dib8000_state {int current_demod_bw; TYPE_5__ dib8096p_tuner_adap; TYPE_7__ i2c; int i2c_master; int timf_default; struct dvb_frontend** fe; TYPE_4__ cfg; int gpio_dir; int gpio_val; int i2c_buffer_lock; int i2c_read_buffer; int i2c_write_buffer; } ;
struct dib8000_config {TYPE_1__* pll; int gpio_dir; int gpio_val; } ;
struct TYPE_8__ {int timf; } ;


 int DIB8000 ;
 int GFP_KERNEL ;
 scalar_t__ OUTMODE_MPEG2_FIFO ;
 scalar_t__ OUTMODE_MPEG2_PAR_GATED_CLK ;
 scalar_t__ OUTMODE_MPEG2_SERIAL ;
 scalar_t__ dib8000_identify (TYPE_7__*) ;
 struct dib8000_config dib8000_ops ;
 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_reset (struct dvb_frontend*) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dib8096p_tuner_xfer_algo ;
 int dibx000_init_i2c_master (int *,int ,struct i2c_adapter*,int ) ;
 int dprintk (char*) ;
 int i2c_add_adapter (TYPE_5__*) ;
 int i2c_set_adapdata (TYPE_5__*,struct dib8000_state*) ;
 int kfree (struct dib8000_state*) ;
 void* kzalloc (int,int ) ;
 int memcpy (TYPE_4__*,struct dib8000_config*,int) ;
 int mutex_init (int *) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static struct dvb_frontend *dib8000_init(struct i2c_adapter *i2c_adap, u8 i2c_addr, struct dib8000_config *cfg)
{
 struct dvb_frontend *fe;
 struct dib8000_state *state;

 dprintk("dib8000_init\n");

 state = kzalloc(sizeof(struct dib8000_state), GFP_KERNEL);
 if (state == ((void*)0))
  return ((void*)0);
 fe = kzalloc(sizeof(struct dvb_frontend), GFP_KERNEL);
 if (fe == ((void*)0))
  goto error;

 memcpy(&state->cfg, cfg, sizeof(struct dib8000_config));
 state->i2c.adap = i2c_adap;
 state->i2c.addr = i2c_addr;
 state->i2c.i2c_write_buffer = state->i2c_write_buffer;
 state->i2c.i2c_read_buffer = state->i2c_read_buffer;
 mutex_init(&state->i2c_buffer_lock);
 state->i2c.i2c_buffer_lock = &state->i2c_buffer_lock;
 state->gpio_val = cfg->gpio_val;
 state->gpio_dir = cfg->gpio_dir;




 if ((state->cfg.output_mode != OUTMODE_MPEG2_SERIAL) && (state->cfg.output_mode != OUTMODE_MPEG2_PAR_GATED_CLK))
  state->cfg.output_mode = OUTMODE_MPEG2_FIFO;

 state->fe[0] = fe;
 fe->demodulator_priv = state;
 memcpy(&state->fe[0]->ops, &dib8000_ops, sizeof(struct dvb_frontend_ops));

 state->timf_default = cfg->pll->timf;

 if (dib8000_identify(&state->i2c) == 0)
  goto error;

 dibx000_init_i2c_master(&state->i2c_master, DIB8000, state->i2c.adap, state->i2c.addr);


 strscpy(state->dib8096p_tuner_adap.name, "DiB8096P tuner interface",
  sizeof(state->dib8096p_tuner_adap.name));
 state->dib8096p_tuner_adap.algo = &dib8096p_tuner_xfer_algo;
 state->dib8096p_tuner_adap.algo_data = ((void*)0);
 state->dib8096p_tuner_adap.dev.parent = state->i2c.adap->dev.parent;
 i2c_set_adapdata(&state->dib8096p_tuner_adap, state);
 i2c_add_adapter(&state->dib8096p_tuner_adap);

 dib8000_reset(fe);

 dib8000_write_word(state, 285, (dib8000_read_word(state, 285) & ~0x60) | (3 << 5));
 state->current_demod_bw = 6000;

 return fe;

error:
 kfree(state);
 return ((void*)0);
}

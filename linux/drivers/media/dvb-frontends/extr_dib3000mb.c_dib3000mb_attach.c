
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct dib3000_state* demodulator_priv; int ops; } ;
struct dib_fe_xfer_ops {int tuner_pass_ctrl; int pid_ctrl; int fifo_ctrl; int pid_parse; } ;
struct dib3000_state {struct dvb_frontend frontend; int config; struct i2c_adapter* i2c; } ;
struct dib3000_config {int dummy; } ;


 scalar_t__ DIB3000MB_DEVICE_ID ;
 scalar_t__ DIB3000_I2C_ID_DIBCOM ;
 int DIB3000_REG_DEVICE_ID ;
 int DIB3000_REG_MANUFACTOR_ID ;
 int GFP_KERNEL ;
 int dib3000mb_fifo_control ;
 struct dib3000_config const dib3000mb_ops ;
 int dib3000mb_pid_control ;
 int dib3000mb_pid_parse ;
 int dib3000mb_tuner_pass_ctrl ;
 int kfree (struct dib3000_state*) ;
 struct dib3000_state* kzalloc (int,int ) ;
 int memcpy (int *,struct dib3000_config const*,int) ;
 scalar_t__ rd (int ) ;

struct dvb_frontend* dib3000mb_attach(const struct dib3000_config* config,
          struct i2c_adapter* i2c, struct dib_fe_xfer_ops *xfer_ops)
{
 struct dib3000_state* state = ((void*)0);


 state = kzalloc(sizeof(struct dib3000_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto error;


 state->i2c = i2c;
 memcpy(&state->config,config,sizeof(struct dib3000_config));


 if (rd(DIB3000_REG_MANUFACTOR_ID) != DIB3000_I2C_ID_DIBCOM)
  goto error;

 if (rd(DIB3000_REG_DEVICE_ID) != DIB3000MB_DEVICE_ID)
  goto error;


 memcpy(&state->frontend.ops, &dib3000mb_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;


 xfer_ops->pid_parse = dib3000mb_pid_parse;
 xfer_ops->fifo_ctrl = dib3000mb_fifo_control;
 xfer_ops->pid_ctrl = dib3000mb_pid_control;
 xfer_ops->tuner_pass_ctrl = dib3000mb_tuner_pass_ctrl;

 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}

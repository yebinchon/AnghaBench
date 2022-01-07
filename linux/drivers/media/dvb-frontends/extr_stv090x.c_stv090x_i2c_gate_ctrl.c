
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stv090x_state {TYPE_2__* internal; int frontend; TYPE_1__* config; } ;
struct TYPE_4__ {int tuner_lock; } ;
struct TYPE_3__ {int (* tuner_i2c_lock ) (int *,int) ;} ;


 int FE_DEBUG ;
 int FE_ERROR ;
 int I2CRPT ;
 int I2CT_ON_FIELD ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int STV090x_SETFIELD_Px (int ,int ,int) ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int ) ;
 int dprintk (int ,int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int *,int) ;
 int stub2 (int *,int) ;
 int stub3 (int *,int) ;

__attribute__((used)) static int stv090x_i2c_gate_ctrl(struct stv090x_state *state, int enable)
{
 u32 reg;
 if (enable) {
  if (state->config->tuner_i2c_lock)
   state->config->tuner_i2c_lock(&state->frontend, 1);
  else
   mutex_lock(&state->internal->tuner_lock);
 }

 reg = STV090x_READ_DEMOD(state, I2CRPT);
 if (enable) {
  dprintk(FE_DEBUG, 1, "Enable Gate");
  STV090x_SETFIELD_Px(reg, I2CT_ON_FIELD, 1);
  if (STV090x_WRITE_DEMOD(state, I2CRPT, reg) < 0)
   goto err;

 } else {
  dprintk(FE_DEBUG, 1, "Disable Gate");
  STV090x_SETFIELD_Px(reg, I2CT_ON_FIELD, 0);
  if ((STV090x_WRITE_DEMOD(state, I2CRPT, reg)) < 0)
   goto err;
 }

 if (!enable) {
  if (state->config->tuner_i2c_lock)
   state->config->tuner_i2c_lock(&state->frontend, 0);
  else
   mutex_unlock(&state->internal->tuner_lock);
 }

 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 if (state->config->tuner_i2c_lock)
  state->config->tuner_i2c_lock(&state->frontend, 0);
 else
  mutex_unlock(&state->internal->tuner_lock);
 return -1;
}

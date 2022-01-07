
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stv090x_state {int demod; TYPE_1__* internal; } ;
struct TYPE_2__ {int demod_lock; } ;


 int FE_ERROR ;
 int STOP_CLKVIT1_FIELD ;
 int STOP_CLKVIT2_FIELD ;


 int STV090x_SETFIELD (int ,int ,int) ;
 int STV090x_STOPCLK2 ;
 int dprintk (int ,int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stv090x_read_reg (struct stv090x_state*,int ) ;
 int stv090x_write_reg (struct stv090x_state*,int ,int ) ;

__attribute__((used)) static int stv090x_vitclk_ctl(struct stv090x_state *state, int enable)
{
 u32 reg;

 switch (state->demod) {
 case 129:
  mutex_lock(&state->internal->demod_lock);
  reg = stv090x_read_reg(state, STV090x_STOPCLK2);
  STV090x_SETFIELD(reg, STOP_CLKVIT1_FIELD, enable);
  if (stv090x_write_reg(state, STV090x_STOPCLK2, reg) < 0)
   goto err;
  mutex_unlock(&state->internal->demod_lock);
  break;

 case 128:
  mutex_lock(&state->internal->demod_lock);
  reg = stv090x_read_reg(state, STV090x_STOPCLK2);
  STV090x_SETFIELD(reg, STOP_CLKVIT2_FIELD, enable);
  if (stv090x_write_reg(state, STV090x_STOPCLK2, reg) < 0)
   goto err;
  mutex_unlock(&state->internal->demod_lock);
  break;

 default:
  dprintk(FE_ERROR, 1, "Wrong demodulator!");
  break;
 }
 return 0;
err:
 mutex_unlock(&state->internal->demod_lock);
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}

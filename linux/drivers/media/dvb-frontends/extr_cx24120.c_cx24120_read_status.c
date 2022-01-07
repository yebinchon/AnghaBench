
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct cx24120_state* demodulator_priv; } ;
struct cx24120_state {int fe_status; scalar_t__ need_clock_set; int mpeg_enabled; TYPE_1__* i2c; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;
struct TYPE_2__ {int dev; } ;


 int CX24120_HAS_CARRIER ;
 int CX24120_HAS_LOCK ;
 int CX24120_HAS_SIGNAL ;
 int CX24120_HAS_VITERBI ;
 int CX24120_REG_STATUS ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int cx24120_get_stats (struct cx24120_state*) ;
 int cx24120_msg_mpeg_output_global_config (struct cx24120_state*,int) ;
 int cx24120_readreg (struct cx24120_state*,int ) ;
 int cx24120_set_clock_ratios (struct dvb_frontend*) ;
 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static int cx24120_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 struct cx24120_state *state = fe->demodulator_priv;
 int lock;

 lock = cx24120_readreg(state, CX24120_REG_STATUS);

 dev_dbg(&state->i2c->dev, "status = 0x%02x\n", lock);

 *status = 0;

 if (lock & CX24120_HAS_SIGNAL)
  *status = FE_HAS_SIGNAL;
 if (lock & CX24120_HAS_CARRIER)
  *status |= FE_HAS_CARRIER;
 if (lock & CX24120_HAS_VITERBI)
  *status |= FE_HAS_VITERBI | FE_HAS_SYNC;
 if (lock & CX24120_HAS_LOCK)
  *status |= FE_HAS_LOCK;







 state->fe_status = *status;
 cx24120_get_stats(state);


 if (state->need_clock_set && *status & FE_HAS_LOCK) {

  cx24120_set_clock_ratios(fe);




  if (!state->mpeg_enabled)
   cx24120_msg_mpeg_output_global_config(state, 1);

  state->need_clock_set = 0;
 }

 return 0;
}

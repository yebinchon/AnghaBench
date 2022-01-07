
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct as102_state* demodulator_priv; } ;
struct as10x_tune_status {int tune_state; int BER; int PER; int signal_strength; int member_0; } ;
struct as102_state {int demod_stats; int priv; TYPE_1__* ops; int ber; int signal_strength; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;
struct TYPE_2__ {int (* get_status ) (int ,struct as10x_tune_status*) ;int (* get_stats ) (int ,int *) ;} ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int TUNE_STATUS_NOT_TUNED ;



 int memset (int *,int ,int) ;
 int pr_debug (char*,int,int ,int ,int ) ;
 int stub1 (int ,struct as10x_tune_status*) ;
 int stub2 (int ,int *) ;

__attribute__((used)) static int as102_fe_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 int ret = 0;
 struct as102_state *state = fe->demodulator_priv;
 struct as10x_tune_status tstate = { 0 };


 ret = state->ops->get_status(state->priv, &tstate);
 if (ret < 0)
  return ret;

 state->signal_strength = tstate.signal_strength;
 state->ber = tstate.BER;

 switch (tstate.tune_state) {
 case 130:
  *status = FE_HAS_SIGNAL | FE_HAS_CARRIER;
  break;
 case 129:
  *status = FE_HAS_SIGNAL | FE_HAS_CARRIER | FE_HAS_SYNC |
     FE_HAS_VITERBI;
  break;
 case 128:
  *status = FE_HAS_SIGNAL | FE_HAS_CARRIER | FE_HAS_SYNC |
     FE_HAS_LOCK | FE_HAS_VITERBI;
  break;
 default:
  *status = TUNE_STATUS_NOT_TUNED;
 }

 pr_debug("as102: tuner status: 0x%02x, strength %d, per: %d, ber: %d\n",
   tstate.tune_state, tstate.signal_strength,
   tstate.PER, tstate.BER);

 if (!(*status & FE_HAS_LOCK)) {
  memset(&state->demod_stats, 0, sizeof(state->demod_stats));
  return 0;
 }

 ret = state->ops->get_stats(state->priv, &state->demod_stats);
 if (ret < 0)
  memset(&state->demod_stats, 0, sizeof(state->demod_stats));

 return ret;
}

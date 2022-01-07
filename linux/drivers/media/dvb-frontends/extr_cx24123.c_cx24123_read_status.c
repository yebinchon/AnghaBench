
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int (* get_status ) (struct dvb_frontend*,int*) ;} ;
struct TYPE_6__ {TYPE_2__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {TYPE_1__* config; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;
struct TYPE_4__ {scalar_t__ dont_use_pll; } ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int TUNER_STATUS_LOCKED ;
 int cx24123_readreg (struct cx24123_state*,int) ;
 int stub1 (struct dvb_frontend*,int*) ;

__attribute__((used)) static int cx24123_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 struct cx24123_state *state = fe->demodulator_priv;
 int sync = cx24123_readreg(state, 0x14);

 *status = 0;
 if (state->config->dont_use_pll) {
  u32 tun_status = 0;
  if (fe->ops.tuner_ops.get_status)
   fe->ops.tuner_ops.get_status(fe, &tun_status);
  if (tun_status & TUNER_STATUS_LOCKED)
   *status |= FE_HAS_SIGNAL;
 } else {
  int lock = cx24123_readreg(state, 0x20);
  if (lock & 0x01)
   *status |= FE_HAS_SIGNAL;
 }

 if (sync & 0x02)
  *status |= FE_HAS_CARRIER;
 if (sync & 0x04)
  *status |= FE_HAS_VITERBI;


 if (sync & 0x08)
  *status |= FE_HAS_SYNC;
 if (sync & 0x80)
  *status |= FE_HAS_LOCK;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l64781_state {int dummy; } ;
struct dvb_frontend {struct l64781_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int l64781_readreg (struct l64781_state*,int) ;

__attribute__((used)) static int l64781_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 struct l64781_state* state = fe->demodulator_priv;
 int sync = l64781_readreg (state, 0x32);
 int gain = l64781_readreg (state, 0x0e);

 l64781_readreg (state, 0x00);
 l64781_readreg (state, 0x01);

 *status = 0;

 if (gain > 5)
  *status |= FE_HAS_SIGNAL;

 if (sync & 0x02)
  *status |= FE_HAS_CARRIER;

 if (sync & 0x20)
  *status |= FE_HAS_VITERBI;

 if (sync & 0x40)
  *status |= FE_HAS_SYNC;

 if (sync == 0x7f)
  *status |= FE_HAS_LOCK;

 return 0;
}

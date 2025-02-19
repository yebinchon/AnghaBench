
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sp887x_state {int dummy; } ;
struct dvb_frontend {struct sp887x_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int dprintk (char*,int) ;
 int sp887x_readreg (struct sp887x_state*,int) ;

__attribute__((used)) static int sp887x_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 struct sp887x_state* state = fe->demodulator_priv;
 u16 snr12 = sp887x_readreg(state, 0xf16);
 u16 sync0x200 = sp887x_readreg(state, 0x200);
 u16 sync0xf17 = sp887x_readreg(state, 0xf17);

 *status = 0;

 if (snr12 > 0x00f)
  *status |= FE_HAS_SIGNAL;







 if ((sync0xf17 & 0x00f) == 0x002) {
  *status |= FE_HAS_LOCK;
  *status |= FE_HAS_VITERBI | FE_HAS_SYNC | FE_HAS_CARRIER;
 }

 if (sync0x200 & 0x001) {
  int steps = (sync0x200 >> 4) & 0x00f;
  if (steps & 0x008)
   steps = -steps;
  dprintk("sp887x: implement tuner adjustment (%+i steps)!!\n",
         steps);
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nxt200x_state {int dummy; } ;
struct dvb_frontend {struct nxt200x_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int nxt200x_readbytes (struct nxt200x_state*,int,int*,int) ;

__attribute__((used)) static int nxt200x_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 struct nxt200x_state* state = fe->demodulator_priv;
 u8 lock;
 nxt200x_readbytes(state, 0x31, &lock, 1);

 *status = 0;
 if (lock & 0x20) {
  *status |= FE_HAS_SIGNAL;
  *status |= FE_HAS_CARRIER;
  *status |= FE_HAS_VITERBI;
  *status |= FE_HAS_SYNC;
  *status |= FE_HAS_LOCK;
 }
 return 0;
}

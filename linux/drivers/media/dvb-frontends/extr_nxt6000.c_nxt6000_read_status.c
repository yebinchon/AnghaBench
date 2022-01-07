
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nxt6000_state {int dummy; } ;
struct dvb_frontend {struct nxt6000_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int AGCLOCKED ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int GI14_SYR_LOCK ;
 int OFDM_COR_STAT ;
 int OFDM_SYR_STAT ;
 int RSCORESTATUS ;
 int RS_COR_STAT ;
 int TPSLOCKED ;
 int VITINSYNC ;
 int VIT_SYNC_STATUS ;
 scalar_t__ debug ;
 int nxt6000_dump_status (struct nxt6000_state*) ;
 int nxt6000_readreg (struct nxt6000_state*,int ) ;

__attribute__((used)) static int nxt6000_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 u8 core_status;
 struct nxt6000_state* state = fe->demodulator_priv;

 *status = 0;

 core_status = nxt6000_readreg(state, OFDM_COR_STAT);

 if (core_status & AGCLOCKED)
  *status |= FE_HAS_SIGNAL;

 if (nxt6000_readreg(state, OFDM_SYR_STAT) & GI14_SYR_LOCK)
  *status |= FE_HAS_CARRIER;

 if (nxt6000_readreg(state, VIT_SYNC_STATUS) & VITINSYNC)
  *status |= FE_HAS_VITERBI;

 if (nxt6000_readreg(state, RS_COR_STAT) & RSCORESTATUS)
  *status |= FE_HAS_SYNC;

 if ((core_status & TPSLOCKED) && (*status == (FE_HAS_SIGNAL | FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_SYNC)))
  *status |= FE_HAS_LOCK;

 if (debug)
  nxt6000_dump_status(state);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0367ter_state {int ucblocks; } ;
struct stv0367_state {struct stv0367ter_state* ter_state; } ;
struct dvb_frontend {struct stv0367_state* demodulator_priv; } ;


 int F367TER_ERR_CNT1 ;
 int F367TER_ERR_CNT1_HI ;
 int F367TER_ERR_CNT1_LO ;
 int F367TER_SFERRC_OLDVALUE ;
 scalar_t__ stv0367_readbits (struct stv0367_state*,int ) ;

__attribute__((used)) static int stv0367ter_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct stv0367_state *state = fe->demodulator_priv;
 struct stv0367ter_state *ter_state = state->ter_state;
 u32 errs = 0;


 if (stv0367_readbits(state, F367TER_SFERRC_OLDVALUE) == 0) {
  errs =
   ((u32)stv0367_readbits(state, F367TER_ERR_CNT1)
   * (1 << 16))
   + ((u32)stv0367_readbits(state, F367TER_ERR_CNT1_HI)
   * (1 << 8))
   + ((u32)stv0367_readbits(state, F367TER_ERR_CNT1_LO));
  ter_state->ucblocks = errs;
 }

 (*ucblocks) = ter_state->ucblocks;

 return 0;
}

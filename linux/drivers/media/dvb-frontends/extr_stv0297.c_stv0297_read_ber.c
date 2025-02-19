
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stv0297_state {int last_ber; } ;
struct dvb_frontend {struct stv0297_state* demodulator_priv; } ;


 int stv0297_readregs (struct stv0297_state*,int,int*,int) ;
 int stv0297_writereg_mask (struct stv0297_state*,int,int,int) ;

__attribute__((used)) static int stv0297_read_ber(struct dvb_frontend *fe, u32 * ber)
{
 struct stv0297_state *state = fe->demodulator_priv;
 u8 BER[3];

 stv0297_readregs(state, 0xA0, BER, 3);
 if (!(BER[0] & 0x80)) {
  state->last_ber = BER[2] << 8 | BER[1];
  stv0297_writereg_mask(state, 0xA0, 0x80, 0x80);
 }

 *ber = state->last_ber;

 return 0;
}

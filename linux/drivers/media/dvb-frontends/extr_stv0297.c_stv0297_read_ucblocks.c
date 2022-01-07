
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0297_state {int dummy; } ;
struct dvb_frontend {struct stv0297_state* demodulator_priv; } ;


 int stv0297_readreg (struct stv0297_state*,int) ;
 int stv0297_writereg_mask (struct stv0297_state*,int,int,int) ;

__attribute__((used)) static int stv0297_read_ucblocks(struct dvb_frontend *fe, u32 * ucblocks)
{
 struct stv0297_state *state = fe->demodulator_priv;

 stv0297_writereg_mask(state, 0xDF, 0x03, 0x03);

 *ucblocks = (stv0297_readreg(state, 0xD5) << 8)
  | stv0297_readreg(state, 0xD4);

 stv0297_writereg_mask(state, 0xDF, 0x03, 0x02);
 stv0297_writereg_mask(state, 0xDF, 0x03, 0x01);

 return 0;
}

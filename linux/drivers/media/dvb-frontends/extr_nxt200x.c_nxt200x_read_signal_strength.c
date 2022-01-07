
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nxt200x_state {int dummy; } ;
struct dvb_frontend {struct nxt200x_state* demodulator_priv; } ;


 int nxt200x_readreg_multibyte (struct nxt200x_state*,int,int*,int) ;
 int nxt200x_writebytes (struct nxt200x_state*,int,int*,int) ;

__attribute__((used)) static int nxt200x_read_signal_strength(struct dvb_frontend* fe, u16* strength)
{
 struct nxt200x_state* state = fe->demodulator_priv;
 u8 b[2];
 u16 temp = 0;


 b[0] = 0x00;
 nxt200x_writebytes(state, 0xA1, b, 1);


 nxt200x_readreg_multibyte(state, 0xA6, b, 2);

 temp = (b[0] << 8) | b[1];
 *strength = ((0x7FFF - temp) & 0x0FFF) * 16;

 return 0;
}

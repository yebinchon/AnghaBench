
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgdt3305_state {int dummy; } ;
struct dvb_frontend {struct lgdt3305_state* demodulator_priv; } ;


 int LGDT3305_GEN_CTRL_3 ;
 int LGDT3305_GEN_CTRL_4 ;
 int lg_dbg (char*) ;
 int lgdt3305_write_reg (struct lgdt3305_state*,int ,int) ;
 int read_reg (struct lgdt3305_state*,int ) ;

__attribute__((used)) static int lgdt3305_sleep(struct dvb_frontend *fe)
{
 struct lgdt3305_state *state = fe->demodulator_priv;
 u8 gen_ctrl_3, gen_ctrl_4;

 lg_dbg("\n");

 gen_ctrl_3 = read_reg(state, LGDT3305_GEN_CTRL_3);
 gen_ctrl_4 = read_reg(state, LGDT3305_GEN_CTRL_4);


 gen_ctrl_3 &= ~0x01;

 gen_ctrl_3 |= 0x02;

 gen_ctrl_3 |= 0x04;


 gen_ctrl_4 &= ~0x01;

 gen_ctrl_4 &= ~0x02;

 lgdt3305_write_reg(state, LGDT3305_GEN_CTRL_3, gen_ctrl_3);
 lgdt3305_write_reg(state, LGDT3305_GEN_CTRL_4, gen_ctrl_4);

 return 0;
}

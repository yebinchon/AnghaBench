
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m88rs2000_state {int dummy; } ;
struct dvb_frontend {struct m88rs2000_state* demodulator_priv; } ;


 int m88rs2000_writereg (struct m88rs2000_state*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int m88rs2000_i2c_gate_ctrl(struct dvb_frontend *fe, int enable)
{
 struct m88rs2000_state *state = fe->demodulator_priv;

 if (enable)
  m88rs2000_writereg(state, 0x81, 0x84);
 else
  m88rs2000_writereg(state, 0x81, 0x81);
 udelay(10);
 return 0;
}

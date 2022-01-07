
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct m88rs2000_state {int dummy; } ;
struct dvb_frontend {struct m88rs2000_state* demodulator_priv; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;





 int m88rs2000_readreg (struct m88rs2000_state*,int) ;
 int m88rs2000_writereg (struct m88rs2000_state*,int,int) ;

__attribute__((used)) static int m88rs2000_set_voltage(struct dvb_frontend *fe,
     enum fe_sec_voltage volt)
{
 struct m88rs2000_state *state = fe->demodulator_priv;
 u8 data;

 data = m88rs2000_readreg(state, 0xb2);
 data |= 0x03;

 switch (volt) {
 case 129:
  data &= ~0x03;
  break;
 case 130:
  data &= ~0x03;
  data |= 0x01;
  break;
 case 128:
  break;
 }

 m88rs2000_writereg(state, 0xb2, data);

 return 0;
}

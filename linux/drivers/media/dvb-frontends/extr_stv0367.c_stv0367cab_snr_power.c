
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0367_state {int dummy; } ;
struct dvb_frontend {struct stv0367_state* demodulator_priv; } ;
typedef enum stv0367cab_mod { ____Placeholder_stv0367cab_mod } stv0367cab_mod ;


 int F367CAB_QAM_MODE ;







 int stv0367_readbits (struct stv0367_state*,int ) ;

__attribute__((used)) static int stv0367cab_snr_power(struct dvb_frontend *fe)
{
 struct stv0367_state *state = fe->demodulator_priv;
 enum stv0367cab_mod QAMSize;

 QAMSize = stv0367_readbits(state, F367CAB_QAM_MODE);
 switch (QAMSize) {
 case 129:
  return 21904;
 case 132:
  return 20480;
 case 130:
  return 23040;
 case 128:
  return 21504;
 case 133:
  return 23616;
 case 131:
  return 21760;
 case 134:
  return 21280;
 default:
  break;
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si2165_state {int dummy; } ;
struct dvb_frontend {struct si2165_state* demodulator_priv; } ;


 int REG_CHIP_MODE ;
 int REG_DSP_CLOCK ;
 int SI2165_MODE_OFF ;
 int si2165_writereg8 (struct si2165_state*,int ,int) ;

__attribute__((used)) static int si2165_sleep(struct dvb_frontend *fe)
{
 int ret;
 struct si2165_state *state = fe->demodulator_priv;


 ret = si2165_writereg8(state, REG_DSP_CLOCK, 0x00);
 if (ret < 0)
  return ret;

 ret = si2165_writereg8(state, REG_CHIP_MODE, SI2165_MODE_OFF);
 if (ret < 0)
  return ret;
 return 0;
}

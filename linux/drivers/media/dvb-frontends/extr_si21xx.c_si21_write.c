
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si21xx_state {int dummy; } ;
struct dvb_frontend {struct si21xx_state* demodulator_priv; } ;


 int EINVAL ;
 int si21_writereg (struct si21xx_state*,int const,int const) ;

__attribute__((used)) static int si21_write(struct dvb_frontend *fe, const u8 buf[], int len)
{
 struct si21xx_state *state = fe->demodulator_priv;

 if (len != 2)
  return -EINVAL;

 return si21_writereg(state, buf[0], buf[1]);
}

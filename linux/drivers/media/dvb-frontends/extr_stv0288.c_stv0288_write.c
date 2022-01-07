
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv0288_state {int dummy; } ;
struct dvb_frontend {struct stv0288_state* demodulator_priv; } ;


 int EINVAL ;
 int stv0288_writeregI (struct stv0288_state*,int const,int const) ;

__attribute__((used)) static int stv0288_write(struct dvb_frontend *fe, const u8 buf[], int len)
{
 struct stv0288_state *state = fe->demodulator_priv;

 if (len != 2)
  return -EINVAL;

 return stv0288_writeregI(state, buf[0], buf[1]);
}

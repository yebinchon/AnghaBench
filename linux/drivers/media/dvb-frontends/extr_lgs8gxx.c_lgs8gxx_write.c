
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgs8gxx_state {int dummy; } ;
struct dvb_frontend {struct lgs8gxx_state* demodulator_priv; } ;


 int EINVAL ;
 int lgs8gxx_write_reg (struct lgs8gxx_state*,int const,int const) ;

__attribute__((used)) static int lgs8gxx_write(struct dvb_frontend *fe, const u8 buf[], int len)
{
 struct lgs8gxx_state *priv = fe->demodulator_priv;

 if (len != 2)
  return -EINVAL;

 return lgs8gxx_write_reg(priv, buf[0], buf[1]);
}

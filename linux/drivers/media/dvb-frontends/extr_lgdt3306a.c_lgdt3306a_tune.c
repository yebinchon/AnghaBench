
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3306a_state {int current_frequency; } ;
struct dvb_frontend {struct lgdt3306a_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int dbg_info (char*,int) ;
 int lgdt3306a_read_status (struct dvb_frontend*,int*) ;
 int lgdt3306a_set_parameters (struct dvb_frontend*) ;

__attribute__((used)) static int lgdt3306a_tune(struct dvb_frontend *fe, bool re_tune,
     unsigned int mode_flags, unsigned int *delay,
     enum fe_status *status)
{
 int ret = 0;
 struct lgdt3306a_state *state = fe->demodulator_priv;

 dbg_info("re_tune=%u\n", re_tune);

 if (re_tune) {
  state->current_frequency = -1;
  ret = lgdt3306a_set_parameters(fe);
  if (ret != 0)
   return ret;
 }
 *delay = 125;
 ret = lgdt3306a_read_status(fe, status);

 return ret;
}
